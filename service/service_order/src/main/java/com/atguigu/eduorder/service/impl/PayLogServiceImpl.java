package com.atguigu.eduorder.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.atguigu.eduorder.entity.Order;
import com.atguigu.eduorder.entity.PayLog;
import com.atguigu.eduorder.mapper.PayLogMapper;
import com.atguigu.eduorder.service.OrderService;
import com.atguigu.eduorder.service.PayLogService;
import com.atguigu.eduorder.utils.HttpClient;
import com.atguigu.servicebase.exceptionhandler.GuliException;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.wxpay.sdk.WXPayUtil;
import javafx.scene.chart.PieChart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * 支付日志表 服务实现类
 * </p>
 *
 * @author testjava
 * @since 2021-03-08
 */
@Service
public class PayLogServiceImpl extends ServiceImpl<PayLogMapper, PayLog> implements PayLogService {

    @Autowired
    private OrderService orderService;

    @Override
    public Map createNative(String orderNo) {

        try {
            // 1、查询订单信息
            QueryWrapper<Order> wrapper = new QueryWrapper<>();
            wrapper.eq("order_no", orderNo);
            Order order = orderService.getOne(wrapper);

            // 2、使用map设置生成二维码所需参数
            Map m = new HashMap();
            m.put("appid", "wx74862e0dfcf69954");  // 关联的公众号appid
            m.put("mch_id", "1558950191");          // 商户号
            m.put("nonce_str", WXPayUtil.generateNonceStr());  // 微信支付生成随机数
            m.put("body", order.getCourseTitle());      // 二维码显示的名称
            m.put("out_trade_no", orderNo);         // 唯一标示
            m.put("total_fee", order.getTotalFee().multiply(new BigDecimal("100")).longValue() + ""); // 价格
            m.put("spbill_create_ip", "127.0.0.1");    // 域名
            m.put("notify_url", "http://guli.shop/api/order/weixinPay/weixinNotify");  // 回调地址
            m.put("trade_type", "NATIVE");      // 支付类型

            // 3、发送httpclient请求，传递参数为xml格式，请求微信支付提供的固定地址
            HttpClient client = new HttpClient("https://api.mch.weixin.qq.com/pay/unifiedorder");
            client.setHttps(true);
            client.setXmlParam(WXPayUtil.generateSignedXml(m, "T6m9iK73b0kn9g5v426MKfHQH7X8rKwb"));
            client.post();

            // 4、得到请求结果
            String xml = client.getContent();
            Map<String, String> resultMap = WXPayUtil.xmlToMap(xml);

            // 封装返回结果集
            Map map = new HashMap<>();
            map.put("out_trade_no", orderNo);
            map.put("course_id", order.getCourseId());
            map.put("total_fee", order.getTotalFee());
            map.put("result_code", resultMap.get("result_code"));
            map.put("code_url", resultMap.get("code_url"));

            return map;
        }catch (Exception e) {
            throw new GuliException(20001, "二维码生成失败！");
        }
    }

    @Override
    public Map<String, String> queryPayStatus(String orderNo) {
        try{
            // 封装参数
            Map m = new HashMap();
            m.put("appid", "wx74862e0dfcf69954");  // 关联的公众号appid
            m.put("mch_id", "1558950191");          // 商户号
            m.put("out_trade_no", orderNo);         // 唯一标示
            m.put("nonce_str", WXPayUtil.generateNonceStr());  // 微信支付生成随机数

            // 发送httpclient请求
            HttpClient client = new HttpClient("https://api.mch.weixin.qq.com/pay/orderquery");
            client.setXmlParam(WXPayUtil.generateSignedXml(m, "T6m9iK73b0kn9g5v426MKfHQH7X8rKwb"));
            client.setHttps(true);
            client.post();

            // 得到返回数据
            String xml = client.getContent();
            Map<String, String> resultMap = WXPayUtil.xmlToMap(xml);

            return resultMap;
        }catch (Exception e) {
            return null;
        }
    }

    // 更新订单支付状态
    @Override
    public void updateOrderStatus(Map<String, String> map) {
        // 获取订单号
        String orderNo = map.get("out_trade_no");

        // 根据订单查询订单信息
        QueryWrapper<Order> wrapper = new QueryWrapper<>();
        wrapper.eq("order_no", orderNo);
        Order order = orderService.getOne(wrapper);

        //　更新订单表状态
        if (order.getStatus() == 1) return;

        order.setStatus(1);         // 1：已支付
        orderService.updateById(order);

        // 插入日志表
        PayLog payLog = new PayLog();
        payLog.setOrderNo(orderNo);
        payLog.setPayTime(new Date());
        payLog.setPayType(1);//支付类型
        payLog.setTotalFee(order.getTotalFee());//总金额(分)
        payLog.setTradeState(map.get("trade_state"));//支付状态
        payLog.setTransactionId(map.get("transaction_id"));
        payLog.setAttr(JSONObject.toJSONString(map));

        baseMapper.insert(payLog);//插入到支付日志表
    }
}
