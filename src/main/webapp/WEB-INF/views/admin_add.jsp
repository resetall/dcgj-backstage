<%@ page language="java" pageEncoding="utf-8"%>
<!-- BEGIN PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title" id="index-page-title">添加管理员</h3>
        <ul class="page-breadcrumb breadcrumb">
            <li>
                <i class="fa fa-home"></i>
                <a href="/backstage/index">
                    首页
                </a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="javascript:;">
                    系统管理
                </a>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>
<!-- END PAGE HEADER-->
<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">

        <form class="form-horizontal" method="post">
            <div class="form-group">
                <label for="inputUsername" class="col-sm-1 col-md-1 col-xs-1 control-label">用户名</label>
                <div class="col-md-6 col-xs-6 col-sm-6">
                    <input type="text" class="form-control" id="inputUsername" placeholder="Username">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-sm-1 col-md-1 col-xs-1 control-label">密码</label>
                <div class="col-md-6 col-xs-6 col-sm-6">
                    <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6 col-xs-6 col-sm-6 col-sm-offset-1 col-md-offset-1 col-xs-offset-1">
                    <select class="form-control">
                        <option>超级管理员</option>
                        <option>后台管理员</option>
                        <option>页面管理员</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6 col-xs-6 col-sm-6 col-sm-offset-1 col-md-offset-1 col-xs-offset-1">
                    <button type="submit" class="btn btn-primary">创建管理员</button>
                </div>
            </div>
        </form>
    </div>
</div>