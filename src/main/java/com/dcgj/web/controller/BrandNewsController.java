package com.dcgj.web.controller;

import com.dcgj.web.model.BrandNews;
import com.dcgj.web.service.BrandNewsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA by Xav.
 * Date: 2016/10/29
 * Time: 上午10:30
 * Desc:
 */
@Controller
@RequestMapping("/brandNews")
public class BrandNewsController {

    @Resource
    private BrandNewsService newsService;

    @RequestMapping(value = "/addNews",method = RequestMethod.POST)
    public
    @ResponseBody
    Map<String,Object> addNewsRecord(@RequestBody BrandNews brandNews){

        Map<String,Object> map = new HashMap<>();

        try {
            brandNews.setPublishDate(new Date());
            newsService.commitNews(brandNews);
            map.put("success", "新闻提交成功!");

        } catch (Exception e){
            map.put("error", "新闻提交失败！错误信息： " + e.getMessage());
            e.printStackTrace();
        }

        return map;
    }

    @RequestMapping(value = "/getNewsList", method = RequestMethod.GET)
    public @ResponseBody Map<String,Object> getAllNewsRecords(@RequestParam(required = false) String sort,
            @RequestParam String order, @RequestParam Integer offset, @RequestParam Integer limit){
        Map<String,Object> map = new HashMap<>();
        try {
            List<BrandNews> list = newsService.getLimitNewsRecords(sort,order,offset,limit);
            int total = newsService.getAllRecordsCount();
            map.put("total",total);
            map.put("rows",list);
        } catch (Exception e){
            map.put("error", "获取新闻列表失败！错误信息： " + e.getMessage());
        }

        return map;
    }
}
