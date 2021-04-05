package com.atguigu.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * @program: guli_parent
 * @description:
 * @author: Jojo.Lee
 * @create: 2021-03-31 20:40
 **/

@SpringBootApplication
@EnableDiscoveryClient
public class ApiGatewayAplication {
    public static void main(String[] args) {
        SpringApplication.run(ApiGatewayAplication.class, args);
    }
}
