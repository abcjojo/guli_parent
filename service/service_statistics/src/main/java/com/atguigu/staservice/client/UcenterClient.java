package com.atguigu.staservice.client;

import com.atguigu.commonutils.R;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * @program: guli_parent
 * @description:
 * @author: Jojo.Lee
 * @create: 2021-03-26 20:38
 **/

@Component
@FeignClient("service-ucenter")
public interface UcenterClient {

    // 查询某一天的注册人数
    @GetMapping("/educenter/member/countRegister/{day}")
    R countRegister(@PathVariable("day") String day);
}
