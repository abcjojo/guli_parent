package com.atguigu.eduservice.controller;


import com.atguigu.commonutils.R;
import com.atguigu.eduservice.entity.subject.OneSubject;
import com.atguigu.eduservice.service.EduSubjectService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * <p>
 * 课程科目 前端控制器
 * </p>
 *
 * @author testjava
 * @since 2021-02-26
 */
@RestController
@RequestMapping("/eduservice/subject")
@CrossOrigin
@Slf4j
public class EduSubjectController {

    @Autowired
    private EduSubjectService eduSubjectService;

    // 添加课程分类
    // 获取上传文件， 读取文件内容
    @PostMapping("/addSubject")
    public R addSubject(MultipartFile file) {

        eduSubjectService.addSubject(file, eduSubjectService);
        return R.ok();
    }

    // 树形结构 课程分类列表
    @GetMapping("/getAllSubject")
    public R getAllSubject() {

        List<OneSubject> list = eduSubjectService.getAllOneTwoSubject();

        return R.ok().data("list", list);
    }

}

