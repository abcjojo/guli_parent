package com.atguigu.eduservice.service.impl;

import com.atguigu.eduservice.client.VodClient;
import com.atguigu.eduservice.entity.EduVideo;
import com.atguigu.eduservice.mapper.EduVideoMapper;
import com.atguigu.eduservice.service.EduVideoService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 * 课程视频 服务实现类
 * </p>
 *
 * @author testjava
 * @since 2021-02-27
 */
@Service
@Slf4j
public class EduVideoServiceImpl extends ServiceImpl<EduVideoMapper, EduVideo> implements EduVideoService {

    @Autowired
    private VodClient vodClient;

    @Override
    public void removeVideoByCourseId(String courseId) {

        QueryWrapper<EduVideo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("course_id", courseId);
        queryWrapper.select("video_source_id");
        List<EduVideo> videoIdList = baseMapper.selectList(queryWrapper);
        log.error("videoIdList:{}", videoIdList);

        List<String> list = new ArrayList<>();
        for (EduVideo eduVideo : videoIdList) {
            if (!StringUtils.isEmpty(eduVideo.getVideoSourceId()))
                list.add(eduVideo.getVideoSourceId());
        }

        if (list.size() > 0)
            vodClient.deleteBatch(list);

        QueryWrapper<EduVideo> query = new QueryWrapper<>();
        query.eq("course_id", courseId);
        baseMapper.delete(query);
    }

}
