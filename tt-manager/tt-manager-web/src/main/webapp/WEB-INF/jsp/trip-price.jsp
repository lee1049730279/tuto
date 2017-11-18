<%--
  User: jack
  Date: 2017/11/17
  Time: 16:01
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div id="tripprice">
    <div style="padding: 5px; background-color: #fff;">
        <label>景点名称：</label>
        <input class="easyui-textbox" type="text" id="tripName">
        <label>出发点名称：</label>
        <input class="easyui-textbox" type="text" id="cityName">
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
    <div>
        <button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
        <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
        <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
        <button onclick="down()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">下架</button>
        <button onclick="up()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">上架</button>
    </div>
</div>
<table id="trippricetb"></table>

<script>
    $('#trippricetb').datagrid({
        toolbar: "#tripprice",
        url: 'MyTrip',
        //隔行变色，斑马线效果
        striped: true,
        //添加分页工具栏
        pagination: true,
        //每行的前面显示行号
        rownumbers: true,
        //使得数据表格自适应填充父容器
        fit: true,
        //默认显示10条，这样的话就显示20条
        pageSize: 20,
        //分页列表
        pageList: [20, 50, 100],
        //多列排序
        //multiSort: true,
        //列属性
        columns: [[
            //field title width列属性
            {field: 'ck', checkbox: true},
            {field: 'id', title: '对照表ID', width: 100},
            {field: 'tripName', title: '项目名称', width: 100},
            {field: 'price', title: '价格', width: 100},
            {field: 'cityName', title: '出发城市', width: 100}
        ]]

    })
    function searchForm() {
        $('#trippricetb').datagrid('load', {
            tripName: $('#tripName').val(),
            cityName: $('#cityName').val()
    })
    }
</script>