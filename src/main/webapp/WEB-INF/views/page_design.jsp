<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .kv-avatar .file-preview-frame,.kv-avatar .file-preview-frame:hover {
        margin: 0;
        padding: 0;
        border: none;
        box-shadow: none;
        text-align: center;
    }
    .file-preview-frame:not(.file-preview-error):hover{box-shadow:3px 3px 5px 0 #333}
    .kv-avatar .file-input {
        display: table-cell;
        max-width: 220px;
    }

    .carousel-control {
        padding-top:12%;
        width:10%;
    }
</style>
<!-- BEGIN PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title" id="index-page-title">作品案例</h3>
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
                    作品案例管理
                </a>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>
<!-- END PAGE HEADER-->

<!-- 标签管理 -->
<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <h3 class="page-header" style="margin-top: 10px">
            作品预览
        </h3>
        <table class="table">
            <caption>已上传风格预览</caption>
        </table>
    </div>
</div>


<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <h3 class="page-header" style="margin-top: 10px">
            风范大宅
        </h3>
        <div class="row">
            <div class="col-xs-12 col-md-12 col-sm-12">
                <div id="kv-avatar-errors-2" class="center-block" style="width:800px;display:none"></div>
                <form class="text-center" action="" method="post" enctype="multipart/form-data">
                    <div class="kv-avatar center-block" style="width:200px">
                        <input id="inputImage" name="inputImage" type="file" class="file-loading">
                    </div>
                    <!-- include other inputs if needed and include a form submit (save) button -->
                </form>
            </div>
            <div class="col-xs-12 col-md-12 col-sm-12">
                <form>
                    <div class="col-md-6 col-xs-12 col-sm-12">
                        <div class="form-group">
                            <label for="imageDesc">简介</label>
                            <input type="text" class="form-control" id="imageDesc" placeholder="简介...">
                        </div>
                        <div class="form-group">
                            <label for="designer">作者</label>
                            <input type="text" class="form-control" id="designer" placeholder="作者...">
                        </div>
                        <div class="form-group">
                            <label for="content">详细介绍</label>
                            <textarea id="content" class="form-control" rows="5" style="resize: none;"></textarea>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12 col-sm-12">
                        <div class="form-group">
                            <label for="space">空间标签</label>
                            <select class="form-control" id="space">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="style">风格标签</label>
                            <select class="form-control" id="style">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="layout">风格标签</label>
                            <select class="form-control" id="layout">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="color">颜色标签</label>
                            <select class="form-control" id="color">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
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