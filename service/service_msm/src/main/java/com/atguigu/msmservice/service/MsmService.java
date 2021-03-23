package com.atguigu.msmservice.service;

import java.util.Map;

/**
 * @program: guli_parent
 * @description:
 * @author: Jojo.Lee
 * @create: 2021-03-06 11:47
 **/
public interface MsmService {

    // 发送短信
    boolean send(Map<String, Object> param, String phone);
}
