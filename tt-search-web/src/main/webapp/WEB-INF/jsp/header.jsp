<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/powerfloat.css"/>
    <link rel="stylesheet" href="css/autocomplete.mini.css"/>
    <!--分类目录css-->
    <link rel="stylesheet" href="css/hotelpagination.css"/>
    <!--首页第一屏样式-->
    <link rel="stylesheet" href="css/homepage_banner.css">

</head>

    <div class="header index header_1200 atmosbg">
        <link type="text/css" rel="stylesheet" href="css/site_nav.css" />
        <div id="header">
        <style type="text/css">
            .index_top_nav .item_duobao .dropdown_panel {width: 100%; left: -1px; text-align: center;}
        </style>
        <div class="header_top">
            <div class="header_inner clearfix">
                <ul class="index_top_nav" id="user_login_info">
                    <div class="login_menu clearfix">
                        <li><a rel="nofollow" href="http://www.tuniu.com/u/login" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_登录___'])">登录</a>|<a rel="nofollow" href="http://www.tuniu.com/u/register" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_注册___'])">注册</a>
                        </li>
                        <li><a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_注册有礼___'])"  rel="nofollow" href="http://www.tuniu.com/szt/newmembergift/?recId=1&q=a5" target="_blank"><img
                                src="picture/registgift.gif" style="height: 22px; vertical-align: middle;" alt="会员注册有礼" /></a></li>
                    </div>
                </ul>
                <ul class="index_top_nav nav_right">
                    <li class="nav_item item_order"><a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_途牛招聘___'])" target="_blank" href="http://tuniu.zhiye.com/">途牛招聘</a></li>
                    <li class="nav_item item_order"><a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_严选商城___'])" target="_blank" href="http://yanxuan.tuniu.com/">严选商城</a></li>
                    <li class="nav_item item_order"><a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_企业频道___'])" target="_blank" rel="nofollow" href="http://b.tuniu.com" style="color: #ff8800;">企业频道</a>
                    </li>
                    <li class="nav_item item_order"><a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_会员俱乐部___'])" target="_blank" rel="nofollow" href="https://i.tuniu.com/club" onclick="tuniuRecorder.push('1_1_1_1_1_2');" style="color: #ff8800;">会员俱乐部</a>
                    </li>
                    <li class="nav_item item_order is_order has_arrow has_dropdown">
                        我的订单
                        <i class="header_icon icon_arrow"></i>
                        <div class="dropdown_panel">
                            <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_全部订单___'])" target="_blank" href="https://i.tuniu.com/list/" rel="nofollow" class="" onclick="tuniuRecorder.push('1_1_1_2_1_1');">全部订单</a>
                            <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_我的机票___'])" target="_blank" href="https://i.tuniu.com/list/?t=1002" rel="nofollow" class="">我的机票</a>
                            <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_我的火车票___'])" target="_blank" href="https://i.tuniu.com/list/?t=1003" rel="nofollow" class="">我的火车票</a>
                            <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_积分商城___'])" target="_blank" href="http://points.tuniu.com/" rel="nofollow" class="">积分商城</a>
                        </div>
                    </li>
                    <li class="nav_item item_siteMap has_arrow has_dropdown"><a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_网站地图___'])">网站地图</a>
                        <i class="header_icon icon_arrow"></i>
                        <link rel="stylesheet" type="text/css" href="css/top_map.css" />
                        <dl class="dropdown_panel siteMap_panel clearfix">
                            <dt class="tour">去旅游</dt>
                            <dd>
                                <ul>
                                    <li><a href="http://www.tuniu.com/tours/">跟团游</a></li>
                                    <li><a href="http://www.tuniu.com/pkg/">自助游</a></li>
                                    <li><a href="http://www.tuniu.com/drive/">酒+景</a></li>
                                    <li><a href="http://www.tuniu.com/gongsi/">公司旅游</a></li>
                                    <li><a href="http://www.tuniu.com/local/">当地玩乐</a></li>
                                    <li><a href="http://www.tuniu.com/zt/sfcf/">首付出发<i class="header_icon icon_new"></i></a></li>
                                </ul>
                                <ul>
                                    <li><a href="http://www.tuniu.com/niuren/">牛人专线</a></li>
                                    <li><a href="http://www.tuniu.com/theme/guaguoqinziyou/">亲子游</a></li>
                                    <li><a href="http://www.tuniu.com/theme/weiaimy/">蜜月游</a></li>
                                    <li><a href="http://www.tuniu.com/theme/haidao/">海岛游</a></li>
                                    <li><a href="http://temai.tuniu.com/laoyutuijian">老于推荐</a></li>
                                    <li><a href="http://super.tuniu.com/">机票+酒店<i class="header_icon icon_hot"></i></a></li>
                                </ul>
                                <ul>
                                    <li><a href="http://hotel.tuniu.com/">酒店</a></li>
                                    <li><a href="http://menpiao.tuniu.com/">门票</a></li>
                                    <li><a href="http://youlun.tuniu.com/">邮轮</a></li>
                                    <li><a href="http://www.tuniu.com/visa/">签证</a></li>
                                    <li><a href="http://flight.tuniu.com/">机票</a></li>
                                </ul>
                            </dd>

                            <dt class="discount">寻优惠</dt>
                            <dd>
                                <ul>
                                    <li><a href="http://temai.tuniu.com/">特卖</a></li>
                                    <li><a href="http://hotel.tuniu.com/">订酒店 返现金</a></li>
                                    <li><a href="http://points.tuniu.com/">积分商城</a></li>
                                    <li><a href="http://www.tuniu.com/bank/">银行特惠游</a></li>
                                    <li><a href="http://www.tuniu.com/gt/guangfacxqq">银行分期游</a></li>
                                </ul>
                            </dd>

                            <dt class="guide">看攻略</dt>
                            <dd>
                                <ul>
                                    <li><a href="http://go.tuniu.com/">攻略</a></li>
                                    <li><a href="http://top.tuniu.com/">途牛风向标</a></li>
                                    <li><a href="http://trips.tuniu.com/">游记</a></li>
                                    <li><a href="http://www.tuniu.com/way/">达人玩法</a></li>
                                </ul>
                            </dd>

                            <dt class="service">查服务</dt>
                            <dd>
                                <ul>
                                    <li><a href="http://www.tuniu.com/help/">帮助中心</a></li>
                                    <li><a href="http://www.tuniu.com/u/club">积分俱乐部</a></li>
                                    <li><a href="http://www.tuniu.com/static/sunshine_ensure/">阳光保障</a></li>
                                    <li><a href="http://huoche.tuniu.com/">火车时刻表</a></li>
                                    <li><a href="http://flight.tuniu.com/">航班查询</a></li>
                                </ul>
                            </dd>
                        </dl>            </li>
                    <li class="nav_item item_weibo"><a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_微博___'])"  class="header_icon icon_weibo vm" rel="nofollow" target="_blank" href="http://www.weibo.com/tuniulvyou"></a></li>
                    <li class="nav_item item_qrCode has_dropdown">
                        <i class="header_icon icon_phone" id="isPcOrMobile"></i>
                        <div class="dropdown_panel qrCode_panel">
                            <img src="picture/cii_j1nidsoif-naaacdnbjvt44aabkxgdic_saaj21864.png">
                        </div>
                    </li>
                    <li class="nav_item item_weixin has_dropdown"><a class="header_icon icon_weixin vm" rel="nofollow" href="#"></a>
                        <div class="dropdown_panel weixin_panel">
                            <img src="picture/erweima.gif">
                            <div style="display:none">
                                <a href="http://www.tuniu.com/?_tuniutnstat=xx"></a>
                                <img src="picture/stat.gif">
                            </div>
                        </div></li>
                    <li class="nav_item item_mailbox">
                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','顶部按钮_邮件订阅___'])" class="header_icon icon_mailbox vm" rel="nofollow" target="_blank" href="https://i.tuniu.com/ezine"></a>
                    </li>

                </ul>
            </div>
        </div>

        <!--start head-->
        <div class="header_search">

            <div class="header_inner">
                <div class="site_logo">
                    <a href="http://www.tuniu.com/" target="_blank" class="logo_a">
                        <img title="途牛旅游网" src="picture/logo_20170124.png" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','网站logo____']);tuniuRecorder.push('3_1_1_1_1_1');"/></a>

                </div>
                <div class="local_city start_city_box">
                    <div class="head_start_city" id="startCity"  >
                        <p class="sc_name"><span>杭州站<i class="header_icon icon_arrow"></i></span></p>
                        <div class="show_city">
                            <div id="con">
                                <div class="station_search">
                                    <div class="station_search_box">
                                        <span class="header_icon icon"></span>
                                        <p class="s_text">搜索城市（支持汉字、拼音和首字母查询）</p>
                                        <input id="startCityKeyword" type="text" />
                                    </div>
                                    <div id="stationSearchResult" class="station_search_result"></div>
                                </div>
                                <div class="tagBox">
					<textarea class="storedata">
						<ul id="tags" class="station_titlist">
						   <li class="selectTag">
								<a href="javascript:void(0)">ABCDE</a>
							</li>

						</ul>
						<div id="tagContent">
						  <div id="tagContent1" class="tagContent selectTag">
								<div class="line">
									<div class="line_left">Z</div>
									<div class="line_right">
									  <a class="" href="http://zhsh.tuniu.com"
                                         onclick="_gaq.push(['_trackEvent', '首页_3402','点击','选预定城市_'.Z_遵化市]);">遵化市</a>
									</div>
								</div>
							</div>
						</div>
					</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p class="grey_color"><a href="http://www.tuniu.com/corp/subCorp/search#hz" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','选预定城市_本地分公司___']);tuniuRecorder.push('3_2_3_1_1_1');" target="_blank"><img src="picture/local_branch.png" width="61" height="16" /></a></p>
                </div>

                <div class="tn_search_box">
                    <div id="tnSearchBox" class="clearfix">
                        <form id="route_search" name="route_search" method="GET" action="">

                            <div class="tn_s_select" id="typename">
                                <span style="">所有产品</span><div id="spic" class="spic"></div>
                                <div class="tn_search_bar">
                                    <div class="type_s" style="display:none;" classify="0">所有产品</div>
                                    <div class="type_s" classify="1">跟团游</div>
                                </div>
                            </div>
                            <p class="tn_s_input">
                                <input type="text" id="keyword-input" name="keyword" value='' data="" data-cla=""  autocomplete="off" style="color: rgb(153, 153, 153);"/>
                            </p>
                            <div class="an_mo" liwithhan="搜索按钮">
                                <p class="tn_s_button" onclick="searchSub('route_search')">
                                    <button type="button" id="searchSub"></button>
                                </p>
                            </div>

                        </form>
                    </div>

                </div>

            </div>
         </div>
     </div>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
    function searchSub(formName){
        $('#'+formName).submit();
    }
</script>

