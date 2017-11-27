<%--
  User: jack
  Date: 2017/11/25
  Time: 16:39
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
    <title>Bootstrap 模板</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/orstyle.css" rel="stylesheet" type="text/css">

    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.js"></script>

    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>
                <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                    <li class="am-active">
                        <a href="#tab1">全部订单</a>
                    </li>
                    <li>
                        <a href="#tab2">待出行</a>
                    </li>
                    <li>
                        <a href="#tab3">待评价</a>
                    </li>
                    <li>
                        <a href="#tab4">待付款</a>
                    </li>
                    <li>
                        <a href="#tab5">带退款</a>
                    </li>
                </ul>
                <div class="am-tabs-bd">
                    <div class="order-top">
                        <div class="th th-item">
                            <td class="td-inner">商品</td>
                        </div>
                        <div class="th th-price">
                            <td class="td-inner">单价</td>
                        </div>
                        <div class="th th-number">
                            <td class="td-inner">数量</td>
                        </div>
                        <div class="th th-operation">
                            <td class="td-inner">出发地点</td>
                        </div>
                        <div class="th th-amount">
                            <td class="td-inner">商品总价格</td>
                        </div>
                        <div class="th th-status">
                            <td class="td-inner">交易状态</td>
                        </div>
                        <div class="th th-change">
                            <td class="td-inner">点击确认</td>
                        </div>
                    </div>
                    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                        <c:forEach items="${OredersAllList}" var="list">
                            <c:if test="${list.stateName=='待出行'}">
                                <div class="order-main">
                                    <div class="order-list">
                                        <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：
                                                    <a href="javascript:;">${list.id}</a>
                                                </div>
                                                <span>创建时间：${list.createTime}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${list.image}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                            ${list.tripName}
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${list.totalPrice/list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                出发地点：${list.cityName}
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                                ${list.totalPrice}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">${list.stateName}</p>
                                                                </p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">

                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </c:if>
                            <c:if test="${list.stateName=='待游玩'}">
                                <div class="order-main">
                                    <div class="order-list">
                                        <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：
                                                    <a href="javascript:;">${list.id}</a>
                                                </div>
                                                <span>创建时间：${list.createTime}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${list.image}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                            ${list.tripName}
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${list.totalPrice/list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                出发地点：${list.cityName}
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                                ${list.totalPrice}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">${list.stateName}</p>
                                                                </p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">

                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </c:if>
                            <c:if test="${list.stateName=='待评价'}">
                                <div class="order-main">
                                    <div class="order-list">
                                        <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：
                                                    <a href="javascript:;">${list.id}</a>
                                                </div>
                                                <span>创建时间：${list.createTime}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${list.image}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                            ${list.tripName}
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${list.totalPrice/list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                出发地点：${list.cityName}
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                                ${list.totalPrice}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">${list.stateName}</p>
                                                                </p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">
                                                            <a href="pay.html">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    评价</div>
                                                            </a>
                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${list.stateName=='已完成'}">
                                <div class="order-main">
                                    <div class="order-list">
                                        <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：
                                                    <a href="javascript:;">${list.id}</a>
                                                </div>
                                                <span>创建时间：${list.createTime}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${list.image}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                            ${list.tripName}
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${list.totalPrice/list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                出发地点：${list.cityName}
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                                ${list.totalPrice}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">${list.stateName}</p>
                                                                </p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">

                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </c:if>
                            <c:if test="${list.stateName=='已作废'}">
                                <div class="order-main">
                                    <div class="order-list">
                                        <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：
                                                    <a href="javascript:;">${list.id}</a>
                                                </div>
                                                <span>创建时间：${list.createTime}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${list.image}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                            ${list.tripName}
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${list.totalPrice/list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                出发地点：${list.cityName}
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                                ${list.totalPrice}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">${list.stateName}</p>
                                                                </p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">

                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </c:if>
                            <c:if test="${list.stateName=='待付款'}">
                                <div class="order-main">
                                    <div class="order-list">
                                        <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：
                                                    <a href="javascript:;">${list.id}</a>
                                                </div>
                                                <span>创建时间：${list.createTime}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${list.image}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                            ${list.tripName}
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${list.totalPrice/list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                出发地点：${list.cityName}
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                                ${list.totalPrice}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">${list.stateName}</p>
                                                                </p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">
                                                            <a href="Orders/pay?id=${list.id}">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    付款</div>
                                                            </a>
                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </c:if>
                            <c:if test="${list.stateName=='待退款'}">
                                <div class="order-main">
                                    <div class="order-list">
                                        <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：
                                                    <a href="javascript:;">${list.id}</a>
                                                </div>
                                                <span>创建时间：${list.createTime}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${list.image}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                            ${list.tripName}
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${list.totalPrice/list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                出发地点：${list.cityName}
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                                ${list.totalPrice}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">${list.stateName}</p>
                                                                </p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">
                                                            <a href="pay.html">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    退款</div>
                                                            </a>
                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </c:if>
                        </c:forEach>

                    </div>

                    <div class="am-tab-panel am-fade" id="tab2">
                        <c:forEach items="${OredersAllList}" var="list">
                        <c:if test="${list.stateName=='待出行'}">
                            <div class="order-main">
                                <div class="order-list">
                                    <div class="order-status1">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：
                                                <a href="javascript:;">${list.id}</a>
                                            </div>
                                            <span>创建时间：${list.createTime}</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="${list.image}" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                        ${list.tripName}
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                                ${list.totalPrice/list.num}
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>${list.num}
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            出发地点：${list.cityName}
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                            ${list.totalPrice}
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">${list.stateName}</p>
                                                            </p>

                                                        </div>
                                                    </li>
                                                    <li class="td td-change">

                                                    </li>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </c:if>
                        </c:forEach>
                    </div>
                    <div class="am-tab-panel am-fade" id="tab3">
                        <c:forEach items="${OredersAllList}" var="list">
                        <c:if test="${list.stateName=='待评价'}">
                            <div class="order-main">
                                <div class="order-list">
                                    <div class="order-status1">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：
                                                <a href="javascript:;">${list.id}</a>
                                            </div>
                                            <span>创建时间：${list.createTime}</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="${list.image}" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                        ${list.tripName}
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                                ${list.totalPrice/list.num}
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>${list.num}
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            出发地点：${list.cityName}
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                            ${list.totalPrice}
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">${list.stateName}</p>
                                                            </p>

                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <a href="pay.html">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                评价</div>
                                                        </a>
                                                    </li>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        </c:forEach>
                    </div>

                    <div class="am-tab-panel am-fade" id="tab4">
                        <c:forEach items="${OredersAllList}" var="list">
                            <c:if test="${list.stateName=='待付款'}">
                                <div class="order-main">
                                    <div class="order-list">
                                        <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：
                                                    <a href="javascript:;">${list.id}</a>
                                                </div>
                                                <span>创建时间：${list.createTime}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${list.image}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                            ${list.tripName}
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${list.totalPrice/list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                出发地点：${list.cityName}
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                                ${list.totalPrice}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">${list.stateName}</p>
                                                                </p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">
                                                            <a href="Orders/pay?id=${list.id}">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    付款</div>
                                                            </a>
                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                    <div class="am-tab-panel am-fade" id="tab5">
                        <c:forEach items="${OredersAllList}" var="list">
                            <c:if test="${list.stateName=='待退款'}">
                                <div class="order-main">
                                    <div class="order-list">
                                        <div class="order-status1">
                                            <div class="order-title">
                                                <div class="dd-num">订单编号：
                                                    <a href="javascript:;">${list.id}</a>
                                                </div>
                                                <span>创建时间：${list.createTime}</span>
                                                <!--    <em>店铺：小桔灯</em>-->
                                            </div>
                                            <div class="order-content">
                                                <div class="order-left">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img src="${list.image}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info">
                                                                    <a href="#">
                                                                            ${list.tripName}
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${list.totalPrice/list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${list.num}
                                                            </div>
                                                        </li>
                                                        <li class="td td-operation">
                                                            <div class="item-operation">
                                                                出发地点：${list.cityName}
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                                ${list.totalPrice}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">${list.stateName}</p>
                                                                </p>

                                                            </div>
                                                        </li>
                                                        <li class="td td-change">
                                                            <a href="pay.html">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    退款</div>
                                                            </a>
                                                        </li>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </c:if>
                        </c:forEach>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="js/bootstrap.min.js"></script>
<script>
</script>
</body>

</html>
