package com.atguigu.eduservice.controller;


import com.atguigu.commonutils.R;
import com.atguigu.eduservice.client.VodClient;
import com.atguigu.eduservice.entity.EduVideo;
import com.atguigu.eduservice.service.EduVideoService;
import com.atguigu.servicebase.exceptionhandler.GuliException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 课程视频 前端控制器
 * </p>
 *
 * @author testjava
 * @since 2021-02-27
 */
@RestController
@RequestMapping("/eduservice/video")
@CrossOrigin
public class EduVideoController {

    @Autowired
    private EduVideoService eduVideoService;

    @Autowired
    private VodClient vodClient;

    // 添加小节
    @PostMapping("addVideo")
    public R addVideo(@RequestBody EduVideo eduVideo) {
        eduVideoService.save(eduVideo);
        return R.ok();
    }

    // 删除小节
    @DeleteMapping("{id}")
    public R deleteVideo(@PathVariable String id) {

        // TODO 删除小节时候需要删除小节下所有视频
        // 根据id获取视频id，根据视频id删除视频
        EduVideo eduVideo = eduVideoService.getById(id);
        String videoId = eduVideo.getVideoSourceId();
        if (!StringUtils.isEmpty(videoId)) {
            R result = vodClient.removeAlyVideo(videoId);
            if (result.getCode() == 20001) {
                throw new GuliException(20001, "删除视频出错，熔断器。。。");
            }
        }

        eduVideoService.removeById(id);
        return R.ok();
    }

    // 修改小节
    @PostMapping("updateVideoInfo")
    public R updateVideoInfo(@RequestBody EduVideo eduVideo) {
        eduVideoService.updateById(eduVideo);
        return R.ok();
    }

}

