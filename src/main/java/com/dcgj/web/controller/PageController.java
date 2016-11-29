package com.dcgj.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 视图控制器,返回jsp视图给前端
 * 
 * @author StarZou
 * @since 2014年5月28日 下午4:00:49
 **/
@Controller
@RequestMapping("/page")
public class PageController {
    /**
     * 登录页
     */
    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /**
     * dashboard页
     */
    @RequestMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }

    /**
     * 系统管理/用户管理
     */
    @RequestMapping("/adminUser")
    public String adminUser() {
        return "admin_user";
    }

    /**
     * 系统管理/新增管理员
     */
    @RequestMapping("/addAdmin")
    public String addAdmin() {
        return "admin_add";
    }


    /**
     * 页面管理/作品案例管理页面
     */
    @RequestMapping("/pageDesign")
    public String pageDesign() {
        return "page_design";
    }

    /**
     * 页面管理/首页轮播图管理页面
     */
    @RequestMapping("/indexDesign")
    public String indexDesign() {
        return "index_design";
    }

    /**
     * 页面管理/新闻管理页面
     */
    @RequestMapping("/newsDesign")
    public String newsDesign() {
        return "brandnews_design";
    }

    /**
     * 404页
     */
    @RequestMapping("/404")
    public String error404() {
        return "404";
    }

    /**
     * 401页
     */
    @RequestMapping("/401")
    public String error401() {
        return "401";
    }

    /**
     * 500页
     */
    @RequestMapping("/500")
    public String error500() {
        return "500";
    }

}