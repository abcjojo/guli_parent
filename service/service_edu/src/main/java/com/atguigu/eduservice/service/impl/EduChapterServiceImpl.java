package com.atguigu.eduservice.service.impl;

import com.atguigu.eduservice.entity.EduChapter;
import com.atguigu.eduservice.entity.EduVideo;
import com.atguigu.eduservice.entity.chapter.ChapterVo;
import com.atguigu.eduservice.entity.chapter.VideoVo;
import com.atguigu.eduservice.mapper.EduChapterMapper;
import com.atguigu.eduservice.service.EduChapterService;
import com.atguigu.eduservice.service.EduVideoService;
import com.atguigu.servicebase.exceptionhandler.GuliException;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 课程 服务实现类
 * </p>
 *
 * @author testjava
 * @since 2021-02-27
 */
@Service
@Slf4j
public class EduChapterServiceImpl extends ServiceImpl<EduChapterMapper, EduChapter> implements EduChapterService {

    @Autowired
    private EduVideoService eduVideoService;

    @Override
    public List<ChapterVo> getChapterVideoByCourseId(String courseId) {
        // 1.根据课程id查询所有章节
        QueryWrapper<EduChapter> queryChapter = new QueryWrapper<>();
        queryChapter.eq("course_id", courseId);
        List<EduChapter> eduChapters = baseMapper.selectList(queryChapter);

        // 2.根据课程id查询所有小节
        QueryWrapper<EduVideo> queryVideo = new QueryWrapper<>();
        queryChapter.eq("course_id", courseId);
        List<EduVideo> eduVideos = eduVideoService.list(queryVideo);
        log.info("eduVideos{}", eduVideos);

        List<ChapterVo> result = new ArrayList<>();

        // 3.遍历所有章节list进行数据封装
        for (int i = 0; i < eduChapters.size(); i++) {
            ChapterVo chapterVo = new ChapterVo();
            BeanUtils.copyProperties(eduChapters.get(i), chapterVo);
            result.add(chapterVo);

            List<VideoVo> videoVos = new ArrayList<>();

            for (int j = 0; j < eduVideos.size(); j++) {
                if (eduVideos.get(j).getChapterId().equals(eduChapters.get(i).getId())) {
                    VideoVo videoVo = new VideoVo();
                    BeanUtils.copyProperties(eduVideos.get(i), videoVo);
                    videoVos.add(videoVo);
                }
            }
            chapterVo.setChildren(videoVos);
        }

        // 4.封装小节数据

        return result;
    }

    // 删除章节
    @Override
    public boolean deleteChapter(String chapterId) {
        QueryWrapper<EduVideo> query = new QueryWrapper<>();
        query.eq("chapter_id",chapterId);
        int count = eduVideoService.count(query);

        if (count > 0) {
            throw new GuliException(20001, "有小节内容，不能删除");
        } else {
            // 删除章节
            int result = baseMapper.deleteById(chapterId);
            return result > 0;
        }
    }

    @Override
    public void removeChapterByCourseId(String courseId) {
        QueryWrapper<EduChapter> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("course_id", courseId);
        baseMapper.delete(queryWrapper);
    }
}
