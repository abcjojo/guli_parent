package com.atguigu.eduservice.controller.front;

import com.atguigu.commonutils.R;
import com.atguigu.eduservice.entity.EduCourse;
import com.atguigu.eduservice.entity.EduTeacher;
import com.atguigu.eduservice.service.EduCourseService;
import com.atguigu.eduservice.service.EduTeacherService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @program: guli_parent
 * @description:
 * @author: Jojo.Lee
 * @create: 2021-03-04 20:49
 **/

@RestController
@RequestMapping("/eduservice/indexfront")
@CrossOrigin
public class IndexFrontController {

    @Autowired
    private EduTeacherService teacherService;

    @Autowired
    private EduCourseService courseService;

    // 查询前8条热门视频   前4条名师
    @GetMapping("index")
    public R index() {

        QueryWrapper<EduCourse> queryCourse = new QueryWrapper<>();
        queryCourse.orderByDesc("id");
        queryCourse.last(" limit 8");
        List<EduCourse> listCourse = courseService.list((queryCourse));

        QueryWrapper<EduTeacher> queryTeacher = new QueryWrapper<>();
        queryCourse.orderByDesc("id");
        queryCourse.last(" limit 4");
        List<EduTeacher> listTeacher = teacherService.list((queryTeacher));

        return R.ok().data("eduList", listCourse).data("teacherList", listTeacher);
    }
}
