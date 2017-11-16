<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="ordersorders">
    <div style="padding: 5px; background-color: #fff;">
        <label>用户名称：</label>
        <input class="easyui-textbox" type="text" id="title">
        <label>商品状态：</label>
        <select id="status" class="easyui-combobox">
            <option value="0">待付款</option>
            <option value="1">待出行</option>
            <option value="2">游玩中</option>
            <option value="3">待评价</option>
            <option value="4">已完成</option>
            <option value="5">已作废</option>
            <option value="6">待退款</option>
        </select>
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
</div>
<table id="orderstb"></table>

<script>
    $('#orderstb').datagrid({
        url: 'orders',
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
            {field: 'id', title: '订单编号', width: 100, sortable: true},
            {field: 'tripName', title: '景点名称', width: 100, sortable: true},
            {field: 'num', title: '购买数量', width: 100},
            {field: 'startTime', title: '出发时间', width: 100},
            {field: 'cityName', title: '出发地点', width: 100},
            {
                field: 'totalPrice', title: '总价格', formatter: function (value, row, index) {
                var number = new Number(value / 100);
                return number.toFixed(2);
            }
            },
            {field: 'state', title: '订单状态', width: 100},
            {
                field: 'createTime', title: '订单创建时间', formatter: function (value, row, index) {
                return moment(value).format("L");
            }
            },
            {field: 'userName', title: '订单所属用户', width: 100},
        ]],
        toolbar: "#orderstoolbar"
    })
</script>

