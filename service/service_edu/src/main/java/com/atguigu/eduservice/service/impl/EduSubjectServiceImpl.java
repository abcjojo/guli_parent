package com.atguigu.eduservice.service.impl;

import com.alibaba.excel.EasyExcel;
import com.atguigu.eduservice.entity.EduSubject;
import com.atguigu.eduservice.entity.excel.SubjectData;
import com.atguigu.eduservice.entity.subject.OneSubject;
import com.atguigu.eduservice.entity.subject.TwoSubject;
import com.atguigu.eduservice.listener.SubjectExcelListener;
import com.atguigu.eduservice.mapper.EduSubjectMapper;
import com.atguigu.eduservice.service.EduSubjectService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 课程科目 服务实现类
 * </p>
 *
 * @author testjava
 * @since 2021-02-26
 */
@Slf4j
@Service
public class EduSubjectServiceImpl extends ServiceImpl<EduSubjectMapper, EduSubject> implements EduSubjectService {

    @Override
    public void addSubject(MultipartFile file, EduSubjectService eduSubjectService) {

        try{
            // 文件输入流
            InputStream in = file.getInputStream();
            // 调用方法进行读取
            EasyExcel.read(in, SubjectData.class, new SubjectExcelListener(eduSubjectService)).sheet().doRead();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    // 树形结构 课程分类列表
    @Override
    public List<OneSubject> getAllOneTwoSubject() {

        QueryWrapper<EduSubject> queryOneSubject = new QueryWrapper<>();
        queryOneSubject.eq("parent_id", "0");
        List<EduSubject> oneSubjectList = baseMapper.selectList(queryOneSubject);
        log.info("oneSubjectList:{}",oneSubjectList);

        QueryWrapper<EduSubject> queryTwoSubject = new QueryWrapper<>();
        queryOneSubject.ne("parent_id", "0");
        List<EduSubject> twoSubjectList = baseMapper.selectList(queryTwoSubject);
        log.info("twoSubjectList:{}",twoSubjectList);

        List<OneSubject> finalSubjectList = new ArrayList<>();

        for (int i = 0; i < oneSubjectList.size(); i++) {
            OneSubject oneSubject = new OneSubject();
            BeanUtils.copyProperties(oneSubjectList.get(i), oneSubject);

            // 二级分类
            List<TwoSubject> twoSubjects = new ArrayList<>();
            for (int i1 = 0; i1 < twoSubjectList.size(); i1++) {
                TwoSubject twoSubject = new TwoSubject();
                if (oneSubject.getId().equals(twoSubjectList.get(i1).getParentId())) {
                    BeanUtils.copyProperties(twoSubjectList.get(i1), twoSubject);
                    twoSubjects.add(twoSubject);
                }
            }
            oneSubject.setChildren(twoSubjects);

            finalSubjectList.add(oneSubject);
        }

        log.info("finalSubjectList:{}",finalSubjectList);
        return finalSubjectList;
    }
}
