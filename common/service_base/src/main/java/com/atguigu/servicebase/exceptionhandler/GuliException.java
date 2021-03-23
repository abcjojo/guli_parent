package com.atguigu.servicebase.exceptionhandler;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @program: guli_parent
 * @description: 自定义异常类
 * @author: Jojo.Lee
 * @create: 2021-01-28 18:32
 **/

@Data
@AllArgsConstructor   // 有参构造器
@NoArgsConstructor      // 无参构造器
public class GuliException extends RuntimeException {

    private Integer code; // 状态码

    private String msg; // 异常信息
}
