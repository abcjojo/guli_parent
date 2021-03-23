package com.atguigu.eduservice.entity.subject;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: guli_parent
 * @description:
 * @author: Jojo.Lee
 * @create: 2021-02-27 14:05
 **/

@Data
public class OneSubject {
    private  String id;
    private  String title;

    private List<TwoSubject> children = new ArrayList<>();
}
