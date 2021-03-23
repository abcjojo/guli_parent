package com.atguigu.eduservice.client;

import com.atguigu.servicebase.exceptionhandler.GuliException;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Component
@FeignClient(name = "service-order")
public interface OrdersClient {

    @GetMapping("/eduorder/order/isBuyCourse/{courseId}/{memberId}")
    public boolean isBuyCourse(@PathVariable("courseId") String courseId, @PathVariable("memberId") String memberId);
}
@Slf4j
class OrdersClientImpl implements OrdersClient {

    @Override
    public boolean isBuyCourse(String courseId, String memberId) {
        log.error("订单模块调用isBuyCourse()方法失败");
        return false;
    }
}