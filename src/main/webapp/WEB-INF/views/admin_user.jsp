<%@ page language="java" pageEncoding="utf-8"%>
<!-- BEGIN PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title" id="index-page-title">用户管理</h3>
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
<div class="row" id="adminUser">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>编号</th>
                    <td>用户名</td>
                    <td>用户角色</td>
                    <td>用户权限</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>1</th>
                    <td>admin</td>
                    <td>管理员</td>
                    <td>管理员权限</td>
                    <td>
                        <a><i class="fa fa-times-circle"></i>删除用户</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>