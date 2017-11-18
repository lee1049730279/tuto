<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="comment_toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>用户姓名：</label>
        <input class="easyui-textbox" type="text" id="queryUserName">
        &nbsp;&nbsp;&nbsp;<label>旅游项目：</label>
        <input class="easyui-textbox" type="text" id="queryTripName">
        &nbsp;&nbsp;&nbsp;<label>评价内容：</label>
        <input class="easyui-textbox" type="text" id="queryContent">

        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>

    </div>
    <div>
        <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
    </div>
</div>
<table id="comment_dg"></table>

<script>
    function searchForm() {
        $("#comment_dg").datagrid('load',{
            queryUserName : $("#queryUserName").val(),
            queryTripName : $("#queryTripName").val(),
            queryContent : $("#queryContent").val(),
        })

    }

    function remove(){
        var selections = $('#comment_dg').datagrid('getSelections');
        //没选中记录
        if (selections.length == 0) {
            $.messager.alert('提示', '请至少选中一条记录！');
            return;
        }
        //至少选中了一条记录
        $.messager.confirm('确认', '您确认想要删除记录吗？', function (r) {
            if (r) {
                //为了存放id的集合
                var ids = [];
                //遍历选中的记录，将记录的id存放到js数组中
                for (var i = 0; i < selections.length; i++) {
                    ids.push(selections[i].id);
                }
                //把ids异步提交到后台
                $.post(
                    //url:请求后台的哪个地址来进行处理，相当于url,String类型
                    'comments/batch',
                    //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                    {'ids[]': ids},
                    //callback:后台处理成功的回调函数，相当于success，function类型
                    function (data) {
                        $('#comment_dg').datagrid('reload');
                    },
                    //dataType:返回的数据类型，如：json，String类型
                    'json'
                );
            }
        });
    }

    //初始化数据表格
    $('#comment_dg').datagrid({
        //允许多列排序
        multiSort: true,
        //将工具栏添加到数据表格中
        toolbar: '#comment_toolbar',
        //请求远程服务器上的URL
        url: 'comments',
        //隔行变色，斑马线效果
        striped: true,
        //添加分页工具栏
        pagination: true,
        //每行的前面显示行号
        rownumbers: true,
        //使得数据表格自适应填充父容器
        fit: true,
        //默认显示10条，这样的话就显示20条
        pageSize: 16,
        //分页列表
        pageList: [16, 50, 100],
        //列属性
        columns: [[
            //复选框
            {field: 'ck', checkbox: true},
            //评论所属
            {field: 'id', title: '评论编号',sortable:true, width: 75, align: 'center'},
            {field: 'userName', title: '所属用户', width: 70, align: 'center'},
            {field: 'tripName', title: '所属旅游项目', width: 100, align: 'center'},
            {field: 'ordersId', title: '所属订单', width: 100, align: 'center'},
            //各项评价
            {field: 'placeEvaluate', title: '景点评价', width: 70, align: 'center'},
            {field: 'hotelEvaluate', title: '住宿评价', width: 70, align: 'center'},
            {field: 'serviceEvaluate', title: '服务评价', width: 70, align: 'center'},
            {field: 'trafficEvaluate', title: '交通评价', width: 70, align: 'center'},
            {field: 'content', title: '评价内容', width: 100, align: 'center'},
            //评价时间
            {
                field: 'evaluateTime', title: '评价时间', align: 'center',sortable:true, width: 100, formatter: function (value, row, index) {
                return moment(value).format('LLL');//moment.js时间格式化插件
            }
            },
            {field: 'usefull', title: '点赞数', width: 50, align: 'center'},
            {field: 'useless', title: '点踩数', width: 50, align: 'center'}
        ]]
    });


</script>
