package com.atguigu.eduservice.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.atguigu.eduservice.entity.EduSubject;
import com.atguigu.eduservice.entity.excel.SubjectData;
import com.atguigu.eduservice.service.EduSubjectService;
import com.atguigu.eduservice.temp.A;
import com.atguigu.servicebase.exceptionhandler.GuliException;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

/**
 * @program: guli_parent
 * @description:
 * @author: Jojo.Lee
 * @create: 2021-02-26 23:41
 **/
public class SubjectExcelListener extends AnalysisEventListener<SubjectData> {


    public EduSubjectService eduSubjectService;

    public SubjectExcelListener() {}

    public SubjectExcelListener(EduSubjectService eduSubjectService) {
        this.eduSubjectService = eduSubjectService;
    }

    // 读取excel内容  一行一行读取
    @Override
    public void invoke(SubjectData subjectData, AnalysisContext analysisContext) {
        if (null == subjectData)
            throw new GuliException(20001, "文件数据为空");

        EduSubject exitOneSubject = this.exitOneSubject(eduSubjectService, subjectData.getOneSubjectName());
        if (null == exitOneSubject) {
            exitOneSubject = new EduSubject();
            exitOneSubject.setParentId("0");
            exitOneSubject.setTitle(subjectData.getOneSubjectName());
            eduSubjectService.save(exitOneSubject);
        }

        // 获取一级分类id值
        String pid = exitOneSubject.getId();

        EduSubject exitTwoSubject = this.exitTwoSubject(eduSubjectService, subjectData.getTwoSubjectName(), pid);
        if (null == exitTwoSubject) {
            exitTwoSubject = new EduSubject();
            exitTwoSubject.setParentId(pid);
            exitTwoSubject.setTitle(subjectData.getTwoSubjectName());
            eduSubjectService.save(exitTwoSubject);
        }
    }

    // 判断一级分类不能重复添加
    private EduSubject exitOneSubject(EduSubjectService eduSubjectService, String name) {

        QueryWrapper<EduSubject> query = new QueryWrapper<>();
        query.eq("title", name);
        query.eq("parent_id", "0");
        EduSubject oneSubject = eduSubjectService.getOne(query);
        return oneSubject;
    }

    // 判断二级分类不能重复添加
    private EduSubject exitTwoSubject(EduSubjectService eduSubjectService, String name, String pid) {

        QueryWrapper<EduSubject> query = new QueryWrapper<>();
        query.eq("title", name);
        query.eq("parent_id", pid);
        EduSubject twoSubject = eduSubjectService.getOne(query);
        return twoSubject;
    }
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
