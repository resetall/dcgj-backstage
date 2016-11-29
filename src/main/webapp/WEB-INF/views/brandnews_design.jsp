<%--
  Created by IntelliJ IDEA.
  User: xav
  Date: 2016/10/23
  Time: 下午9:14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- BEGIN PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title" id="index-page-title">新闻管理</h3>
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
                    新闻管理
                </a>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>
<!-- END PAGE HEADER-->
<div class="row">
    <div class="col-md-12 col-xs-12 col-sm-12">
        <h3 class="page-header" style="margin-top: 10px">
            新闻管理
        </h3>
        <div id="toolbar">
            <button id="remove" class="btn btn-danger" disabled>
                <i class="glyphicon glyphicon-remove"></i> Delete
            </button>
        </div>
        <table id="newsTable"
               data-toolbar="#toolbar"
               data-search="true"
               data-show-refresh="true"
               data-show-toggle="true"
               data-show-columns="true"
               data-show-export="true"
               data-detail-view="true"
               data-detail-formatter="detailFormatter"
               data-minimum-count-columns="2"
               data-show-pagination-switch="true"
               data-pagination="true"
               data-id-field="id"
               data-page-list="[10, 25, 50, 100, ALL]"
               data-show-footer="false"
               data-side-pagination="server"
               data-url="/backstage/brandNews/getNewsList"
               data-response-handler="responseHandler">
        </table>

        <button type="button" class="btn btn-primary col-md-2" style="margin-top: 10px" data-toggle="modal" data-target=".bs-example-modal-lg">添加新闻</button>
    </div>

    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-wide">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myLargeModalLabel">添加新闻</h4>
                </div>
                <div class="modal-body">
                    <div id="addNews">
                        <div class="form-group">
                            <label for="newsTitle">新闻标题</label>
                            <input type="text" class="form-control" id="newsTitle" name="newsTitle" placeholder="请输入新闻标题...">
                        </div>
                        <div class="form-group">
                            <label for="newsSummary">新闻简介</label>
                            <input type="text" class="form-control" id="newsSummary" name="newsSummary" placeholder="请输入新闻简介...">
                        </div>
                        <div class="form-group">
                            <label for="newsContent">新闻内容</label>
                            <textarea class="form-control" id="newsContent" name="newsContent" placeholder="请输入新闻正文..." rows="10"></textarea>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="isValued" id="isValued"> 是否有效
                            </label>
                        </div>
                        <button type="submit" id="commitNews" class="btn btn-primary">确认提交</button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>

<script type="text/javascript">
    var $table = $('#newsTable'),
            $remove = $('#remove'),
            selections = [];

    function initTable() {
        $table.bootstrapTable({
            height: getHeight(),
            columns: [
                [
                    {
                        field: 'state',
                        checkbox: true,
                        rowspan: 2,
                        align: 'center',
                        valign: 'middle'
                    },
                    {
                        title: '新闻id',
                        field: 'id',
                        rowspan: 2,
                        align: 'center',
                        valign: 'middle',
                        sortable: true,
                        footerFormatter: totalTextFormatter
                    },
                    {
                        title: '新闻详情',
                        colspan: 3,
                        align: 'center'
                    }
                ],
                [
                    {
                        field: 'newsTitle',
                        title: '新闻标题',
                        sortable: true,
                        editable: true,
                        footerFormatter: totalNameFormatter,
                        align: 'center'
                    },
                    {
                        field: 'publishDate',
                        title: '发布日期',
                        sortable: true,
                        align: 'center',
                        editable: {
                            type: 'text',
                            title: '修改日期',
                            validate: function (value) {
                                value = $.trim(value);
                                if (!value) {
                                    return 'This field is required';
                                }
                                if (!/^\$/.test(value)) {
                                    return 'This field needs to start width $.'
                                }
                                var data = $table.bootstrapTable('getData'),
                                        index = $(this).parents('tr').data('index');
                                console.log(data[index]);
                                return '';
                            }
                        },
                        footerFormatter: totalPriceFormatter
                    }, {
                    field: 'operate',
                    title: '操作',
                    align: 'center',
                    events: operateEvents,
                    formatter: operateFormatter
                }
                ]
            ]
        });
        // sometimes footer render error.
        setTimeout(function () {
            $table.bootstrapTable('resetView');
        }, 200);
        $table.on('check.bs.table uncheck.bs.table ' +
                'check-all.bs.table uncheck-all.bs.table', function () {
            $remove.prop('disabled', !$table.bootstrapTable('getSelections').length);
            // save your data, here just save the current page
            selections = getIdSelections();
            // push or splice the selections if you want to save all data selections
        });
        $table.on('expand-row.bs.table', function (e, index, row, $detail) {
            if (index % 2 == 1) {
                $detail.html('Loading from ajax request...');
                $.get('LICENSE', function (res) {
                    $detail.html(res.replace(/\n/g, '<br>'));
                });
            }
        });
        $table.on('all.bs.table', function (e, name, args) {
            console.log(name, args);
        });
        $remove.click(function () {
            var ids = getIdSelections();
            $table.bootstrapTable('remove', {
                field: 'id',
                values: ids
            });
            $remove.prop('disabled', true);
        });
        $(window).resize(function () {
            $table.bootstrapTable('resetView', {
                height: getHeight()
            });
        });
    }
    function getIdSelections() {
        return $.map($table.bootstrapTable('getSelections'), function (row) {
            return row.id
        });
    }
    function responseHandler(res) {
        $.each(res.rows, function (i, row) {
            row.state = $.inArray(row.id, selections) !== -1;
        });
        return res;
    }
    function detailFormatter(index, row) {
        var html = [];
        $.each(row, function (key, value) {
            html.push('<p><b>' + key + ':</b> ' + value + '</p>');
        });
        return html.join('');
    }
    function operateFormatter(value, row, index) {
        return [
            '<a class="like" href="javascript:void(0)" title="Like">',
            '<i class="glyphicon glyphicon-heart"></i>',
            '</a>  ',
            '<a class="remove" href="javascript:void(0)" title="Remove">',
            '<i class="glyphicon glyphicon-remove"></i>',
            '</a>'
        ].join('');
    }
    window.operateEvents = {
        'click .like': function (e, value, row, index) {
            alert('You click like action, row: ' + JSON.stringify(row));
        },
        'click .remove': function (e, value, row, index) {
            $table.bootstrapTable('remove', {
                field: 'id',
                values: [row.id]
            });
        }
    };
    function totalTextFormatter(data) {
        return 'Total';
    }
    function totalNameFormatter(data) {
        return data.length;
    }
    function totalPriceFormatter(data) {
        var total = 0;
        $.each(data, function (i, row) {
            total += +(row.price.substring(1));
        });
        return '$' + total;
    }
    function getHeight() {
        return $(window).height() - $('h1').outerHeight(true);
    }
    $(function(){

        var scripts = [
                    location.search.substring(1) || 'assets/plugins/bootstrap-table/src/bootstrap-table.js',
                    'assets/plugins/bootstrap-table/src/extensions/export/bootstrap-table-export.js',
                    'http://rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js',
                    'assets/plugins/bootstrap-table/src/extensions/editable/bootstrap-table-editable.js',
                    'http://rawgit.com/vitalets/x-editable/master/dist/bootstrap3-editable/js/bootstrap-editable.js'
                ],
                eachSeries = function (arr, iterator, callback) {
                    callback = callback || function () {};
                    if (!arr.length) {
                        return callback();
                    }
                    var completed = 0;
                    var iterate = function () {
                        iterator(arr[completed], function (err) {
                            if (err) {
                                callback(err);
                                callback = function () {};
                            }
                            else {
                                completed += 1;
                                if (completed >= arr.length) {
                                    callback(null);
                                }
                                else {
                                    iterate();
                                }
                            }
                        });
                    };
                    iterate();
                };
        eachSeries(scripts, getScript, initTable);

        function getScript(url, callback) {
            var head = document.getElementsByTagName('head')[0];
            var script = document.createElement('script');
            script.src = url;
            var done = false;
            // Attach handlers for all browsers
            script.onload = script.onreadystatechange = function() {
                if (!done && (!this.readyState ||
                        this.readyState == 'loaded' || this.readyState == 'complete')) {
                    done = true;
                    if (callback)
                        callback();
                    // Handle memory leak in IE
                    script.onload = script.onreadystatechange = null;
                }
            };
            head.appendChild(script);
            // We handle everything using the script element injection
            return undefined;
        }


        $('.modal').on('hidden.bs.modal', function (e) {
            $("#addNews").find("input,textarea").each(function(){
                this.value = "";
            });
        });

        $("#commitNews").click(function(){
            var isValued = 0;
            if($("#isValued")[0].checked == 'true'){
                isValued = 1;
            }
            var jsonStr = {
                "newsTitle" : $("#newsTitle").val(),
                "newsSummary" : $("#newsSummary").val(),
                "newsContent" : $("#newsContent").val(),
                "isvalid" : isValued
            };

            $.ajax({
                url:"/backstage/brandNews/addNews",
                type:"post",
                dataType: "json",
                contentType: "application/json;charset=UTF-8",
                data:JSON.stringify(jsonStr),
                success:function(data){
                    alert("success" + JSON.stringify(data));

                },
                error:function(data){
                    alert("error" + JSON.stringify(data));
                }
            });

            $('.modal').modal('hide');
        });
    });

</script>