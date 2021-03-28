package com.atguigu.staservice.schedule;

import com.atguigu.staservice.controller.StatisticsDailyController;
import com.atguigu.staservice.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @program: guli_parent
 * @description:
 * @author: Jojo.Lee
 * @create: 2021-03-26 21:32
 **/

@Component
public class ScheduledTask {

    @Autowired
    private StatisticsDailyController statisticsDailyController;

    /** 每天凌晨执行一次 添加前一天注册人数到统计表 */
    @Scheduled(cron = "0 0 1 * * ? ")
    public void task() {
        statisticsDailyController.registerCount(DateUtil.formatDate(DateUtil.addDays(new Date(), -1)));
    }
}
