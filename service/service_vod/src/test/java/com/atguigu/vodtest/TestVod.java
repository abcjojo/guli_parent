package com.atguigu.vodtest;


import com.aliyun.vod.upload.impl.UploadVideoImpl;
import com.aliyun.vod.upload.req.UploadVideoRequest;
import com.aliyun.vod.upload.resp.UploadVideoResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.vod.model.v20170321.GetPlayInfoRequest;
import com.aliyuncs.vod.model.v20170321.GetPlayInfoResponse;
import com.aliyuncs.vod.model.v20170321.GetVideoPlayAuthRequest;
import com.aliyuncs.vod.model.v20170321.GetVideoPlayAuthResponse;

import java.util.List;

/**
 * @program: guli_parent
 * @description:
 * @author: Jojo.Lee
 * @create: 2021-03-02 19:05
 **/
public class TestVod {
    public static void main(String[] args) throws Exception {
        String accessKeyId = "LTAI4G4i5VBiJoTC1do1vNui";
        String accessKeySecret = "ajDnUsPCJf1h323jvuqPyDDZ1ieJxZ";
        String title = "5 - What If I Want to Move Faster.mp4";
        String fileName = "d:\\Downloads\\项目资料\\1-阿里云上传测试视频\\6 - What If I Want to Move Faster.mp4";

        //上传视频的方法
        UploadVideoRequest request = new UploadVideoRequest(accessKeyId, accessKeySecret, title, fileName);
        /* 可指定分片上传时每个分片的大小，默认为2M字节 */
        request.setPartSize(2 * 1024 * 1024L);
        /* 可指定分片上传时的并发线程数，默认为1，(注：该配置会占用服务器CPU资源，需根据服务器情况指定）*/
        request.setTaskNum(1);

        UploadVideoImpl uploader = new UploadVideoImpl();
        UploadVideoResponse response = uploader.uploadVideo(request);

        if (response.isSuccess()) {
            System.out.print("VideoId=" + response.getVideoId() + "\n");
        } else {
            /* 如果设置回调URL无效，不影响视频上传，可以返回VideoId同时会返回错误码。其他情况上传失败时，VideoId为空，此时需要根据返回错误码分析具体错误原因 */
            System.out.print("VideoId=" + response.getVideoId() + "\n");
            System.out.print("ErrorCode=" + response.getCode() + "\n");
            System.out.print("ErrorMessage=" + response.getMessage() + "\n");
        }
    }

    // 根据视频id获取视频播放凭证
    public static void getPlayAuth() throws Exception{
        // 根据视频id获取视频播放凭证

        DefaultAcsClient client = InitObject.initVodClient("LTAI4G4i5VBiJoTC1do1vNui", "ajDnUsPCJf1h323jvuqPyDDZ1ieJxZ");

        GetVideoPlayAuthRequest request = new GetVideoPlayAuthRequest();
        GetVideoPlayAuthResponse response = new GetVideoPlayAuthResponse();

        request.setVideoId("6ddeb2c72d024e7c971d0343609d1e72");

        response = client.getAcsResponse(request);

        System.out.println("playAuth: " + response.getPlayAuth());

    }

    // 根据视频id获取视频播放地址
    public static void getPlayUrl() throws Exception {
        // 根据视频id获取视频播放地址
        // 创建初始化对象
        DefaultAcsClient client = InitObject.initVodClient("LTAI4G4i5VBiJoTC1do1vNui", "ajDnUsPCJf1h323jvuqPyDDZ1ieJxZ");

        // 创建获取视频地址request和response
        GetPlayInfoRequest request = new GetPlayInfoRequest();
        GetPlayInfoResponse response = new GetPlayInfoResponse();

        // 向request对象里面设置视频id
        request.setVideoId("6ddeb2c72d024e7c971d0343609d1e72");

        // 调用初始化对象里面的方法，传递request，获取数据
        response = client.getAcsResponse(request);

        List<GetPlayInfoResponse.PlayInfo> playInfoList = response.getPlayInfoList();
        //播放地址
        for (GetPlayInfoResponse.PlayInfo playInfo : playInfoList) {
            System.out.print("PlayInfo.PlayURL = " + playInfo.getPlayURL() + "\n");
        }
        //Base信息
        System.out.print("VideoBase.Title = " + response.getVideoBase().getTitle() + "\n");
    }
}
