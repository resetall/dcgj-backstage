<%--
  Created by IntelliJ IDEA.
  User: liuxiaotong
  Date: 2016/10/23
  Time: 下午9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- BEGIN PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title" id="index-page-title">首页轮播管理</h3>
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
                    首页管理
                </a>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <h3 class="page-header" style="margin-top: 10px">
            轮播图预览
        </h3>
        <div class="well">
            <div id="imgCarousel" class="carousel slide" data-ride="carousel">
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="item active">
                        <div class="row">
                            <div class="col-sm-3"><a href="#x" class="thumbnail"><img src="http://www.gbtags.com/gb/networks/themes/img/mobilelogo.png" alt="Image" class="img-responsive"></a>

                            </div>
                            <div class="col-sm-3"><a href="#x" class="thumbnail"><img src="http://www.gbtags.com/gb/networks/themes/img/mobilelogo.png" alt="Image" class="img-responsive"></a>

                            </div>
                            <div class="col-sm-3"><a href="#x" class="thumbnail"><img src="http://www.gbtags.com/gb/networks/themes/img/mobilelogo.png" alt="Image" class="img-responsive"></a>

                            </div>
                            <div class="col-sm-3"><a href="#x" class="thumbnail"><img src="http://www.gbtags.com/gb/networks/themes/img/mobilelogo.png" alt="Image" class="img-responsive"></a>

                            </div>
                        </div>
                        <!--/row-->
                    </div>
                </div>
                <!--/carousel-inner-->
            </div>
            <!--/myCarousel-->
        </div>
    </div>
</div>

<!-- END PAGE HEADER-->
<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <h3 class="page-header" style="margin-top: 10px">
            首页轮播图上传
        </h3>
        <div class="row">
            <div class="col-xs-12 col-md-12 col-sm-12">
                <div class="col-md-4 col-xs-12 col-sm-12">
                    <div id="kv-avatar-errors-2" class="center-block" style="width:800px;display:none"></div>
                    <form class="text-center" action="" method="post" enctype="multipart/form-data">
                        <div class="kv-avatar center-block" style="width:200px">
                            <input id="inputImage" name="inputImage" type="file" class="file-loading">
                        </div>
                        <!-- include other inputs if needed and include a form submit (save) button -->
                    </form>
                </div>

                <form>
                    <div class="col-md-6 col-xs-12 col-sm-12">
                        <div class="row">
                            <div class="form-group col-md-8">
                                <label for="summary">图片简介</label>
                                <input type="text" class="form-control" id="summary">
                            </div>
                            <div class="form-group col-md-4">
                                <label class="control-label" for="isValued">是否有效</label>
                                <div class="controls">
                                    <div class="switch" tabindex="0">
                                        <input id="isValued" type="checkbox" checked/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="description">图片描述</label>
                            <textarea class="form-control" id="description" rows="6"></textarea>
                        </div>
                        <div class="form-group" style="padding-top: 10px">
                            <button type="submit" class="btn btn-primary col-md-3">提交</button>
                            <div class="col-md-2"></div>
                            <button type="reset" class="btn btn-warning col-md-3">重置</button>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $(function(){
        $('#isValued').wrap('<div class="switch" />').parent().bootstrapSwitch();
        $('#isValued').bootstrapSwitch('setActive', true);
    });

    $(function(){
        $("#inputImage").fileinput({
            overwriteInitial: true,
            maxFileSize: 1500,
            showClose: false,
            showCaption: false,
            showBrowse: false,
            browseOnZoneClick: true,
            removeLabel: '',
            removeIcon: '<i class="glyphicon glyphicon-remove"></i>',
            removeTitle: 'Cancel or reset changes',
            elErrorContainer: '#kv-avatar-errors-2',
            msgErrorClass: 'alert alert-block alert-danger',
            defaultPreviewContent: '<img src="/assets/img/defualt.png" style="width:160px"><h6 class="text-muted">Click to select</h6>',
            layoutTemplates: {main2: '{preview} {remove} {browse}'},
            allowedFileExtensions: ["jpg", "png", "gif"]
        });
    });
</script>