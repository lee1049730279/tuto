<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<include file="header.html" />
<head>
    <meta charset="UTF-8">
    <meta property="qh.webmaster" content="4ff57097b722d"/>
    <meta property="wb:webmaster" content="cd996377eedb7f7f"/>
   <title>途牛旅游网官网 - 跟团游,自助游,自驾游,出境游线路预订_机票预订查询_酒店预订</title>
<meta name="description" content="途牛旅游网提供跟团游、自助游、邮轮旅游、自驾游、定制游以及景点门票预订、机票预订、火车票预订服务,还有牛人专线、首付出发旅游等品质高端、价格实惠的旅游路线.全年有各种尾货特价、限时秒杀等特卖旅游路线让你畅游海内外,要旅游,找途牛."/>
<meta name="keywords" content="途牛 途牛旅游网 途牛旅游网官网 自助游 度假 出境游 周边旅游 途牛旅游" />
<link rel="canonical" href="http://www.tuniu.com/" /><meta name="mobile-agent" content="format=xhtml; url=http://m.tuniu.com"><meta name="mobile-agent" content="format=html5; url=http://m.tuniu.com">
	<link rel="canonical" href="http://www.tuniu.com/" /><meta name="mobile-agent" content="format=xhtml; url=http://m.tuniu.com"><meta name="mobile-agent" content="format=html5; url=http://m.tuniu.com">
	<link rel="stylesheet" href="css/powerfloat.css"/>
	<link rel="stylesheet" href="css/autocomplete.mini.css"/>
	<!--分类目录css-->
	<link rel="stylesheet" href="css/hotelpagination.css"/>
	<!--首页第一屏样式-->
	<link rel="stylesheet" href="css/homepage_banner.css">
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            text-decoration: none;
        }
        body {
            padding: 20px;
        }
        #container {
            width: 1250px;
            height: 400px;
            border: 3px solid #333;
            overflow: hidden;
            position: relative;
        }
        #list {
            width: 11200px;
            height: 400px;
            position: absolute;
            z-index: 1;
        }
        #list img {
            width: 1250px;
            height: 400px;
            float: left;
        }
        #buttons {
            position: absolute;
            height: 10px;
            width: 150px;
            z-index: 2;
            bottom: 20px;
            left: 520px;
        }
        #buttons span {
            cursor: pointer;
            float: left;
            border: 1px solid #fff;
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background: #333;
            margin-right: 5px;
        }
        #buttons .on {
            background: orangered;
        }
        .arrow {
            cursor: pointer;
            display: none;
            line-height: 39px;
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            width: 40px;
            height: 40px;
            position: absolute;
            z-index: 2;
            top: 180px;
            background-color: RGBA(0, 0, 0, .3);
            color: #fff;
        }
        .arrow:hover {
            background-color: RGBA(0, 0, 0, .7);
        }
        #container:hover .arrow {
            display: block;
        }
        #prev {
            left: 20px;
        }
        #next {
            right: 20px;
        }
    </style>
</head>
<body class="index1200 " id="index1200">
<jsp:include page="header.jsp"></jsp:include>
<!--end head-->

<!-- 从这块开始改 -->
<div class="header_nav index clearfix">
<input type="hidden" name="page_type" id="page_type" value="10000" />
    <input type="hidden" name="page_type" id="kefu_show" />
<!-- new start -->
<link type="text/css" rel="stylesheet" href="css/index_nav_menu.css" />
<div class="index_nav_menu">
        <div class="menu_panel">
            <div class="inner clearfix">
                <ul class="menu_list clearfix">
                             <li class="menu_first " name="nav-tab" data-tab="0">
                                <a class="cur_nav" href="http://www.tuniu.com/"
                                   onclick="_gaq.push(['_trackEvent', 'home_hz','pd','首页']);">首页</a>

                             </li>
                             <li class="hasSubNav" name="nav-tab" data-tab="18">
                                <a class="cur_nav" href="http://www.tuniu.com/tours/"
                                   onclick="_gaq.push(['_trackEvent', 'home_hz','pd','跟团游']);">跟团游<i class="cui_ico_triangle"></i></a>

                                 <div class="top_subnav_wrap">
                                    <div class="top_sub_nav">
                                                                            <a
                                                                                            class="highLight"
                                                                                        href="http://www.tuniu.com/abroad/tours/"
                                           rel="nofollow"
                                           onclick="_gaq.push(['_trackEvent', 'home_hz','pd','跟团游_出境跟团']);">出境跟团</a>
                                                                            <a
                                                                                        href="http://www.tuniu.com/domestic/tours/"
                                           rel="nofollow"
                                           onclick="_gaq.push(['_trackEvent', 'home_hz','pd','跟团游_国内跟团']);">国内跟团</a>
                                     </div>
                                    <i class="header_icon icon_arrowUp"></i>
                                </div>

                             </li>
                             <li class="hasSubNav" name="nav-tab" data-tab="4">
                                <a class="cur_nav" href="http://www.tuniu.com/pkg/"
                                   onclick="_gaq.push(['_trackEvent', 'home_hz','pd','自助游']);">自助游<i class="cui_ico_triangle"></i></a>

                                 <div class="top_subnav_wrap">
                                    <div class="top_sub_nav">
                                                                            <a
                                                                                        href="http://www.tuniu.com/domestic/package/"
                                           rel="nofollow"
                                           onclick="_gaq.push(['_trackEvent', 'home_hz','pd','自助游_国内自助']);">国内自助</a>
                                                                            <a
                                                                                            class="highLight"
                                                                                        href="http://www.tuniu.com/abroad/package/"
                                           rel="nofollow"
                                           onclick="_gaq.push(['_trackEvent', 'home_hz','pd','自助游_出境自助']);">出境自助</a>
                                    </div>
                                    <i class="header_icon icon_arrowUp"></i>
                                </div>
                             </li>
							<li class="" name="nav-tab" data-tab="19">
                                <a class="cur_nav" href="http://temai.tuniu.com/"
                                   onclick="_gaq.push(['_trackEvent', 'home_hz','pd','特卖']);">特卖</a>

                             </li>
                             <li class="hasSubNav" name="nav-tab" data-tab="31">
                                <a class="cur_nav" href="http://www.tuniu.com/theme/index/index.jsp"
                                   onclick="_gaq.push(['_trackEvent', 'home_hz','pd','主题游']);">主题游<i class="cui_ico_triangle"></i></a>

                                <div class="top_subnav_wrap">
                                    <div class="top_sub_nav">                                                                          
                                                                            <a
                                                                                        href="http://www.tuniu.com/theme/qinzi/"
                                           rel="nofollow"
                                           onclick="_gaq.push(['_trackEvent', 'home_hz','pd','主题游_亲子游']);">亲子游</a>
                                                                            
                                     </div>
                                    <i class="header_icon icon_arrowUp"></i>
                                </div>
                             </li>                  
                </ul>
            </div>
        </div>
    </div>
    <div class="subnav_wrap_bg" id="subnav_wrap_bg"></div>
<input type="hidden" value="0" name="tabId" />

<script type="text/javascript">
    (function(){
        var nav_tabs = document.getElementsByName("nav-tab");
        var tabId = document.getElementsByName("tabId")[0].value;
        if(nav_tabs.length && tabId.length){
            for(var i=0;i<nav_tabs.length;i++){
                if(nav_tabs[i].getAttribute("data-tab") == tabId){
                    var class_str = nav_tabs[i].className;
                    class_str+=" selected";
                    nav_tabs[i].className = class_str;
                }
            }
        }
    })();
</script>
<!-- DIV中加入导航 -->
<div class="tn_hearder_catalog">
	<div class="tn_catalog clearfix">		
		<!-- 旅游度假二级导航 -->
		<div class="J_CatalogSeconds catalog_second">
			<!-- 度假精选 -->
						<div class="J_CatalogSecond catalog_second_section clearfix" data-rel="holiday">
				<!-- 度假精选二级菜单 -->
				<div class="c_s_section">
					<div class="c_s_title"><a href="javascript:;" rel="nofollow" class="title_name"><a href="http://www.tuniu.com/theme/guaguoqinziyou/" target="_blank" class="title_name">瓜果亲子游</a>
<a href="http://www.tuniu.com/theme/haidao/" target="_blank" class="title_name">海岛</a></a><i class="c_s_arrow catalog_icon"></i></div>
					<p class="c_s_nom">
						<a href="http://www.tuniu.com/theme/weiaimy/" target="_blank" rel="nofollow">蜜月</a>
<a href="http://www.tuniu.com/niuren/" target="_blank" rel="nofollow">牛人专线</a>
<a href="http://www.tuniu.com/theme/zhoumo/" target="_blank" rel="nofollow">周末</a>						<!-- 下方小标题 <a href="javascript:;" target="_blank" rel="nofollow">海岛游</a> -->
					</p>
				</div>
				<i class="section_arrow catalog_icon tn_none"></i>
			</div>
			
			<!-- 其他分类二级菜单 -->
						<div class="J_CatalogSecond catalog_second_section clearfix " data-rel="cat1">
				
						<div class="J_CatalogSecond catalog_second_section clearfix " data-rel="cat2">
				<!-- 周边游二级菜单 -->
				<div class="c_s_section">
										<div class="c_s_title"><a href="javascript:;" rel="nofollow" class="title_name"><a target="_blank" href="http://www.tuniu.com/domestic/" rel="nofollow" class="title_name">国内旅游</a></a><i class="c_s_arrow catalog_icon"></i></div>
												<p class="c_s_nom">
														<a href="http://www.tuniu.com/guide/d-sanya-906/?pcat=67" target="_blank" rel="nofollow" >三亚</a>
														<a href="http://www.tuniu.com/guide/d-yunnan-3300/?pcat=27" target="_blank" rel="nofollow" >云南</a>
														<a href="http://hz.tuniu.com/dongbei/" target="_blank" rel="nofollow" >东北</a>
														<a href="http://www.tuniu.com/guide/d-guangxi-700/?pcat=27" target="_blank" rel="nofollow" >广西</a>
													</p>
															</div>
				<i class="section_arrow catalog_icon tn_none"></i>
			</div>
						<div class="J_CatalogSecond catalog_second_section clearfix " data-rel="cat3">
				<!-- 周边游二级菜单 -->
				<div class="c_s_section">
										<div class="c_s_title"><a href="javascript:;" rel="nofollow" class="title_name"><a target="_blank" href="http://www.tuniu.com/guide/d-maerdaifu-3922/" rel="nofollow" class="title_name">马尔代夫 <img src="picture/mysd.png" style="height: 14px;" alt=""></a></a><i class="c_s_arrow catalog_icon"></i></div>
												<p class="c_s_nom">
														<a href="http://www.tuniu.com/guide/v-ayada-38604/" target="_blank" rel="nofollow" >阿雅达岛</a>
														<a href="http://www.tuniu.com/guide/v-kdmd-3227320/" target="_blank" rel="nofollow" >康迪玛岛</a>
													</p>
															</div>
				<i class="section_arrow catalog_icon tn_none"></i>
			</div>
						<div class="J_CatalogSecond catalog_second_section clearfix " data-rel="cat4">
				<!-- 周边游二级菜单 -->
				<div class="c_s_section">
										<div class="c_s_title"><a href="javascript:;" rel="nofollow" class="title_name"><a target="_blank" href="http://www.tuniu.com/guide/d-ouzhou-3600/" rel="nofollow" class="title_name">欧洲</a>
<a target="_blank" href="http://hz.tuniu.com/meizhou/" rel="nofollow" class="title_name">美洲 <img src="picture/chunjieys.png" style="height: 14px;" alt=""></a></a><i class="c_s_arrow catalog_icon"></i></div>
												<p class="c_s_nom">
														<a href="http://www.tuniu.com/guide/d-ruishi-3619/?pcat=143" target="_blank" rel="nofollow" >瑞士</a>
														<a href="http://www.tuniu.com/guide/d-faguo-3604/?pcat=143" target="_blank" rel="nofollow" >法国</a>
														<a href="http://www.tuniu.com/guide/d-meiguo-3738/?pcat=154" target="_blank" rel="nofollow" >美国</a>
														<a href="http://www.tuniu.com/guide/d-jianada-3710/?pcat=154" target="_blank" rel="nofollow" >加拿大</a>
													</p>
															</div>
				<i class="section_arrow catalog_icon tn_none"></i>
			</div>
						<div class="J_CatalogSecond catalog_second_section clearfix " data-rel="cat8">
				<!-- 周边游二级菜单 -->
				<div class="c_s_section">
										<div class="c_s_title"><a href="javascript:;" rel="nofollow" class="title_name"><a target="_blank" href="http://www.tuniu.com/guide/d-riben-3905/" rel="nofollow" class="title_name">日本 <img src="picture/wqsf.png" style="height: 14px;" alt=""></a></a><i class="c_s_arrow catalog_icon"></i></div>
												<p class="c_s_nom">
														<a href="http://www.tuniu.com/guide/d-dongjing-45103/" target="_blank" rel="nofollow" >东京</a>
														<a href="http://www.tuniu.com/guide/d-daban-45099/" target="_blank" rel="nofollow" >大阪</a>
														<a href="http://www.tuniu.com/guide/d-beihaidao-45095/" target="_blank" rel="nofollow" >北海道</a>
														<a href="http://www.tuniu.com/guide/d-chongsheng-45097/" target="_blank" rel="nofollow" >冲绳</a>
													</p>
															</div>
				<i class="section_arrow catalog_icon tn_none"></i>
			</div>
						<div class="J_CatalogSecond catalog_second_section clearfix " data-rel="cat6">
				<!-- 周边游二级菜单 -->
				<div class="c_s_section">
										<div class="c_s_title"><a href="javascript:;" rel="nofollow" class="title_name"><a target="_blank" href="http://hz.tuniu.com/dongnanya/" rel="nofollow" class="title_name">东南亚</a>
<a  target="_blank" href="http://hz.tuniu.com/nanya/" rel="nofollow" class="title_name">南亚</a>
<a  target="_blank" href="http://www.tuniu.com/guide/d-taiguo-3910/" rel="nofollow" class="title_name">泰国</a></a><i class="c_s_arrow catalog_icon"></i></div>
												<p class="c_s_nom">
														<a href="http://www.tuniu.com/guide/d-mangu-45398/" target="_blank" rel="nofollow" >曼谷</a>
														<a href="http://www.tuniu.com/guide/d-balidao-784812/" target="_blank" rel="nofollow" >巴厘岛</a>
														<a href="http://www.tuniu.com/guide/v-pujidao-5896/" target="_blank" rel="nofollow" >普吉岛</a>
													</p>
															</div>
				<i class="section_arrow catalog_icon tn_none"></i>
			</div>
						<div class="J_CatalogSecond catalog_second_section clearfix " data-rel="cat7">
				<!-- 周边游二级菜单 -->
				<div class="c_s_section">
										<div class="c_s_title"><a href="javascript:;" rel="nofollow" class="title_name"><a target="_blank" href="http://www.tuniu.com/guide/d-xianggang-1300/" rel="nofollow" class="title_name">香港</a>
<a target="_blank" href="http://www.tuniu.com/guide/d-aomen-2002/" rel="nofollow" class="title_name">澳门</a>
<a target="_blank" href="http://www.tuniu.com/guide/d-taiwan-2900/" rel="nofollow" class="title_name">台湾</a></a><i class="c_s_arrow catalog_icon"></i></div>
												<p class="c_s_nom">
														<a href="http://www.tuniu.com/guide/v-dishinileyuan-824/" target="_blank" rel="nofollow" >香港迪士尼乐园</a>
														<a href="http://www.tuniu.com/guide/d-taibei-2902/" target="_blank" rel="nofollow" >台北</a>
													</p>
															</div>
				<i class="section_arrow catalog_icon tn_none"></i>
			</div>
						<div class="J_CatalogSecond catalog_second_section clearfix last" data-rel="cat9">
				<!-- 周边游二级菜单 -->
				<div class="c_s_section">
										<div class="c_s_title"><a href="javascript:;" rel="nofollow" class="title_name"><a target="_blank" href="http://hz.tuniu.com/aozhou/" rel="nofollow" class="title_name">澳新</a>
<a target="_blank" href="http://hz.tuniu.com/feizhou/" rel="nofollow" class="title_name">中东非洲</a></a><i class="c_s_arrow catalog_icon"></i></div>
												<p class="c_s_nom">
														<a href="http://www.tuniu.com/guide/d-xinxilan-4103/?pcat=131" target="_blank" rel="nofollow" >新西兰</a>
														<a href="http://www.tuniu.com/guide/d-feiji-4108/?pcat=7480" target="_blank" rel="nofollow" >斐济</a>
														<a href="http://www.tuniu.com/guide/d-dibai-42838/" target="_blank" rel="nofollow" >迪拜</a>
														<a href="http://www.tuniu.com/guide/d-aiji-4002/?pcat=170" target="_blank" rel="nofollow" >埃及</a>
													</p>
															</div>
				<i class="section_arrow catalog_icon tn_none"></i>
			</div>
					</div>

		<!-- 分类三级菜单集合 -->
		<div class="catalog_third J_CatalogThird tn_none">
			<!-- 度假精选三级菜单 -->
						<div class="J_CatalogSection catalog_third_section clearfix tn_none" data-value="holiday">
				<div class="c_t_league new-league">
										<div class="ranking">
                                                <div class="rankPagination">
                                                                <span class="active">1</span>
                                                                 <span >2</span>
                                                                 <span >3</span>
                                                                 <span >4</span>
                                                                 <span >5</span>
                                                     </div>
                        
                        <div class="ranking_title weight">
							<span class="line"></span>国内目的地推荐						</div>
                                                            <div class="rankPages" >
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g906/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_1-三亚_亚龙湾,大东海']);">
                                                        <i class="catalog_icon"></i>                                                        <div>
                                                            <div class="itemContent">
                                                                <p class="destination">三亚</p>
                                                                <p class="labels">
                                                                    <span>亚龙湾</span><span>大东海</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>93%</em></span>
                                                                                                                                            <span class="amount">关注数<em>83.2万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tlkqi2eiqz6vaace2oqodkyaajsdwp_cgmaaitw43_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3312/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_2-丽江_玉龙雪山,束河']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">丽江</p>
                                                                <p class="labels">
                                                                    <span>玉龙雪山</span><span>束河</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>89%</em></span>
                                                                                                                                            <span class="amount">关注数<em>66.6万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-u1kqjaeiix8eaac678edplgaakdpglk6qaaalsh90_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g414/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_3-厦门_环岛路,鼓浪屿']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">厦门</p>
                                                                <p class="labels">
                                                                    <span>环岛路</span><span>鼓浪屿</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>52.9万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-u1kqjfyiorbzaadtwgitqbuaakdpgp7xriaao1y66_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g700/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_4-广西_桂林,龙脊梯田']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">广西</p>
                                                                <p class="labels">
                                                                    <span>桂林</span><span>龙脊梯田</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>26.4万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tlkqjiuiekb8aabmodpqqoaaajsfwmljrwaaey520_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                                            <div class="rankPages"  style="display: none;">
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g2800/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_1-四川_成都,九寨沟']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">四川</p>
                                                                <p class="labels">
                                                                    <span>成都</span><span>九寨沟</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>87%</em></span>
                                                                                                                                            <span class="amount">关注数<em>47.8万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tlkqjxeiuyv5aacv0v1ibpuaajsgqo11baaak_q17_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g2802/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_2-成都_都江堰,锦里']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">成都</p>
                                                                <p class="labels">
                                                                    <span>都江堰</span><span>锦里</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>88%</em></span>
                                                                                                                                            <span class="amount">关注数<em>16.8万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-t1kqj_iistp5aab5by0ptdcaajsgwfv2jmaahkf28_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3306/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_3-大理_洱海,大理古城']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">大理</p>
                                                                <p class="labels">
                                                                    <span>洱海</span><span>大理古城</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>89%</em></span>
                                                                                                                                            <span class="amount">关注数<em>43万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-u1kqkgkir5szaaa6stkc0u8aakdsqhg3akaadrk63_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g1500/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_4-湖南_张家界,凤凰']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">湖南</p>
                                                                <p class="labels">
                                                                    <span>张家界</span><span>凤凰</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>87%</em></span>
                                                                                                                                            <span class="amount">关注数<em>15.8万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9efkqkq2imvdhaaclp3nvuwyaakdsglb00iaaitx54_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                                            <div class="rankPages"  style="display: none;">
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g705/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_1-桂林_漓江,阳朔']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">桂林</p>
                                                                <p class="labels">
                                                                    <span>漓江</span><span>阳朔</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>22.7万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-u1kqjjqil7vvaadkcg5yspaaakdrag3hzqaamog34_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g2702/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_2-西安_兵马俑,小吃']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">西安</p>
                                                                <p class="labels">
                                                                    <span>兵马俑</span><span>小吃</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>92%</em></span>
                                                                                                                                            <span class="amount">关注数<em>10.3万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tfkqkvmibt4iaac-vfm0-gyaajshqp-5wqaal5s83_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g2413/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_3-青岛_崂山,栈桥']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">青岛</p>
                                                                <p class="labels">
                                                                    <span>崂山</span><span>栈桥</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>86%</em></span>
                                                                                                                                            <span class="amount">关注数<em>11.1万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tlkqkduien3faabrhfytij4aajshwlzb_caags125_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g1425/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_4-凤凰古城_古镇,美食']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">凤凰古城</p>
                                                                <p class="labels">
                                                                    <span>古镇</span><span>美食</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>88%</em></span>
                                                                                                                                            <span class="amount">关注数<em>11.7万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-u1kqklyiq_p6aabx97zojtaaakdtqnpnrcaafgp07_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                                            <div class="rankPages"  style="display: none;">
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g200/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_1-北京_故宫,长城']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">北京</p>
                                                                <p class="labels">
                                                                    <span>故宫</span><span>长城</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>42万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9efkqk0wikmsqaabylhfldpmaakdtwp-6aiaafiu98_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3402/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_2-杭州_西湖,灵隐寺']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">杭州</p>
                                                                <p class="labels">
                                                                    <span>西湖</span><span>灵隐寺</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>84.3万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tfkqk8-izvu4aacutylmdamaajsjai_snoaak5l23_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g2500/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_3-上海_外滩,东方明珠']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">上海</p>
                                                                <p class="labels">
                                                                    <span>外滩</span><span>东方明珠</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>20.9万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tlkqmrsibiihaabby-2c3qiaajsmqnzkrcaaef791_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g300/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_4-重庆_洪崖洞,磁器口']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">重庆</p>
                                                                <p class="labels">
                                                                    <span>洪崖洞</span><span>磁器口</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>20.7万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-u1kqmy-iahqxaaexzudrbvkaakdygm7b4qaard-67_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                                            <div class="rankPages"  style="display: none;">
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3200/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_1-西藏_拉萨,布达拉宫']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">西藏</p>
                                                                <p class="labels">
                                                                    <span>拉萨</span><span>布达拉宫</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>85%</em></span>
                                                                                                                                            <span class="amount">关注数<em>6.3万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tfkqmdwim_1-aabmvdmbdsiaajsmwpwdnuaagbu22_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/dongbei/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_2-东北_长白山,哈尔滨']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">东北</p>
                                                                <p class="labels">
                                                                    <span>长白山</span><span>哈尔滨</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>86%</em></span>
                                                                                                                                            <span class="amount">关注数<em>20.6万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-t1kqmluiepakaab_ytvr8buaajsnahcfhiaah9569_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g800/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_3-贵州_贵阳,黄果树']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">贵州</p>
                                                                <p class="labels">
                                                                    <span>贵阳</span><span>黄果树</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>86%</em></span>
                                                                                                                                            <span class="amount">关注数<em>3.9万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9efkqm5kigs-kaaa2uas2reyaakdzwgkz8oaadzo32_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3318/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-国内目的地推荐_4-西双版纳_傣族园,野象谷']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">西双版纳</p>
                                                                <p class="labels">
                                                                    <span>傣族园</span><span>野象谷</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>87%</em></span>
                                                                                                                                            <span class="amount">关注数<em>11.8万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-u1kqm-iincpiaaccx5ociggaakdzwobpgyaaij360_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                        
					</div>
										<div class="ranking">
                                                <div class="rankPagination">
                                                                <span class="active">1</span>
                                                                 <span >2</span>
                                                                 <span >3</span>
                                                                 <span >4</span>
                                                                 <span >5</span>
                                                     </div>
                        
                        <div class="ranking_title weight">
							<span class="line"></span>出境目的地推荐						</div>
                                                            <div class="rankPages" >
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3910/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_1-泰国_曼谷,普吉岛']);">
                                                        <i class="catalog_icon"></i>                                                        <div>
                                                            <div class="itemContent">
                                                                <p class="destination">泰国</p>
                                                                <p class="labels">
                                                                    <span>曼谷</span><span>普吉岛</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>137万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9efkqnmuiz5tyaabdl1ms2u8aakd0qjmj9gaaf1h20_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3905/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_2-日本_购物,美食']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">日本</p>
                                                                <p class="labels">
                                                                    <span>购物</span><span>美食</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>93%</em></span>
                                                                                                                                            <span class="amount">关注数<em>70.2万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9evkqntciaeumaad35twrtisaakd0gptkhwaapf-52_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3922/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_3-马尔代夫_海岛,蜜月']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">马尔代夫</p>
                                                                <p class="labels">
                                                                    <span>海岛</span><span>蜜月</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>95%</em></span>
                                                                                                                                            <span class="amount">关注数<em>46.5万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9efkqnbyip_bjaacqygyyoj4aakd0wpdblmaajb611_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3600/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_4-欧洲_人文,购物']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">欧洲</p>
                                                                <p class="labels">
                                                                    <span>人文</span><span>购物</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>92%</em></span>
                                                                                                                                            <span class="amount">关注数<em>59.6万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-u1kqnkaip6gmaaceabrjwtkaakd1qkxs5iaaiqz11_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                                            <div class="rankPages"  style="display: none;">
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3912/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_1-新加坡_花园城市,美食']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">新加坡</p>
                                                                <p class="labels">
                                                                    <span>花园城市</span><span>美食</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>20.5万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-t1kqn56ikatdaacphkjt0q0aajsqamlng0aai8010_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3911/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_2-马来西亚_吉隆坡,沙巴']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">马来西亚</p>
                                                                <p class="labels">
                                                                    <span>吉隆坡</span><span>沙巴</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>14.1万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-u1kqn_giagcwaackgeqr5wkaakd2gfw-ugaaiow36_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g1300/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_3-香港_购物,美食']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">香港</p>
                                                                <p class="labels">
                                                                    <span>购物</span><span>美食</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>93%</em></span>
                                                                                                                                            <span class="amount">关注数<em>37.5万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9efkqogaivnsraacapefawvaaakd2wp-c64aaibu98_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3738/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_4-美国_纽约,洛杉矶']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">美国</p>
                                                                <p class="labels">
                                                                    <span>纽约</span><span>洛杉矶</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>88%</em></span>
                                                                                                                                            <span class="amount">关注数<em>22.5万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-t1kqomyidjreaabtjuhgpdcaajsqwppjjwaafm921_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                                            <div class="rankPages"  style="display: none;">
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g45103/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_1-东京_秋叶原,银座']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">东京</p>
                                                                <p class="labels">
                                                                    <span>秋叶原</span><span>银座</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>92%</em></span>
                                                                                                                                            <span class="amount">关注数<em>39.8万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tfkqouuii8lqaacnrfyzdpsaajsrqbca0saakfe78_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g784710/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_2-清迈_素贴寺,帕辛寺']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">清迈</p>
                                                                <p class="labels">
                                                                    <span>素贴寺</span><span>帕辛寺</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>93%</em></span>
                                                                                                                                            <span class="amount">关注数<em>11万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9efkqoziiwlzuaacotj1dddaaakd3go-gksaai7o14_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g784812/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_3-巴厘岛_海岛,蜜月']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">巴厘岛</p>
                                                                <p class="labels">
                                                                    <span>海岛</span><span>蜜月</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>39.5万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9efkqohmire-maacr0irfs6waakd4agdshgaajhq65_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g5896/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_4-普吉岛_海岛,蜜月']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">普吉岛</p>
                                                                <p class="labels">
                                                                    <span>海岛</span><span>蜜月</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>63.6万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tfkqom-idxy1aadnulrv5zmaajsrgp99oeaam1o12_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                                            <div class="rankPages"  style="display: none;">
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g4102/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_1-澳大利亚_大堡礁,凯恩斯']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">澳大利亚</p>
                                                                <p class="labels">
                                                                    <span>大堡礁</span><span>凯恩斯</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>90%</em></span>
                                                                                                                                            <span class="amount">关注数<em>5.6万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tfkqotgidwlfaabxbs64gbsaajsrwp_bpqaafeg57_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g4103/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_2-新西兰_奥克兰,皇后镇']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">新西兰</p>
                                                                <p class="labels">
                                                                    <span>奥克兰</span><span>皇后镇</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>90%</em></span>
                                                                                                                                            <span class="amount">关注数<em>3.9万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tfkqozoir6-aaac1uvq1ef4aajssgcdzmeaalvq41_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3643/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_3-希腊_圣托里尼,雅典']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">希腊</p>
                                                                <p class="labels">
                                                                    <span>圣托里尼</span><span>雅典</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>90%</em></span>
                                                                                                                                            <span class="amount">关注数<em>7.7万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii9efkqo5yirpvgaack51htnusaakd4gnjoawaakt_21_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3624/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_4-俄罗斯_莫斯科,海参崴']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">俄罗斯</p>
                                                                <p class="labels">
                                                                    <span>莫斯科</span><span>海参崴</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>90%</em></span>
                                                                                                                                            <span class="amount">关注数<em>5.3万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tfkqpa-ipyexaadob8o6wg8aajstamgt3yaam4f80_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                                            <div class="rankPages"  style="display: none;">
                                        <ul class="ranking_list newList clearfix">
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g3920/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_1-斯里兰卡_科伦坡,康提']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">斯里兰卡</p>
                                                                <p class="labels">
                                                                    <span>科伦坡</span><span>康提</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>95%</em></span>
                                                                                                                                            <span class="amount">关注数<em>2.2万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tlkqpfaixz9paacog1ejw74aajstqiner8aakib72_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g2900/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_2-台湾_台北,清镜农场']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">台湾</p>
                                                                <p class="labels">
                                                                    <span>台北</span><span>清镜农场</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>94%</em></span>
                                                                                                                                            <span class="amount">关注数<em>6.4万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tlkqppcizkl_aacdvxce3niaajstgimv0eaaj3x06_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g42838/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_3-迪拜_迪拜塔,棕榈岛']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">迪拜</p>
                                                                <p class="labels">
                                                                    <span>迪拜塔</span><span>棕榈岛</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>92%</em></span>
                                                                                                                                            <span class="amount">关注数<em>8.1万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tlkqpwmihpa0aabzceomriqaajstwkco_aaafkh09_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                            <li class="rankItems">
                                                    <a href="http://www.tuniu.com/g4002/whole-hz-0/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-出境目的地推荐_4-埃及_金字塔,开罗']);">
                                                                                                                <div>
                                                            <div class="itemContent">
                                                                <p class="destination">埃及</p>
                                                                <p class="labels">
                                                                    <span>金字塔</span><span>开罗</span>                                                                </p>
                                                                <p class="detailInfo">
                                                                    <span class="degree">满意度<em>91%</em></span>
                                                                                                                                            <span class="amount">关注数<em>5.5万人</em></span>
                                                                                                                                    </p>
                                                            </div>
                                                            <div class="itemImg">
                                                                <img src="picture/cii-tlkqppoiuonyaabtjg8dfdwaajsuqk2oikaafm-79_w350_h0_c0_t0.jpeg" width="65" height="80" alt="">
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                        
					</div>
					
					<div class="introduce_item clearfix">
												<div class="intro_list">
							<p class="intro_title"><span class="line"></span>免签/落地签<a href="http://www.tuniu.com/theme/mianqian/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_1-免签/落地签_更多']);">更多 <span class="more_arrow"></span></a></p>
							<p class="intro_item">
																<a href="http://www.tuniu.com/g3910/whole-hz-0/" target="_blank" rel="nofollow" class="a_hot" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-免签/落地签_1-泰国']);">泰国</a>
																<a href="http://www.tuniu.com/g3624/whole-hz-0/" target="_blank" rel="nofollow"  onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-免签/落地签_2-俄罗斯']);">俄罗斯</a>
																<a href="http://www.tuniu.com/g4002/whole-hz-0/" target="_blank" rel="nofollow"  onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-免签/落地签_3-埃及']);">埃及</a>
																<a href="http://www.tuniu.com/g3908/whole-hz-0/" target="_blank" rel="nofollow"  onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-免签/落地签_4-柬埔寨']);">柬埔寨</a>
																<a href="http://www.tuniu.com/g3948/whole-hz-0/" target="_blank" rel="nofollow"  onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-免签/落地签_5-尼泊尔']);">尼泊尔</a>
															</p>
						</div>
												<div class="intro_list">
							<p class="intro_title"><span class="line"></span>湿身那片海<a href="http://www.tuniu.com/theme/haidao/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_2-湿身那片海_更多']);">更多 <span class="more_arrow"></span></a></p>
							<p class="intro_item">
																<a href="http://www.tuniu.com/g5896/whole-hz-0/" target="_blank" rel="nofollow"  onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-湿身那片海_1-普吉岛']);">普吉岛</a>
																<a href="http://www.tuniu.com/g4049/whole-hz-0/" target="_blank" rel="nofollow" class="a_hot" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-湿身那片海_2-毛里求斯']);">毛里求斯</a>
																<a href="http://www.tuniu.com/g784028/whole-hz-0/" target="_blank" rel="nofollow"  onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-湿身那片海_3-长滩岛']);">长滩岛</a>
																<a href="http://www.tuniu.com/g786461/whole-hz-0/" target="_blank" rel="nofollow"  onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-湿身那片海_4-塞班岛']);">塞班岛</a>
																<a href="http://www.tuniu.com/g4048/whole-hz-0/" target="_blank" rel="nofollow"  onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-湿身那片海_5-塞舌尔']);">塞舌尔</a>
															</p>
						</div>
											</div>
                    
                                        <div class="ranking">
                        <div class="ranking_title weight">
                            <span class="line"></span>热门推荐                        </div>
                                                    <ul class="perimeter_list newList clearfix">
                                                                    <li>
                                        <a href="http://www.tuniu.com/niuren/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-热门推荐_1-漂流']);">
                                            <img src="picture/cii9evksdkyibjviaadubuvb8-qaakg1wfiqoiaanqd327.png" alt="漂流">
                                        </a>
                                    </li>
                                                                    <li>
                                        <a href="http://www.tuniu.com/theme/guaguoqinziyou/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-热门推荐_2-名山胜水']);">
                                            <img src="picture/cii9efksdkyilbdtaadj7hkncmeaakg1wfvvusaaoqe135.png" alt="名山胜水">
                                        </a>
                                    </li>
                                                                    <li>
                                        <a href="http://www.tuniu.com/theme/huwaishendu/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-热门推荐_3-城市']);">
                                            <img src="picture/cii9efksdkyiuyknaac4vv_84kiaakg1wfwou8aaljv931.png" alt="城市">
                                        </a>
                                    </li>
                                                                    <li>
                                        <a href="http://www.tuniu.com/theme/weiaimy/" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_holiday_3-热门推荐_4-古镇']);">
                                            <img src="picture/cii9efksdkuiovu3aacuqm4zn9iaakg1wfh-8aaak7c117.png" alt="古镇">
                                        </a>
                                    </li>
                                                            </ul>
                                            </div>
                    				</div>
				<!-- 右侧广告图 -->
				<div class="c_t_adv">
					<a href="http://www.tuniu.com/theme/haidao/" target="_blank" rel="nofollow"><img src="picture/cii-t1ksovqijli5aal8cdgijloaajvlgmp-geaavyi234.png"></a>
<a href="http://www.tuniu.com/theme/lekaihua/" target="_blank" rel="nofollow"><img src="picture/cii-tlksovuifw1gaaulx3bkj1qaajvlgm3oqcabsxf768.png"></a>				</div>
			</div>
			
			<!-- 分类三级菜单 -->
						<div class="J_CatalogSection catalog_third_section clearfix tn_none" data-value="cat1">
				<div class="c_t_league">
			    	<!-- 热词 -->
										<div class="league_tag">
						<a href="http://www.tuniu.com/bsztc/" target="_blank" rel="nofollow">巴士自由行</a>
<a href="http://www.tuniu.com/zhoubian/donggao/" target="_blank" rel="nofollow">动车/高铁</a>
<a href="http://www.tuniu.com/zt/disney/" target="_blank" rel="nofollow">上海迪士尼度假区</a>
<a href="http://www.tuniu.com/zhoubian/drive/drive-all-0/" target="_blank" rel="nofollow">酒店+门票</a>					</div>
					
					<!-- 总共8种显示分支 -->
										<div class="league_intro clearfix">
						<div class="league_intro_left">
														<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
									<a href="http://hz.tuniu.com/zhoubian/atsf/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-按天数分']);">
										按天数分									</a>
			                	</div>
			                	<div class="league_item">
			                					                    	<em>
			                        	<a  href="http://hz.tuniu.com/zhoubian/yiriyou/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-按天数分_1-一日游_']);">
											一日游										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a class="a_hot" href="http://hz.tuniu.com/zhoubian/erriyou/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-按天数分_2-二日游_']);">
											二日游										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://hz.tuniu.com/zhoubian/sanriyou/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-按天数分_3-三日游_']);">
											三日游										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://hz.tuniu.com/zhoubian/duoriyou/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-按天数分_4-三日以上_']);">
											三日以上										</a>
			                    	</em>
			                    				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
									<a href="http://hz.tuniu.com/zhoubian/remai/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖']);">
										当季热卖									</a>
			                	</div>
			                	<div class="league_item">
			                					                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/v-huangshan-134/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_1-黄山_']);">
											黄山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-hongcun-1603/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_2-宏村风景区_']);">
											宏村风景区										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/v-qdhfjmsq-47300/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_3-千岛湖_']);">
											千岛湖										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-hangzhou-3402/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_4-杭州_']);">
											杭州										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-shdsnly-1994829/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_5-上海迪士尼乐园_']);">
											上海迪士尼乐园										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-wuyuan-1715/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_6-婺源县_']);">
											婺源县										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/d-nanjing-1602/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_7-南京_']);">
											南京										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-xitang-50013/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_8-西塘古镇_']);">
											西塘古镇										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-simingshan-39856/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_9-四明山_']);">
											四明山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-lishui-3414/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_10-丽水_']);">
											丽水										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/v-damingshan-76/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_11-大明山_']);">
											大明山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-sanqingshan-10/?pcat=5882" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-当季热卖_12-三清山_']);">
											三清山										</a>
			                    	</em>
			                    				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
									<a href="http://hz.tuniu.com/zhoubian/winter/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-温泉/滑雪']);">
										温泉/滑雪									</a>
			                	</div>
			                	<div class="league_item">
			                					                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/v-yishangwenquandujiacun-8362/?pcat=8554" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-温泉/滑雪_1-汤山颐尚温泉_']);">
											汤山颐尚温泉										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-sijiyuewenquan-38909/?pcat=8554" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-温泉/滑雪_2-四季悦温泉_']);">
											四季悦温泉										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-nanjingtangshanyihaowenquan-54112/?pcat=8554" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-温泉/滑雪_3-汤山一号温泉_']);">
											汤山一号温泉										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-tangshanziqinghushengtaiwenquandujiacun-1791607/?pcat=8554" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-温泉/滑雪_4-汤山紫清湖生态旅游温泉度假区_']);">
											汤山紫清湖生态旅游温泉度假区										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-yangmingwenquan-39862/?pcat=8554" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-温泉/滑雪_5-阳明温泉_']);">
											阳明温泉										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-xinanjiangyuwenquan-51485/?pcat=8554" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-温泉/滑雪_6-新安江玉温泉_']);">
											新安江玉温泉										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-ninghaisenlinwenquan-39437/?pcat=8554" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-温泉/滑雪_7-宁海森林温泉_']);">
											宁海森林温泉										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/v-damingshanhuaxuechang-51440/?pcat=8554" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-温泉/滑雪_8-大明山滑雪场_']);">
											大明山滑雪场										</a>
			                    	</em>
			                    				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
									<a href="http://hz.tuniu.com/zhoubian/shanshui/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水']);">
										名山胜水									</a>
			                	</div>
			                	<div class="league_item">
			                					                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/v-huangshan-134/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_1-黄山_']);">
											黄山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-damingshan-76/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_2-大明山_']);">
											大明山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/v-qdhfjmsq-47300/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_3-千岛湖_']);">
											千岛湖										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-tianmuhu-8218/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_4-天目湖_']);">
											天目湖										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-qyssddjms-50577/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_5-安徽齐云山_']);">
											安徽齐云山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/v-pts-8501/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_6-普陀山_']);">
											普陀山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-jiuhuashan-50591/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_7-九华山_']);">
											九华山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-sanqingshan-10/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_8-三清山_']);">
											三清山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-wenzhouyandangshan-50239/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_9-雁荡山_']);">
											雁荡山										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-lishui-3414/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_10-丽水_']);">
											丽水										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-anji-39827/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_11-安吉_']);">
											安吉										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-tonglu-39848/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_12-桐庐_']);">
											桐庐										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/v-xiandu-1389/?pcat=428" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-名山胜水_13-仙都_']);">
											仙都										</a>
			                    	</em>
			                    				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
									<a href="http://hz.tuniu.com/zhoubian/chengshi/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市']);">
										城市									</a>
			                	</div>
			                	<div class="league_item">
			                					                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/d-shanghai-2500/?pcat=495" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市_1-上海_']);">
											上海										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-suzhou-1615/?pcat=495" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市_2-苏州_']);">
											苏州										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/d-hangzhou-3402/?pcat=495" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市_3-杭州_']);">
											杭州										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-nanjing-1602/?pcat=495" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市_4-南京_']);">
											南京										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-changzhou-1604/?pcat=495" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市_5-常州_']);">
											常州										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-wuxi-1619/?pcat=495" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市_6-无锡_']);">
											无锡										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a class="a_hot" href="http://www.tuniu.com/guide/d-ningbo-3415/?pcat=495" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市_7-宁波_']);">
											宁波										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-yangzhou-1622/?pcat=495" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市_8-扬州_']);">
											扬州										</a>
			                    	</em>
			                    				                    	<em>
			                        	<a  href="http://www.tuniu.com/guide/d-nantong-1611/?pcat=495" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_5-城市_9-南通_']);">
											南通										</a>
			                    	</em>
			                    				                	</div>
			            	</div>
			            							</div>
						<div class="league_intro_right">
														<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
									<a href="http://hz.tuniu.com/zhoubian/guzhen/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-古镇']);">
										古镇									</a>
			                	</div>
			                	<div class="league_item">
			                					                    	<em>
										<a  href="http://www.tuniu.com/guide/v-tongli-5432/?pcat=606" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-城市_1-同里_']);">
											同里										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-nanguzhen-6184/?pcat=606" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-城市_2-南浔古镇_']);">
											南浔古镇										</a>
									</em>
			                    				                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/v-xitang-50013/?pcat=606" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-城市_3-西塘_']);">
											西塘										</a>
									</em>
			                    				                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/v-wuzhen-50241/?pcat=606" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-城市_4-乌镇_']);">
											乌镇										</a>
									</em>
			                    				                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/v-hongcun-1603/?pcat=606" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-城市_5-宏村_']);">
											宏村										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-zhouzhuang-4467/?pcat=606" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-城市_6-周庄_']);">
											周庄										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-xidiminju-6078/?pcat=606" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-城市_7-西递_']);">
											西递										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/d-wuyuan-1715/?pcat=606" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-城市_8-婺源县_']);">
											婺源县										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-wuyuanhuanglingjingqu-1741626/?pcat=606" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_1-城市_9-婺源篁岭景区_']);">
											婺源篁岭景区										</a>
									</em>
			                    				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
									<a href="http://hz.tuniu.com/zhoubian/leyuan/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-游乐园']);">
										游乐园									</a>
			                	</div>
			                	<div class="league_item">
			                					                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/v-shdsnly-1994829/?pcat=738" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-城市_1-上海迪士尼乐园_']);">
											上海迪士尼乐园										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-zhonghuakonglongyuan-3216/?pcat=738" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-城市_2-中华恐龙园_']);">
											中华恐龙园										</a>
									</em>
			                    				                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/v-whftdfsh-1819188/?pcat=738" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-城市_3-芜湖方特东方神画_']);">
											芜湖方特东方神画										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-hengdianyingshicheng-1390/?pcat=738" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-城市_4-横店影视城_']);">
											横店影视城										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-anjixiankaidimaojiayuan-1804380/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-城市_5-安吉Hello Kitty主题乐园_']);">
											安吉Hello Kitty主题乐园										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-whfthlsj-37488/?pcat=738" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-城市_6-芜湖方特欢乐世界_']);">
											芜湖方特欢乐世界										</a>
									</em>
			                    				                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/v-dongfangyanhucheng-1812681/?pcat=738" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-城市_7-东方盐湖城_']);">
											东方盐湖城										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-hfwdztly-2103398/?pcat=738" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_2-城市_8-合肥万达主题乐园_']);">
											合肥万达主题乐园										</a>
									</em>
			                    				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
									<a href="http://hz.tuniu.com/bsztc/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-巴士自由行']);">
										巴士自由行									</a>
			                	</div>
			                	<div class="league_item">
			                					                    	<em>
										<a  href="http://www.tuniu.com/guide/d-shanghai-2500/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_1-上海_']);">
											上海										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/d-hangzhou-3402/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_2-杭州_']);">
											杭州										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-qdhfjmsq-47300/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_3-千岛湖_']);">
											千岛湖										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-pts-8501/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_4-普陀山_']);">
											普陀山										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-xitang-50013/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_5-西塘古镇_']);">
											西塘古镇										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-wuzhen-50241/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_6-乌镇_']);">
											乌镇										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-tianmuhu-8218/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_7-天目湖_']);">
											天目湖										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/d-wuxi-1619/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_8-无锡_']);">
											无锡										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/d-huangshan-113/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_9-黄山_']);">
											黄山										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-zhouzhuang-4467/?pcat=6956" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_3-城市_10-昆山周庄古镇_']);">
											昆山周庄古镇										</a>
									</em>
			                    				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
									<a href="http://hz.tuniu.com/zhoubian/donggao/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-动车/高铁']);">
										动车/高铁									</a>
			                	</div>
			                	<div class="league_item">
			                					                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/d-lishui-3414/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_1-丽水_']);">
											丽水										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-pts-8501/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_2-普陀山_']);">
											普陀山										</a>
									</em>
			                    				                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/v-sanqingshan-10/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_3-三清山_']);">
											三清山										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/d-ningbo-3415/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_4-宁波_']);">
											宁波										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/d-wuxi-1619/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_5-无锡_']);">
											无锡										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/d-suzhou-1615/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_6-苏州_']);">
											苏州										</a>
									</em>
			                    				                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/v-wenzhouyandangshan-50239/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_7-雁荡山_']);">
											雁荡山										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/d-nanchang-1702/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_8-南昌_']);">
											南昌										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-lushan-374/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_9-庐山_']);">
											庐山										</a>
									</em>
			                    				                    	<em>
										<a  href="http://www.tuniu.com/guide/v-jiuhuashan-50591/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_10-九华山_']);">
											九华山										</a>
									</em>
			                    				                    	<em>
										<a class="a_hot" href="http://www.tuniu.com/guide/d-wuyuan-1715/?pcat=5409" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat1_4-城市_11-婺源县_']);">
											婺源县										</a>
									</em>
			                    				                	</div>
			            	</div>
			            							</div>
					</div>
					<!-- 处理背景图 -->
								 	</div>
			    <!-- league_intro E -->
			    <!-- c_t_adv S 右侧广告 -->
				<div class="c_t_adv">
					<a class="pic" href="http://www.tuniu.com/szt/autumnbus2/"><img src="picture/zb_24.jpg"></img></a>
<a class="pic" href="http://www.tuniu.com/around/tours/"><img src="picture/zb_8.jpg"></img></a>
<a class="pic" href="http://www.tuniu.com/zt/disney/"><img src="picture/zb_11.jpg"></img></a>				</div>
			    <!-- c_t_adv E -->
			</div>
						<div class="J_CatalogSection catalog_third_section clearfix tn_none" data-value="cat2">
				<div class="c_t_league">
			    	<!-- 热词 -->
										<div class="league_tag">
						<a href="http://www.tuniu.com/gnzz/pkg-all-0/" target="_blank" rel="nofollow">国内自助</a>
<a href="http://www.tuniu.com/szt/gnbzz/" target="_blank" rel="nofollow">半自助</a>
<a href="http://www.tuniu.com/theme/huwaishendu/" target="_blank" rel="nofollow">户外深度游</a>
<a href="http://www.tuniu.com/ddct/around-all-0/" target="_blank" rel="nofollow">当地参团</a>
<a href="http://s.tuniu.com/search_complex/pkg-all-0-%E5%A9%9A%E7%BA%B1%E6%97%85%E6%8B%8D/" target="_blank" rel="nofollow">婚纱旅拍</a>					</div>
					
					<!-- 总共8种显示分支 -->
										<div class="league_intro clearfix">
						<div class="league_intro_left">
														<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://www.tuniu.com/guide/d-hainan-900/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_海南']);">
											 海南										 </a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-sanya-906/?pcat=67" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-三亚_']);">
											三亚</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-wuzhizhoudao-4780/?pcat=67" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-蜈支洲岛_']);">
											蜈支洲岛</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-yalongwan-5823/?pcat=67" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-亚龙湾_']);">
											亚龙湾</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-haikou-902/?pcat=67" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-海口_']);">
											海口</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-tianyahaijiao-91/?pcat=67" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-天涯海角_']);">
											天涯海角</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-xisha-41865/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-西沙群岛_']);">
											西沙群岛</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-linshuilizuzizhixian-784380/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-陵水黎族自治县_']);">
											陵水黎族自治县</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-dadonghai-5820/?pcat=67" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-大东海_']);">
											大东海</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-xiaodonghai-5962/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-小东海_']);">
											小东海</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://www.tuniu.com/guide/d-yunnan-3300/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_云南']);">
											 云南										 </a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-lijiang-3312/?pcat=82" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-丽江_']);">
											丽江</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-dali-3306/?pcat=82" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-大理_']);">
											大理</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-xianggelila-3322/?pcat=82" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-香格里拉县_']);">
											香格里拉县</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-xishuangbanna-3318/?pcat=82" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-西双版纳_']);">
											西双版纳</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-tengchong-3323/?pcat=82" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-腾冲县_']);">
											腾冲县</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-luguhu-50068/?pcat=82" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-泸沽湖_']);">
											泸沽湖</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-kunming-3302/?pcat=82" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-昆明_']);">
											昆明</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-yulongxueshan-50067/?pcat=82" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-玉龙雪山_']);">
											玉龙雪山</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://www.tuniu.com/guide/d-sichuan-2800/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_四川']);">
											 四川										 </a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-chengdu-2802/?pcat=163" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-成都_']);">
											成都</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-emeishan-9755/?pcat=163" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-峨眉山风景区_']);">
											峨眉山风景区</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-dujiangyan-39166/?pcat=163" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-都江堰_']);">
											都江堰</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-yading-143/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-稻城亚丁_']);">
											稻城亚丁</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-sedaxian-42027/?pcat=163" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-色达县_']);">
											色达县</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-daxiongmaofanyuyanjiujidi-9132/?pcat=163" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-大熊猫繁育研究基地_']);">
											大熊猫繁育研究基地</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-xilingxueshan-1436/?pcat=163" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-西岭雪山_']);">
											西岭雪山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-siguniangshan-754/?pcat=163" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-四姑娘山_']);">
											四姑娘山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-xichang-2828/?pcat=163" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-西昌市_']);">
											西昌市</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://hz.tuniu.com/dongbei/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_东北']);">
											 东北										 </a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-cbsfjq-151/?pcat=382" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-长白山_']);">
											长白山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-jingbohufengjingqu-1377/?pcat=382" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-镜泊湖风景区_']);">
											镜泊湖风景区</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-changchun-1802/?pcat=382" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-长春_']);">
											长春</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-haerbin-1102/?pcat=382" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-哈尔滨_']);">
											哈尔滨</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-yabuli-1169503/?pcat=382" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-亚布力_']);">
											亚布力</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-xuexiang-4718/?pcat=382" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-雪乡_']);">
											雪乡</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-shenyang-1902/?pcat=382" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-沈阳_']);">
											沈阳</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-dalian-1906/?pcat=382" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-大连_']);">
											大连</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-mohe-174/?pcat=382" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-漠河_']);">
											漠河</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 	<a href="http://www.tuniu.com/guide/d-hunan-1500/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-湖南']);">
												湖南											</a>
				                					                		 	<a href="http://www.tuniu.com/guide/d-hubei-1400/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-湖北']);">
												湖北											</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-zhangjiajie-1514/?pcat=181" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-张家界_']);">
											张家界</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-changsha-1502/?pcat=181" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-长沙_']);">
											长沙</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-fenghuanggucheng-1425/?pcat=181" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-凤凰古城_']);">
											凤凰古城</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-wudangshan-189/?pcat=255" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-武当山_']);">
											武当山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-sxdb-1361/?pcat=255" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-三峡大坝_']);">
											三峡大坝</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-shennongjia-1412/?pcat=255" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-神农架_']);">
											神农架</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-enshi-1403/?pcat=255" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-恩施_']);">
											恩施</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-tianmenshan-992/?pcat=181" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-天门山_']);">
											天门山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-zhangjiajieguojiasenlingongyuan-10124/?pcat=181" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-张家界核心景区武陵源_']);">
											张家界核心景区武陵源</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-zjjdxgblq-1925647/?pcat=181" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_10-张家界大峡谷玻璃桥_']);">
											张家界大峡谷玻璃桥</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 	<a href="http://www.tuniu.com/guide/d-guizhou-800/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-贵州']);">
												贵州											</a>
				                					                		 	<a href="http://www.tuniu.com/guide/d-chongqing-300/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-重庆']);">
												重庆											</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a  href="http://www.tuniu.com/guide/d-guiyang-802/?pcat=304" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-贵阳_']);">
											贵阳</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-huangguoshupubu-436/?pcat=304" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-黄果树瀑布_']);">
											黄果树瀑布</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-liboxian-42130/?pcat=304" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-荔波县_']);">
											荔波县</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-xijiangqianhumiaozhai-1367/?pcat=304" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-西江千户苗寨_']);">
											西江千户苗寨</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-zunyi-811/?pcat=304" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-遵义_']);">
											遵义</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-jingshan-468/?pcat=304" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-梵净山_']);">
											梵净山</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-wulong-327/?pcat=302" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-武隆_']);">
											武隆</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-dazushike-658/?pcat=302" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-大足石刻_']);">
											大足石刻</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-wlxns-4232/?pcat=302" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-仙女山_']);">
											仙女山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-zhijindong-11943/?pcat=304" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_10-织金洞_']);">
											织金洞</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-wanfenglinjingqu-8153/?pcat=304" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_11-万峰林_']);">
											万峰林</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 	<a href="http://www.tuniu.com/guide/d-shanxi-2600/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-山西']);">
												山西											</a>
				                					                		 	<a href="http://www.tuniu.com/guide/d-neimenggu-2100/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-内蒙古']);">
												内蒙古											</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a  href="http://www.tuniu.com/guide/v-xilamurencaoyuan-50511/?pcat=193" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-希拉穆仁草原_']);">
											希拉穆仁草原</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-eerduosi-2106/?pcat=193" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-鄂尔多斯_']);">
											鄂尔多斯</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-hulunbeier-2107/?pcat=193" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-呼伦贝尔_']);">
											呼伦贝尔</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-manzhouli-7007/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-满洲里_']);">
											满洲里</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-chifeng-2105/?pcat=193" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-赤峰_']);">
											赤峰</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-aershan-3085/?pcat=193" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-阿尔山_']);">
											阿尔山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-yungangshiku-1442/?pcat=416" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-云冈石窟_']);">
											云冈石窟</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-sxwtsfjmsq-1578/?pcat=416" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-五台山_']);">
											五台山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-pingyaogucheng-169/?pcat=416" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-平遥古城_']);">
											平遥古城</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-xiangshawan-287/?pcat=193" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_10-响沙湾_']);">
											响沙湾</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://www.tuniu.com/guide/d-shandong-2400/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_山东']);">
											 山东										 </a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a  href="http://www.tuniu.com/guide/d-rizhao-2415/?pcat=229" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-日照_']);">
											日照</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-qingdao-2413/?pcat=229" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-青岛_']);">
											青岛</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-weihai-2418/?pcat=229" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-威海_']);">
											威海</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-yantai-2419/?pcat=229" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-烟台_']);">
											烟台</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-penglai-2312/?pcat=229" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-蓬莱_']);">
											蓬莱</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-taishan-5242/?pcat=229" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-泰山_']);">
											泰山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-jinan-2402/?pcat=229" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-济南_']);">
											济南</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-qufu-4765/?pcat=229" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-曲阜_']);">
											曲阜</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-taian-2416/?pcat=229" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-泰安_']);">
											泰安</a></em>  		
			                				                	</div>
			            	</div>
			            							</div>
						<div class="league_intro_right">
														<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 	<a href="http://www.tuniu.com/guide/d-fujian-400/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-福建']);">福建</a>
				                					                		 	<a href="http://www.tuniu.com/guide/d-guangdong-600/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-广东']);">广东</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-xiamen-414/?pcat=133" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-厦门_']);">
											厦门</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-gulangyu-364/?pcat=133" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-鼓浪屿_']);">
											鼓浪屿</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-wuyishan-2781/?pcat=133" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-武夷山_']);">
											武夷山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-yongdingtulou-2616/?pcat=133" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-永定土楼_']);">
											永定土楼</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-zzysy-37599/?pcat=133" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-云水谣古镇_']);">
											云水谣古镇</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-shen-619/?pcat=272" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-深圳_']);">
											深圳</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-guangzhou-602/?pcat=272" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-广州_']);">
											广州</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-changlonghuanleshijie-16734/?pcat=272" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-长隆欢乐世界_']);">
											长隆欢乐世界</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-zhuhaichanglonghaiyangwangguo-1791699/?pcat=272" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-珠海长隆海洋王国_']);">
											珠海长隆海洋王国</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-huizhou-609/?pcat=272" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_10-惠州_']);">
											惠州</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://www.tuniu.com/guide/d-guangxi-700/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_广西']);">广西</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-guilin-705/?pcat=240" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-桂林_']);">
											桂林</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-beihai-704/?pcat=240" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-北海_']);">
											北海</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-yangshuo-716/?pcat=240" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-阳朔县_']);">
											阳朔县</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-nanning-702/?pcat=240" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-南宁_']);">
											南宁</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-lijiangyouchuan-160/?pcat=240" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-漓江_']);">
											漓江</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-tonglingdaxiagu-3298/?pcat=240" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-通灵大峡谷_']);">
											通灵大峡谷</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-zhoudao-6236/?pcat=240" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-涠洲岛_']);">
											涠洲岛</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-longjititian-161/?pcat=240" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-龙脊梯田_']);">
											龙脊梯田</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 	<a href="http://www.tuniu.com/guide/d-beijing-200/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-北京']);">北京</a>
				                					                		 	<a href="http://www.tuniu.com/guide/d-hebei-1000/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-河北']);">河北</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-gugong-170/?pcat=407" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-故宫_']);">
											故宫</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-tiantan-8159/?pcat=407" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-天坛_']);">
											天坛</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-tiananmen-3/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-天安门_']);">
											天安门</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-badalingchangcheng-150/?pcat=407" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-八达岭长城_']);">
											八达岭长城</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-yiheyuan-3535/?pcat=407" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-颐和园_']);">
											颐和园</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-chengde-1006/?pcat=410" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-承德_']);">
											承德</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-fengningbashangcaoyuan-36736/?pcat=410" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-坝上草原_']);">
											坝上草原</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-saihanbaguojiasenlingongyuan-5797/?pcat=410" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-塞罕坝国家森林公园_']);">
											塞罕坝国家森林公园</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://www.tuniu.com/guide/d-xizang-3200/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_西藏']);">西藏</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-lasa-3202/?pcat=217" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-拉萨_']);">
											拉萨</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-linzhi-3205/?pcat=217" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-林芝_']);">
											林芝</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-budalagong-33/?pcat=217" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-布达拉宫_']);">
											布达拉宫</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-rikaze-3207/?pcat=217" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-日喀则_']);">
											日喀则</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-zhufengdabenying-34/?pcat=217" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-珠峰大本营_']);">
											珠峰大本营</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-namucuo-4222/?pcat=217" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-纳木措_']);">
											纳木措</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 	<a href="http://www.tuniu.com/guide/d-shaanxi-2700/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-陕西']);">陕西</a>
				                					                		 	<a href="http://www.tuniu.com/guide/d-henan-1200/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-河南']);">河南</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-xian-2702/?pcat=247" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-西安_']);">
											西安</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-qshdlbmybwg-1351/?pcat=247" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-秦始皇兵马俑_']);">
											秦始皇兵马俑</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-huaqinggong-8127/?pcat=247" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-华清宫_']);">
											华清宫</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-huashan-20/?pcat=247" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-华山_']);">
											华山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-sxhhhkpb-50196/?pcat=247" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-黄河壶口瀑布_']);">
											黄河壶口瀑布</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-kaifeng-1208/?pcat=211" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-开封_']);">
											开封</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-slsfjmsq-464/?pcat=211" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-少林寺_']);">
											少林寺</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-luoyang-1210/?pcat=211" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-洛阳_']);">
											洛阳</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-longmenshikujingqu-50148/?pcat=211" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-龙门石窟景区_']);">
											龙门石窟景区</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://www.tuniu.com/guide/d-xinjiang-3100/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_新疆']);">新疆</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-wulumuqi-3102/?pcat=204" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-乌鲁木齐_']);">
											乌鲁木齐</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-tianshantianchifengjingqu-596/?pcat=204" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-天山天池风景区_']);">
											天山天池风景区</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/d-tulufan-3118/?pcat=204" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-吐鲁番_']);">
											吐鲁番</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-kanasijingqu-35566/?pcat=204" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-喀纳斯景区_']);">
											喀纳斯景区</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-nalaticaoyuan-5340/?pcat=204" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-那拉提草原_']);">
											那拉提草原</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-hemu-39785/?pcat=204" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-禾木_']);">
											禾木</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-kashi-3111/?pcat=204" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-喀什_']);">
											喀什</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-luobubo-47483/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-罗布泊_']);">
											罗布泊</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://hz.tuniu.com/xibu/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_西北']);">西北</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a  href="http://www.tuniu.com/guide/d-gansu-500/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-甘肃_']);">
											甘肃</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-dunhuang-39203/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-敦煌_']);">
											敦煌</a></em>  		
			                				                			<em><a class="a_hot" href="http://www.tuniu.com/guide/v-qinghaihu-145/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-青海湖_']);">
											青海湖</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-zhangye-515/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-张掖_']);">
											张掖</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-ningxia-2200/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-宁夏_']);">
											宁夏</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-yinchuan-2202/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-银川_']);">
											银川</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-gannan-506/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_7-甘南_']);">
											甘南</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-jiayuguan-516/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_8-嘉峪关_']);">
											嘉峪关</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-xining-2302/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_9-西宁_']);">
											西宁</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-chakayanhu-36231/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_10-茶卡盐湖_']);">
											茶卡盐湖</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-mogaoku-695/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_11-莫高窟_']);">
											莫高窟</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-yadanmoguicheng-698/?pcat=365" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_12-雅丹魔鬼城_']);">
											雅丹魔鬼城</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-qilianxian-42547/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_13-祁连县_']);">
											祁连县</a></em>  		
			                				                	</div>
			            	</div>
			            								<div class="league_column">
			                	<div class="league_title">
			                    	<span class="line"></span>
			                    					                		 <a href="http://www.tuniu.com/guide/d-jiangxi-1700/?pcat=27" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_江西']);">江西</a>
				                				                	</div>
			                	<div class="league_item">
			                				                			<em><a  href="http://www.tuniu.com/guide/d-nanchang-1702/?pcat=102" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_1-南昌_']);">
											南昌</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-lushan-374/?pcat=102" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_2-庐山_']);">
											庐山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-wuyuan-1715/?pcat=102" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_3-婺源县_']);">
											婺源县</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-sanqingshan-10/?pcat=102" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_4-三清山_']);">
											三清山</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/d-jingdezhen-1706/?pcat=102" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_5-景德镇_']);">
											景德镇</a></em>  		
			                				                			<em><a  href="http://www.tuniu.com/guide/v-jinggangshan-11563/?pcat=102" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat2_6-井冈山_']);">
											井冈山</a></em>  		
			                				                	</div>
			            	</div>
			            							</div>
					</div>
								 	</div>
			    <!-- league_intro E -->
			    <!-- c_t_adv S 右侧广告 -->
				<div class="c_t_adv">
					<a class="pic" href="http://sanxia.tuniu.com/"><img src="picture/sanxia.jpg"></img></a>
<a class="pic" href="http://www.tuniu.com/theme/jdair/"><img src="picture/gn_shouhang.jpg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/syzx/"><img src="picture/gn_2.jpg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/yczh91/"><img src="picture/cii-vvm3mz2iafv8aabqom6ahfkaabijwhxbnoaafc629.jpeg"></img></a>				</div>
			    <!-- c_t_adv E -->
			</div>
						<div class="J_CatalogSection catalog_third_section clearfix tn_none" data-value="cat3">
				<div class="c_t_league">
			    	<!-- 热词 -->
										<div class="league_tag">
						<a href="http://s.tuniu.com/search_complex/whole-all-0-%E9%A9%AC%E5%B0%94%E4%BB%A3%E5%A4%AB%E9%98%BF%E7%91%9E%E5%A8%9C/" target="_blank" rel="nofollow">马代民宿</a>
<a href="http://www.tuniu.com/guide/v-szd-3412457/" target="_blank" rel="nofollow">双子岛</a>
<a href="http://www.tuniu.com/guide/v-kdmd-3227320/" target="_blank" rel="nofollow">康迪玛岛</a>
<a href="http://www.tuniu.com/guide/v-thebeachhouseatiruveliyilulimanafaludao-38641/" target="_blank" rel="nofollow">玛娜法鲁岛</a>
<a href="http://www.tuniu.com/guide/v-ayada-38604/" target="_blank" rel="nofollow">阿雅达岛</a>
<a href="http://www.tuniu.com/guide/v-velavaru-38649/" target="_blank" rel="nofollow">微拉瓦鲁岛</a>
<a href="http://www.tuniu.com/guide/v-lilybeachlilidao-38626/" target="_blank" rel="nofollow">莉莉岛</a>					</div>
					
					<!-- 总共8种显示分支 -->
										<div class="league_intro clearfix">
			            <div class="league_row clearfix">
			                <div class="league_title">
			                    <span class="line"></span>
			                    <a href="http://www.tuniu.com/guide/d-maerdaifu-3922/?pcat=28" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫']);">
									马尔代夫</a>
			                </div>
			                  			                <div class="league_item clearfix">
			                    <div class="league_item_title">
			                        工具			                    </div>
			                    <dl>
   <dd>
      <em><a href="http://www.tuniu.com/tools/choice/">不会选岛？快来试试选岛工具吧！</a></em>
   </dd>
</dl>			                </div>
			                			                <div class="league_item clearfix">
			                    <div class="league_item_title">
			                        基础岛屿			                    </div>
			                    			                    <div class="league_item_content">
			                    				                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-heratheraislandresort-1798545/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_6543-星宇之岛']);">
											星宇之岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-sun-38638/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_3930-太阳岛']);">
											太阳岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-miyuedao-22811/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_4397-蜜月岛']);">
											蜜月岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-bandushidao-51081/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_3174-班度士岛']);">
											班度士岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-tiantangdao-4277/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2745-天堂岛']);">
											天堂岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-adaaranrannalhixuanlidao-47472/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2590-绚丽岛']);">
											绚丽岛</a>
			                        </em>
			                        			                    </div>
			                    			                </div>
			                			                <div class="league_item clearfix">
			                    <div class="league_item_title">
			                        优质岛屿			                    </div>
			                    			                    <div class="league_item_content">
			                    				                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-vadoo-38645/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2895-瓦度岛']);">
											瓦度岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-jiaoyedao-51706/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2891-蕉叶岛']);">
											蕉叶岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-kurumba-38625/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2592-椰子岛']);">
											椰子岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-kandoomakangdumadao-47473/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2591-康杜玛岛']);">
											康杜玛岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-medfald-2011914/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8192-奥露岛']);">
											奥露岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-kknd-3094982/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8046-可可尼岛']);">
											可可尼岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-weilidudao-51091/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_7748-维莉督']);">
											维莉督</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-shengtalafushidao-51718/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2708-圣塔拉富士岛']);">
											圣塔拉富士岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-feiliziyoudao-51087/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8197-菲利兹优岛']);">
											菲利兹优岛</a>
			                        </em>
			                        			                    </div>
			                    			                </div>
			                			                <div class="league_item clearfix">
			                    <div class="league_item_title">
			                        豪华岛屿			                    </div>
			                    			                    <div class="league_item_content">
			                    				                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-fullmoon-38615/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1990-满月岛']);">
											满月岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-boduhithi-38606/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2585-可可波杜希蒂岛']);">
											可可波杜希蒂岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-medhufushi-38629/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2596-曼德芙仕岛']);">
											曼德芙仕岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-vilureef-38650/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1993-美露丽芙岛']);">
											美露丽芙岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-xierdunyiludao-37875/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2540-伊露岛']);">
											伊露岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-robinson-38634/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1911-罗宾逊岛']);">
											罗宾逊岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-velassaru-38646/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2707-维拉沙露岛']);">
											维拉沙露岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-kdmd-3227320/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8165-康迪玛岛']);">
											康迪玛岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-amr-1926246/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_6636-阿玛瑞']);">
											阿玛瑞</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-meedhupparu-38628/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1988-蜜杜帕卢岛']);">
											蜜杜帕卢岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-kuramathi-38624/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1989-库拉玛提岛']);">
											库拉玛提岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-kani-38623/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1916-卡尼岛']);">
											卡尼岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-kdfsd-3089214/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8166-库达富士岛']);">
											库达富士岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-szd-3412457/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8167-双子岛']);">
											双子岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-djld-3412456/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8463-迪迦莉岛']);">
											迪迦莉岛</a>
			                        </em>
			                        			                    </div>
			                    			                </div>
			                			                <div class="league_item clearfix">
			                    <div class="league_item_title">
			                        轻奢岛屿			                    </div>
			                    			                    <div class="league_item_content">
			                    				                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-velavaru-38649/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_3064-薇拉瓦鲁岛']);">
											薇拉瓦鲁岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-luxlishidiwadao-38627/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1917-LUX*度假村']);">
											LUX*度假村</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-ayada-38604/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1908-阿雅达岛']);">
											阿雅达岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-hideaway-38618/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2589-神仙珊瑚岛']);">
											神仙珊瑚岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-fnnd-2053921/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_7649-菲诺娜岛']);">
											菲诺娜岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-lilybeachlilidao-38626/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2587-莉莉岛']);">
											莉莉岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-argd-1819206/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_6492-奥瑞格岛']);">
											奥瑞格岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-dusit-38612/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1955-都喜天阙岛']);">
											都喜天阙岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-zhongyanggelandedao-38601/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2586-中央格兰德岛']);">
											中央格兰德岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-azd-2019336/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_7647-奥臻岛']);">
											奥臻岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-moofushi-38631/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1909-魔富士岛']);">
											魔富士岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-conrad-38607/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2556-港丽岛']);">
											港丽岛</a>
			                        </em>
			                        			                    </div>
			                    			                </div>
			                			                <div class="league_item clearfix">
			                    <div class="league_item_title">
			                        奢华岛屿			                    </div>
			                    			                    <div class="league_item_content">
			                    				                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-feinuodao-51074/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_5839-翡诺岛']);">
											翡诺岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-wretreat-38651/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2698-W宁静岛']);">
											W宁静岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-amiladao-1817142/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_6635-阿米拉岛']);">
											阿米拉岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-thebeachhouseatiruveliyilulimanafaludao-38641/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_5320-玛娜法鲁岛']);">
											玛娜法鲁岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-vittaveli-38648/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1996-卓美亚维塔维丽岛']);">
											卓美亚维塔维丽岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-shangrila-38636/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8195-香格里拉岛']);">
											香格里拉岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-fuhuafendao-51079/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2741-芙花芬岛']);">
											芙花芬岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-kuda-38613/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2752-四季库达岛']);">
											四季库达岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-laamu-38637/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_1913-第六感拉姆岛']);">
											第六感拉姆岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-kihavah-38603/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2594-安娜塔拉吉哈瓦岛']);">
											安娜塔拉吉哈瓦岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-niyama-38630/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2584-尼亚玛岛']);">
											尼亚玛岛</a>
			                        </em>
			                        			                    </div>
			                    			                </div>
			                			                <div class="league_item clearfix">
			                    <div class="league_item_title">
			                        至尊岛屿			                    </div>
			                    			                    <div class="league_item_content">
			                    				                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-chevalblancrandheli-1798271/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_4319-LV白马兰德利岛']);">
											LV白马兰德利岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-wlsrd-2035357/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_7648-维拉私人岛']);">
											维拉私人岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-dhevanafushi-38622/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8493-德瓦娜芙希岛']);">
											德瓦娜芙希岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-snwjnd-2120676/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8168-索尼娃贾尼岛']);">
											索尼娃贾尼岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-medfwmlrjdjjd-2135805/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8194-沃木里瑞吉岛']);">
											沃木里瑞吉岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-jililankanfushidao-51075/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_8170-姬丽兰坎富士岛']);">
											姬丽兰坎富士岛</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/guide/v-landaa-38614/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2703-四季兰达岛']);">
											四季兰达岛</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/guide/v-onenlyeethiahruitiladao-39821/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_1-马尔代夫_2892-瑞提拉岛']);">
											瑞提拉岛</a>
			                        </em>
			                        			                    </div>
			                    			                </div>
			                			                <div class="league_title_hot">
			                    	热门玩法
			                </div>
			                				                <div class="league_item clearfix">
			                    <div class="league_item_title">
			                        线路玩法			                    </div>
			                    <div class="league_item_content">
			                    				                        <em>
			                            <a  href="http://www.tuniu.com/g3922/whole-hz-0/list-c64/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_热门玩法_65-岛屿+马累_']);">
											岛屿+马累</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/g3922/whole-hz-0/list-c67/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_热门玩法_68-马尔代夫+迪拜_']);">
											马尔代夫+迪拜</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/g3922/whole-hz-0/list-c69/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_热门玩法_70-马尔代夫+香港_']);">
											马尔代夫+香港</a>
			                        </em>
			                        			                        <em>
			                            <a class="a_hot" href="http://www.tuniu.com/g3922/whole-hz-0/list-c66/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_热门玩法_67-马尔代夫+新加坡_']);">
											马尔代夫+新加坡</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/g3922/whole-hz-0/list-c68/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_热门玩法_69-马尔代夫+斯里兰卡_']);">
											马尔代夫+斯里兰卡</a>
			                        </em>
			                        			                        <em>
			                            <a  href="http://www.tuniu.com/g3922/whole-hz-0/list-c11559/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat3_热门玩法_11560-岛屿+当地玩乐_']);">
											岛屿+当地玩乐</a>
			                        </em>
			                        			                    </div>
			                </div>
			                				            </div>
			        </div>
								 	</div>
			    <!-- league_intro E -->
			    <!-- c_t_adv S 右侧广告 -->
				<div class="c_t_adv">
					<a class="pic" href="http://www.tuniu.com/tools/choice/"><img src="picture/cii_j1m6weaiit8paacu-p_nn08aabolgdr1q0aak8s32.jpeg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/17Maldiveshuichang/"><img src="picture/cii-vvnncjsivpdmaacnvckhydqaacusgp0c3oaai1t18.jpeg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/maldivescfy/"><img src="picture/cii_j1no-vsipbqbaac9quxji5yaabwjqp-dqaaal3c49.jpeg"></img></a>				</div>
			    <!-- c_t_adv E -->
			</div>
						<div class="J_CatalogSection catalog_third_section clearfix tn_none" data-value="cat4">
				<div class="c_t_league">
			    	<!-- 热词 -->
										<div class="league_tag">
						<a href="http://www.tuniu.com/guide/d-faguo-3604/?pcat=143" target="_blank" rel="nofollow">法国</a>
<a href="http://www.tuniu.com/guide/d-xila-3643/?pcat=143" target="_blank" rel="nofollow">希腊</a>
<a href="http://www.tuniu.com/guide/d-xibanya-3644/?pcat=143" target="_blank" rel="nofollow">西班牙</a>
<a href="http://www.tuniu.com/guide/d-yingguo-3608/?pcat=143" target="_blank" rel="nofollow">英国</a>
<a href="http://www.tuniu.com/guide/d-eluosi-3624/?pcat=143" target="_blank" rel="nofollow">俄罗斯</a>
<a href="http://www.tuniu.com/guide/d-meiguo-3738/?pcat=154" target="_blank" rel="nofollow">美国</a>
<a href="http://www.tuniu.com/guide/v-huangshigongyuan-62/" target="_blank" rel="nofollow">黄石公园</a>
<a href="http://www.tuniu.com/guide/d-jianada-3710/?pcat=154" target="_blank" rel="nofollow">加拿大</a>
<a href="http://www.tuniu.com/nanmei/" target="_blank" rel="nofollow">南美洲</a>					</div>
					
					<!-- 总共8种显示分支 -->
										<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://www.tuniu.com/guide/d-ouzhou-3600/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲']);">
									欧洲</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/guide/d-faguo-3604/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_1-法国']);">
										法国</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-ruishi-3619/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_2-瑞士']);">
										瑞士</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-yidali-3645/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_3-意大利']);">
										意大利</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-yingguo-3608/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_4-英国']);">
										英国</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-aierlan-3602/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_5-爱尔兰']);">
										爱尔兰</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-helan-3605/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_6-荷兰']);">
										荷兰</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-deguo-3616/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_7-德国']);">
										德国</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-bilishi-3603/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_8-比利时']);">
										比利时</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-aodili-3614/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_9-奥地利']);">
										奥地利</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-eluosi-3624/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_10-俄罗斯']);">
										俄罗斯</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-jiekegongheguo-3617/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_11-捷克共和国']);">
										捷克共和国</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xiongyali-3621/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_12-匈牙利']);">
										匈牙利</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-siluofake-3620/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_13-斯洛伐克']);">
										斯洛伐克</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-fenlan-3611/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_14-芬兰']);">
										芬兰</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-ruidian-3613/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_15-瑞典']);">
										瑞典</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-xibanya-3644/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_16-西班牙']);">
										西班牙</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-putaoya-3638/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_17-葡萄牙']);">
										葡萄牙</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xila-3643/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_18-希腊']);">
										希腊</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-danmai-3610/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_19-丹麦']);">
										丹麦</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-nuowei-3612/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_20-挪威']);">
										挪威</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-monage-3607/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_21-摩纳哥']);">
										摩纳哥</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-keluodiya-3633/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_22-克罗地亚']);">
										克罗地亚</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-fuladiwosituoke-787355/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_23-海参崴']);">
										海参崴</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-beijiaerhu-37899/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_24-贝加尔湖']);">
										贝加尔湖</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-bingdao-3609/?pcat=143" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_1-欧洲_25-冰岛']);">
										冰岛</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g3600/whole-hz-0/list-c2362-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_1-德国+法国+瑞士+意大利全含_']);">
										德国+法国+瑞士+意大利全含</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c2363-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_2-法国+瑞士+意大利全含_']);">
										法国+瑞士+意大利全含</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g3600/whole-hz-0/list-c127-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_3-俄罗斯一地_']);">
										俄罗斯一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c2321-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_4-俄罗斯+北欧_']);">
										俄罗斯+北欧</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c129-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_5-东欧系列_']);">
										东欧系列</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c2318-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_6-巴尔干_']);">
										巴尔干</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c125-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_7-欧洲多国连线_']);">
										欧洲多国连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c2350-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_8-英国一地/英国连线_']);">
										英国一地/英国连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c2407-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_9-精品小团_']);">
										精品小团</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g3600/whole-hz-0/list-c4946-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_10-希腊一地/希腊连线_']);">
										希腊一地/希腊连线</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g3600/whole-hz-0/list-c2408-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_11-西班牙一地/西班牙连线_']);">
										西班牙一地/西班牙连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c2364-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_12-法国一地/法国连线_']);">
										法国一地/法国连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c4945-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_13-意大利一地/意大利连线_']);">
										意大利一地/意大利连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c2320-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_14-极光之旅_']);">
										极光之旅</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3600/whole-hz-0/list-c2346-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_15-瑞士一地/瑞士连线_']);">
										瑞士一地/瑞士连线</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://hz.tuniu.com/meizhou/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲']);">
									美洲</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-meiguo-3738/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_1-美国']);">
										美国</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-jianada-3710/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_2-加拿大']);">
										加拿大</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/v-huangshigongyuan-62/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_3-黄石公园']);">
										黄石公园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-meiguodonghaian-47287/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_4-美国东海岸']);">
										美国东海岸</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-meiguoxihaian-47288/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_5-美国西海岸']);">
										美国西海岸</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xiaweiyi-44716/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_6-夏威夷']);">
										夏威夷</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-guandaomei-4115/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_7-关岛']);">
										关岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-niuyue-44676/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_8-纽约']);">
										纽约</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-luoshanji-44558/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_9-洛杉矶']);">
										洛杉矶</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-lasiweijiasi-44673/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_10-拉斯维加斯']);">
										拉斯维加斯</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-jiujinshan-44557/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_11-旧金山']);">
										旧金山</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xiyatu-44548/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_12-西雅图']);">
										西雅图</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-baxi-3806/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_13-巴西']);">
										巴西</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-moxige-3725/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_14-墨西哥']);">
										墨西哥</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-eguaduoer-3802/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_15-厄瓜多尔']);">
										厄瓜多尔</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-agenting-3810/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_16-阿根廷']);">
										阿根廷</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-milu-3805/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_17-秘鲁']);">
										秘鲁</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-zhili-3807/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_18-智利']);">
										智利</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-guba-3713/?pcat=154" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_2-美洲_19-古巴']);">
										古巴</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/meizhou/whole-hz-0/list-c155-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_1-美国东西海岸+夏威夷_']);">
										美国东西海岸+夏威夷</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c152-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_2-美国西海岸_']);">
										美国西海岸</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/meizhou/whole-hz-0/list-c2556-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_3-西海岸+黄石公园_']);">
										西海岸+黄石公园</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/meizhou/whole-hz-0/list-c2558-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_4-东西海岸+黄石公园_']);">
										东西海岸+黄石公园</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/meizhou/whole-hz-0/list-c2563-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_5-东西海岸+夏威夷+黄石公园_']);">
										东西海岸+夏威夷+黄石公园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c156-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_6-美国东西海岸连线_']);">
										美国东西海岸连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c2560-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_7-西海岸+夏威夷+黄石公园_']);">
										西海岸+夏威夷+黄石公园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c2564-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_8-美国+加拿大+黄石公园_']);">
										美国+加拿大+黄石公园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c158-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_9-美国+加拿大连线_']);">
										美国+加拿大连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c154-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_10-美国东海岸_']);">
										美国东海岸</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/meizhou/whole-hz-0/list-c160-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_11-加拿大一地_']);">
										加拿大一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c161-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_12-美国西海岸+夏威夷_']);">
										美国西海岸+夏威夷</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c153-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_13-浪漫夏威夷_']);">
										浪漫夏威夷</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c157-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_14-关岛一地_']);">
										关岛一地</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/meizhou/whole-hz-0/list-c1070-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_15-南美四国连线_']);">
										南美四国连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c1071-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_16-南美两国连线_']);">
										南美两国连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c1277-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_17-南美+南极_']);">
										南美+南极</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/meizhou/whole-hz-0/list-c1973-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat4_热门玩法_18-机票+巴士游_']);">
										机票+巴士游</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<!-- 处理背景图 -->
								 	</div>
			    <!-- league_intro E -->
			    <!-- c_t_adv S 右侧广告 -->
				<div class="c_t_adv">
					<a class="pic" href="http://img2.tuniucdn.com/zt/Alberta/Alberta.html"><img src="picture/om_1.jpg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/CanadaNorthwest/"><img src="picture/om_2.jpg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/ouzhou201709/"><img src="picture/cii-vvmoycuikzv5aabfyxtriniaaaqyanngviaaexh71.jpeg"></img></a>				</div>
			    <!-- c_t_adv E -->
			</div>
						<div class="J_CatalogSection catalog_third_section clearfix tn_none" data-value="cat8">
				<div class="c_t_league">
			    	<!-- 热词 -->
										<div class="league_tag">
						<a href="http://www.tuniu.com/guide/d-daban-45099/" target="_blank" rel="nofollow">大阪</a>
<a href="http://www.tuniu.com/guide/d-dongjing-45103/" target="_blank" rel="nofollow">东京</a>
<a href="http://www.tuniu.com/guide/d-beihaidao-45095/" target="_blank" rel="nofollow">北海道</a>
<a href="http://www.tuniu.com/guide/d-chongsheng-45097/" target="_blank" rel="nofollow">冲绳</a>					</div>
					
					<!-- 总共8种显示分支 -->
										<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://www.tuniu.com/guide/d-riben-3905/?pcat=28" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本']);">
									日本</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-dongjing-45103/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_1-东京']);">
										东京</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-daban-45099/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_2-大阪']);">
										大阪</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-jingdu-45114/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_3-京都']);">
										京都</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-beihaidao-45095/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_4-北海道']);">
										北海道</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-chongsheng-45097/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_5-冲绳']);">
										冲绳</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-fugang-45105/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_6-福冈']);">
										福冈</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-fushan-45107/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_7-富山']);">
										富山</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-luerdao-45117/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_8-鹿儿岛']);">
										鹿儿岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-gongqi-45111/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_9-宫崎']);">
										宫崎</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-zhangqi-45136/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_10-长崎']);">
										长崎</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-shenhushi-47158/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_11-神户']);">
										神户</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-dongjingdishinileyuan-39979/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_12-东京迪士尼乐园']);">
										东京迪士尼乐园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xiantaishi-47175/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_1-日本_13-仙台']);">
										仙台</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g3905/whole-hz-0/list-c55-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_热门玩法_1-东京一地_']);">
										东京一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3905/whole-hz-0/list-c1307-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_热门玩法_2-北海道一地_']);">
										北海道一地</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g3905/whole-hz-0/list-c59-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_热门玩法_3-大阪一地_']);">
										大阪一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3905/whole-hz-0/list-c57-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_热门玩法_4-冲绳一地_']);">
										冲绳一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3905/whole-hz-0/list-c58-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_热门玩法_5-九州一地_']);">
										九州一地</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g3905/whole-hz-0/list-c1306-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_热门玩法_6-东京+箱根+京都+大阪_']);">
										东京+箱根+京都+大阪</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://hz.tuniu.com/chaoxian/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_2-东北亚']);">
									东北亚</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/guide/d-pingrang-43282/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_2-东北亚_1-平壤']);">
										平壤</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-miaoxiangshan-27719/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_2-东北亚_2-妙香山']);">
										妙香山</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-banmendian-7133/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_2-东北亚_3-板门店']);">
										板门店</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-kaichengtejishi-786564/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_2-东北亚_4-开城特级市']);">
										开城特级市</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-chaoxian-3903/?pcat=4357" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat8_2-东北亚_5-朝鲜']);">
										朝鲜</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<!-- 处理背景图 -->
								 	</div>
			    <!-- league_intro E -->
			    <!-- c_t_adv S 右侧广告 -->
				<div class="c_t_adv">
					<a class="pic" href="http://www.tuniu.com/szt/17Cruisehuichang/"><img src="picture/cii_j1nu0ewibasaaaa0xur8pfuaacgrgguwwsaadtd82.jpeg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/dujiabaihuo1017/"><img src="picture/cii_j1nyxw6ifkjhaacqojow4g4aacoagmcdb8aakpq83.jpeg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/qyzh/"><img src="picture/rh_1.jpg"></img></a>				</div>
			    <!-- c_t_adv E -->
			</div>
						<div class="J_CatalogSection catalog_third_section clearfix tn_none" data-value="cat6">
				<div class="c_t_league">
			    	<!-- 热词 -->
										<div class="league_tag">
						<a href="http://www.tuniu.com/guide/v-pujidao-5896/" target="_blank" rel="nofollow">普吉岛</a>
<a href="http://www.tuniu.com/guide/d-balidao-784812/" target="_blank" rel="nofollow">巴厘岛</a>
<a href="http://www.tuniu.com/guide/d-yazhuangshi-784198/" target="_blank" rel="nofollow">芽庄</a>
<a href="http://www.tuniu.com/guide/d-sililanka-3920/?pcat=92" target="_blank" rel="nofollow">斯里兰卡</a>
<a href="http://www.tuniu.com/guide/d-xinjiapo-3912/" target="_blank" rel="nofollow">新加坡</a>
<a href="http://www.tuniu.com/guide/d-saibandao-786461/" target="_blank" rel="nofollow">塞班</a>					</div>
					
					<!-- 总共8种显示分支 -->
										<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://hz.tuniu.com/dongnanya/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚']);">
									东南亚</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-balidao-784812/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_1-巴厘岛']);">
										巴厘岛</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-xinjiapo-3912/?pcat=30" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_2-新加坡']);">
										新加坡</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-shaba-44378/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_3-沙巴']);">
										沙巴</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-wenlai-3913/?pcat=30" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_4-文莱']);">
										文莱</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-changtandao-784028/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_5-长滩岛']);">
										长滩岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-jilongpo-44331/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_6-吉隆坡']);">
										吉隆坡</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-saibandao-786461/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_7-塞班岛']);">
										塞班岛</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-jianpuzhai-3908/?pcat=30" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_8-柬埔寨']);">
										柬埔寨</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-malaixiya-3911/?pcat=30" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_9-马来西亚']);">
										马来西亚</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-yuenan-3906/?pcat=30" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_10-越南']);">
										越南</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-xialongwan-4283/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_11-下龙湾']);">
										下龙湾</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-yazhuangshi-784198/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_12-芽庄']);">
										芽庄</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-bincheng-44297/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_13-槟城']);">
										槟城</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-wugeku-66/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_14-吴哥窟']);">
										吴哥窟</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-suwu-22786/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_15-宿雾']);">
										宿雾</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-feilvbin-3914/?pcat=30" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_16-菲律宾']);">
										菲律宾</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-laowo-3907/?pcat=30" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_17-老挝']);">
										老挝</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-miandian-3909/?pcat=30" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_18-缅甸']);">
										缅甸</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-kundao-786211/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_19-昆岛']);">
										昆岛</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-fuluojiaoyi-44313/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_20-兰卡威']);">
										兰卡威</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-fuguodao-786596/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_21-富国岛']);">
										富国岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xiangang-784180/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_22-岘港']);">
										岘港</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-palao-4113/?pcat=30" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_23-帕劳群岛']);">
										帕劳群岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-bohe-786897/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_24-薄荷岛']);">
										薄荷岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-dumageteshi-1791939/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_25-杜马格特']);">
										杜马格特</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-xihanukegang-39337/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_26-西哈努克港']);">
										西哈努克港</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-ximishayan-784027/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_1-东南亚_27-西米沙鄢']);">
										西米沙鄢</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c1310-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_1-新加坡+民丹岛_']);">
										新加坡+民丹岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c21-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_2-沙巴一地_']);">
										沙巴一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c1173-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_3-宿雾薄荷_']);">
										宿雾薄荷</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c400-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_4-文莱+沙巴_']);">
										文莱+沙巴</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c4121-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_5-新加坡一地_']);">
										新加坡一地</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c398-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_6-新加坡+马来西亚_']);">
										新加坡+马来西亚</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c24-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_7-吉隆坡一地_']);">
										吉隆坡一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c397-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_8-兰卡威一地_']);">
										兰卡威一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c4964-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_9-新加坡+圣淘沙_']);">
										新加坡+圣淘沙</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/dongnanya/whole-hz-0/list-c66-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_10-马尔代夫+新加坡_']);">
										马尔代夫+新加坡</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://www.tuniu.com/guide/d-taiguo-3910/?pcat=28" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国']);">
									泰国</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/v-pujidao-5896/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_1-普吉岛']);">
										普吉岛</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-qingmaishi-784710/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_2-清迈']);">
										清迈</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-mangu-45398/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_3-曼谷']);">
										曼谷</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-jiami-45385/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_4-甲米']);">
										甲米</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/v-sumeidao-5897/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_5-苏梅岛']);">
										苏梅岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-huangdidao-47391/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_6-皇帝岛']);">
										皇帝岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-shameidao-7357/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_7-沙美岛']);">
										沙美岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-huaxin-784593/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_8-华欣']);">
										华欣</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-smld-1996011/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_9-斯米兰岛']);">
										斯米兰岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xiangdao-1792199/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_2-泰国_10-象岛']);">
										象岛</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g3910/whole-hz-0/list-c407-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_1-曼谷+芭提雅_']);">
										曼谷+芭提雅</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3910/whole-hz-0/list-c410-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_2-曼谷+芭提雅+清迈_']);">
										曼谷+芭提雅+清迈</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3910/whole-hz-0/list-c415-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_3-曼谷+苏梅岛_']);">
										曼谷+苏梅岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3910/whole-hz-0/list-c1308-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_4-普吉岛+甲米_']);">
										普吉岛+甲米</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3910/whole-hz-0/list-c417-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_5-清迈一地_']);">
										清迈一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g3910/whole-hz-0/list-c411-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_6-曼谷+芭提雅+普吉岛_']);">
										曼谷+芭提雅+普吉岛</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g3910/whole-hz-0/list-c33-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_7-普吉岛+PP岛_']);">
										普吉岛+PP岛</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://hz.tuniu.com/nanya/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_3-南亚']);">
									南亚</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/guide/d-budan-3917/?pcat=92" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_3-南亚_1-不丹']);">
										不丹</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-niboer-3948/?pcat=92" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_3-南亚_2-尼泊尔']);">
										尼泊尔</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-sililanka-3920/?pcat=92" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_3-南亚_3-斯里兰卡']);">
										斯里兰卡</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-yindu-3919/?pcat=92" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_3-南亚_4-印度']);">
										印度</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/nanya/whole-hz-0/list-c5104-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_1-印度+不丹_']);">
										印度+不丹</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/nanya/whole-hz-0/list-c5101-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_2-印度+尼泊尔_']);">
										印度+尼泊尔</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/nanya/whole-hz-0/list-c5109-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_3-斯里兰卡海滨之旅_']);">
										斯里兰卡海滨之旅</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/nanya/whole-hz-0/list-c5111-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_4-斯里兰卡火车之旅_']);">
										斯里兰卡火车之旅</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/nanya/whole-hz-0/list-c5110-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_5-斯里兰卡茶园之旅_']);">
										斯里兰卡茶园之旅</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/nanya/whole-hz-0/list-c68-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_6-马尔代夫+斯里兰卡_']);">
										马尔代夫+斯里兰卡</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://hz.tuniu.com/mwAsia/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_4-中西亚']);">
									中西亚</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/guide/d-hasakesitan-3921/?pcat=8328" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_4-中西亚_1-哈萨克斯坦']);">
										哈萨克斯坦</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-yameiniya-3949/?pcat=8328" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_4-中西亚_2-亚美尼亚']);">
										亚美尼亚</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-asaibaijiang-3928/?pcat=8328" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_4-中西亚_3-阿塞拜疆']);">
										阿塞拜疆</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-gelujiya-3927/?pcat=8328" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_4-中西亚_4-格鲁吉亚']);">
										格鲁吉亚</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/mwAsia/whole-hz-0/list-c5861-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_1-中亚连线_']);">
										中亚连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/mwAsia/whole-hz-0/list-c5862-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_2-哈萨克斯坦一地_']);">
										哈萨克斯坦一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/mwAsia/whole-hz-0/list-c5860-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat6_热门玩法_3-西亚连线_']);">
										西亚连线</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<!-- 处理背景图 -->
								 	</div>
			    <!-- league_intro E -->
			    <!-- c_t_adv S 右侧广告 -->
				<div class="c_t_adv">
					<a class="pic" href="http://www.tuniu.com/theme/xinhangjiaqi/"><img src="picture/dny_xhjq.jpg"></img></a>
<a class="pic" href="http://super.tuniu.com/"><img src="picture/gn_6.jpg"></img></a>
<a class="pic" href="http://mkk.tuniu.com/qqg/singapore"><img src="picture/cii-vvne-o-iazgbaacspuozlb0aacf8wd31vqaaky965.jpeg"></img></a>
<a class="pic" href="http://yanxuan.tuniu.com/"><img src="picture/dny_1.jpeg"></img></a>				</div>
			    <!-- c_t_adv E -->
			</div>
						<div class="J_CatalogSection catalog_third_section clearfix tn_none" data-value="cat7">
				<div class="c_t_league">
			    	<!-- 热词 -->
										<div class="league_tag">
						<a href="http://www.tuniu.com/guide/v-dishinileyuan-824/" target="_blank" rel="nofollow">香港迪士尼乐园</a>
<a href="http://www.tuniu.com/guide/d-xianggang-1302/" target="_blank" rel="nofollow">香港岛</a>
<a href="http://www.tuniu.com/guide/d-taibei-2902/" target="_blank" rel="nofollow">台北</a>					</div>
					
					<!-- 总共8种显示分支 -->
										<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://hz.tuniu.com/gangao/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_1-港澳']);">
									港澳</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/v-dishinileyuan-824/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_1-港澳_1-香港迪士尼乐园']);">
										香港迪士尼乐园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xianggang-1300/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_1-港澳_2-香港']);">
										香港</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-haiyanggongyuan-882/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_1-港澳_3-海洋公园']);">
										海洋公园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-aomen-2002/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_1-港澳_4-澳门']);">
										澳门</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xinjie-1304/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_1-港澳_5-新界']);">
										新界</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-qwq-1926276/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_1-港澳_6-荃湾区']);">
										荃湾区</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-dtq-1926281/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_1-港澳_7-大堂区']);">
										大堂区</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/gangao/whole-hz-0/list-c96-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_1-香港一地_']);">
										香港一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/gangao/whole-hz-0/list-c319-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_2-澳门一地_']);">
										澳门一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/gangao/whole-hz-0/list-c38-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_3-港澳两地_']);">
										港澳两地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/gangao/whole-hz-0/list-c5200-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_4-港澳两地+香港迪士尼乐园+海洋公园_']);">
										港澳两地+香港迪士尼乐园+海洋公园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/gangao/whole-hz-0/list-c315-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_5-香港一地(往返直飞)_']);">
										香港一地(往返直飞)</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/gangao/whole-hz-0/list-c5211-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_6-港澳两地(港进港出)_']);">
										港澳两地(港进港出)</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/gangao/whole-hz-0/list-c316-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_7-香港一地(深圳进出)_']);">
										香港一地(深圳进出)</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/gangao/whole-hz-0/list-c5212-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_8-港澳两地(深圳进出)_']);">
										港澳两地(深圳进出)</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/gangao/whole-hz-0/list-c69-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_9-马尔代夫+香港_']);">
										马尔代夫+香港</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://www.tuniu.com/guide/d-taiwan-2900/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾']);">
									台湾</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/guide/v-taibeigugongbowuguan-1173424/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_1-台北故宫博物馆']);">
										台北故宫博物馆</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-riyuetan-158/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_2-日月潭']);">
										日月潭</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-alishan-3179/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_3-阿里山']);">
										阿里山</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-dalou-3175/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_4-101大楼']);">
										101大楼</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-kendingguojiagongyuan-18926/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_5-垦丁国家公园']);">
										垦丁国家公园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-danshuilaojie-1169433/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_6-淡水老街']);">
										淡水老街</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-zhongzhengjiniantang-19429/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_7-中正纪念堂']);">
										中正纪念堂</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-taibei-2902/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_8-台北']);">
										台北</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-kengding-1792149/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_9-垦丁']);">
										垦丁</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-tailugegongyuan-385/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_10-太鲁阁公园']);">
										太鲁阁公园</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/v-qingjingnongchang-14668/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_11-清境农场']);">
										清境农场</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-yeliudizhigongyuan-35650/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_12-野柳地质公园']);">
										野柳地质公园</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-jiufen-19147/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_13-九份']);">
										九份</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-beitouwenquan-5158/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_14-北投温泉']);">
										北投温泉</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-hualianxian-2914/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_15-花莲']);">
										花莲</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-gaoxiong-2906/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_2-台湾_16-高雄']);">
										高雄</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g2900/whole-hz-0/list-c904-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_1-台湾环岛_']);">
										台湾环岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g2900/whole-hz-0/list-c1555-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_2-东台湾(宜兰/花莲太鲁阁/知本温泉)_']);">
										东台湾(宜兰/花莲太鲁阁/知本温泉)</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g2900/whole-hz-0/list-c1558-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_3-台北+高雄+垦丁_']);">
										台北+高雄+垦丁</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g2900/whole-hz-0/list-c1556-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_4-中台湾(阿里山/日月潭/清境农场)_']);">
										中台湾(阿里山/日月潭/清境农场)</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g2900/whole-hz-0/list-c906-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_5-台北+高雄_']);">
										台北+高雄</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g2900/whole-hz-0/list-c905-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_6-台北+花莲_']);">
										台北+花莲</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/g2900/whole-hz-0/list-c1557-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_7-台北一地_']);">
										台北一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g2900/whole-hz-0/list-c1747-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_8-台湾+香港_']);">
										台湾+香港</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/g2900/whole-hz-0/list-c1562-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat7_热门玩法_9-高雄+垦丁_']);">
										高雄+垦丁</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<!-- 处理背景图 -->
								 	</div>
			    <!-- league_intro E -->
			    <!-- c_t_adv S 右侧广告 -->
				<div class="c_t_adv">
					<a class="pic" href="http://img.tuniucdn.com/zt/dishini2017/page1.html"><img src="picture/cii_j1m2zxuifcvyaac-_-wu-g0aabf7wgrmuuaal8x38.jpeg"></img></a>
<a class="pic" href="http://menpiao.tuniu.com/t_301"><img src="picture/cii_j1nmpxoiuybnaacy9jup2yyaabsvgilmveaalmm32.jpeg"></img></a>				</div>
			    <!-- c_t_adv E -->
			</div>
						<div class="J_CatalogSection catalog_third_section clearfix tn_none" data-value="cat9">
				<div class="c_t_league">
			    	<!-- 热词 -->
										<div class="league_tag">
						<a href="http://www.tuniu.com/guide/d-aiji-4002/?pcat=170" target="_blank" rel="nofollow">埃及</a>
<a href="http://www.tuniu.com/guide/d-dibai-42838/" target="_blank" rel="nofollow">迪拜</a>
<a href="http://www.tuniu.com/guide/d-tuerqi-3946/?pcat=170" target="_blank" rel="nofollow">土耳其</a>
<a href="http://www.tuniu.com/guide/d-nanfei-4054/?pcat=170" target="_blank" rel="nofollow">南非</a>
<a href="http://www.tuniu.com/guide/d-aodaliya-4102/?pcat=131" target="_blank" rel="nofollow">澳大利亚</a>
<a href="http://www.tuniu.com/guide/d-xinxilan-4103/?pcat=131" target="_blank" rel="nofollow">新西兰</a>
<a href="http://www.tuniu.com/guide/d-kaiensi-42953/" target="_blank" rel="nofollow">凯恩斯</a>
<a href="http://www.tuniu.com/guide/d-feiji-4108/#cat_7480" target="_blank" rel="nofollow">斐济</a>
<a href="http://www.tuniu.com/guide/d-maoliqiusi-4049/#cat_7480" target="_blank" rel="nofollow">毛里求斯</a>					</div>
					
					<!-- 总共8种显示分支 -->
										<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://hz.tuniu.com/aozhou/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲']);">
									澳洲</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-aodaliya-4102/?pcat=131" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_1-澳大利亚']);">
										澳大利亚</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-xinxilan-4103/?pcat=131" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_2-新西兰']);">
										新西兰</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-xini-42985/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_3-悉尼']);">
										悉尼</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-kaiensi-42953/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_4-凯恩斯']);">
										凯恩斯</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-huanghouzhen-784252/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_5-皇后镇']);">
										皇后镇</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-moerben-42973/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_6-墨尔本']);">
										墨尔本</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-huangjinhaian-42952/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_7-黄金海岸']);">
										黄金海岸</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-bulisiban-42951/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_8-布里斯班']);">
										布里斯班</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-luotuoluwa-7317/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_9-罗托鲁瓦']);">
										罗托鲁瓦</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-fukesibingchuan-33991/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_10-福克斯冰川']);">
										福克斯冰川</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-wanuatu-4106/?pcat=131" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_11-瓦努阿图']);">
										瓦努阿图</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-jiducheng-786685/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_12-基督城']);">
										基督城</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-aokelan-1742970/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_1-澳洲_13-奥克兰']);">
										奥克兰</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/aozhou/whole-hz-0/list-c110-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_1-新西兰南北岛_']);">
										新西兰南北岛</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/aozhou/whole-hz-0/list-c4952-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_2-新西兰南北岛纯玩_']);">
										新西兰南北岛纯玩</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/aozhou/whole-hz-0/list-c2567-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_3-澳大利亚+凯恩斯+新西兰北岛_']);">
										澳大利亚+凯恩斯+新西兰北岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/aozhou/whole-hz-0/list-c1346-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_4-澳大利亚+凯恩斯+墨尔本_']);">
										澳大利亚+凯恩斯+墨尔本</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/aozhou/whole-hz-0/list-c4957-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_5-澳大利亚+凯恩斯+墨尔本纯玩_']);">
										澳大利亚+凯恩斯+墨尔本纯玩</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/aozhou/whole-hz-0/list-c4955-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_6-澳大利亚+凯恩斯+墨尔本+新西兰南北岛_']);">
										澳大利亚+凯恩斯+墨尔本+新西兰南北岛</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/aozhou/whole-hz-0/list-c4956-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_7-澳大利亚+凯恩斯+墨尔本+新西兰南北岛纯玩_']);">
										澳大利亚+凯恩斯+墨尔本+新西兰南北岛纯玩</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/aozhou/whole-hz-0/list-c2630-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_8-悉尼+布里斯班+黄金海岸+墨尔本_']);">
										悉尼+布里斯班+黄金海岸+墨尔本</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://hz.tuniu.com/island/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_2-海岛风情']);">
									海岛风情</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/guide/d-feiji-4108/?pcat=7480" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_2-海岛风情_1-斐济']);">
										斐济</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/v-daxidi-37432/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_2-海岛风情_2-大溪地']);">
										大溪地</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-maoliqiusi-4049/?pcat=7480" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_2-海岛风情_3-毛里求斯']);">
										毛里求斯</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-saisheer-4048/?pcat=7480" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_2-海岛风情_4-塞舌尔']);">
										塞舌尔</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-liuniwangdao-4050/?pcat=7480" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_2-海岛风情_5-留尼汪岛']);">
										留尼汪岛</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/island/whole-hz-0/list-c1978-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_1-毛里求斯一地_']);">
										毛里求斯一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/island/whole-hz-0/list-c134-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_2-毛里求斯+迪拜_']);">
										毛里求斯+迪拜</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/island/whole-hz-0/list-c135-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_3-毛里求斯+留尼汪_']);">
										毛里求斯+留尼汪</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/island/whole-hz-0/list-c4925-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_4-斐济Mamanuca群岛+主岛_']);">
										斐济Mamanuca群岛+主岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/island/whole-hz-0/list-c4927-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_5-斐济Vanua Levu岛+主岛_']);">
										斐济Vanua Levu岛+主岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/island/whole-hz-0/list-c139-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_6-马埃岛一地_']);">
										马埃岛一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/island/whole-hz-0/list-c140-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_7-马埃岛+普拉兰岛_']);">
										马埃岛+普拉兰岛</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/island/whole-hz-0/list-c4421-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_8-马埃岛博瓦隆海滩_']);">
										马埃岛博瓦隆海滩</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<div class="league_intro clearfix">
				    	<div class="league_row_org clearfix">
				            <div class="league_title">
				                <span class="line"></span>
				                <a href="http://hz.tuniu.com/feizhou/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲']);">
									中东非洲</a>
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-dibai-42838/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_1-迪拜']);">
										迪拜</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-nanfei-4054/?pcat=170" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_2-南非']);">
										南非</a>
				                </em>
				                				                <em>
				                    <a class="a_hot" href="http://www.tuniu.com/guide/d-tuerqi-3946/?pcat=170" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_3-土耳其']);">
										土耳其</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-aiji-4002/?pcat=170" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_4-埃及']);">
										埃及</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-yiselie-3944/?pcat=170" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_5-以色列']);">
										以色列</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-kenniya-4020/?pcat=170" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_6-肯尼亚']);">
										肯尼亚</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-moluoge-4006/?pcat=170" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_7-摩洛哥']);">
										摩洛哥</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-tunisi-4004/?pcat=170" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_8-突尼斯']);">
										突尼斯</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-yilang-3931/?pcat=170" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_9-伊朗']);">
										伊朗</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-tansangniya-4022/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_10-坦桑尼亚']);">
										坦桑尼亚</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-madajiasijia-4047/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_11-马达加斯加']);">
										马达加斯加</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/guide/d-hayimajiaoqiuzhangguo-1810100/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_3-中东非洲_12-拉斯海马酋长国']);">
										拉斯海马酋长国</a>
				                </em>
				                				            </div>
				            				            <div class="league_title">
				                	热门玩法
				            </div>
				            <div class="league_item clearfix">
				            					                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c425-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_1-埃及+迪拜_']);">
										埃及+迪拜</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c2419-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_2-埃及全景_']);">
										埃及全景</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c433-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_3-埃及游轮_']);">
										埃及游轮</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c442-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_4-南非一地_']);">
										南非一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c2611-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_5-迪拜4星住宿_']);">
										迪拜4星住宿</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c2612-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_6-迪拜5星住宿_']);">
										迪拜5星住宿</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c426-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_7-南非+迪拜_']);">
										南非+迪拜</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c438-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_8-迪拜678星用餐_']);">
										迪拜678星用餐</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c436-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_9-迪拜七星帆船住宿_']);">
										迪拜七星帆船住宿</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c469-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_10-以色列+约旦_']);">
										以色列+约旦</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c468-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_11-以色列一地_']);">
										以色列一地</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c2420-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_12-南非连线_']);">
										南非连线</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c445-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_13-土耳其深度_']);">
										土耳其深度</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c444-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_14-土耳其全景_']);">
										土耳其全景</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c424-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_15-埃及+土耳其_']);">
										埃及+土耳其</a>
				                </em>
				                				                <em>
				                    <a  href="http://www.tuniu.com/feizhou/whole-hz-0/list-c67-h0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','分类目录-旅游度假_cat9_热门玩法_16-马尔代夫+迪拜_']);">
										马尔代夫+迪拜</a>
				                </em>
				                				            </div>
				            				        </div>
				    </div>
											<!-- 处理背景图 -->
								 	</div>
			    <!-- league_intro E -->
			    <!-- c_t_adv S 右侧广告 -->
				<div class="c_t_adv">
					<a class="pic" href="http://www.tuniu.com/zt/xinxilan/"><img src="picture/cii_llmbcb-ip62oaab1ixedvqkaagboqj6fxkaahu510.jpeg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/yinianfeiji/"><img src="picture/cii9evkugl-if_ebaacbw29atmwaakjoqe-jpmaajtz93.jpeg"></img></a>
<a class="pic" href="http://www.tuniu.com/szt/xmgjbzj/"><img src="picture/cii_lllkxygixj_saadxqukjwv4aadolqj6y_0aanfb219.png"></img></a>				</div>
			    <!-- c_t_adv E -->
			</div>
			
		</div>

		<!-- 查询条件二级导航 -->
		<div class="J_CatalogRegular catalog_regular tn_none">
			<a class="J_catalogClose catalog_close catalog_icon"></a>
			<div class="diy_search_form">
				<!-- 超级自由行二级菜单 -->
				<!--package S-->
								<div class="J_SearchPackage search_group search_pkg tn_mt10 tn_none">
					<!--出发城市+出发时间-->
					<div class="search_row">
						<!--出发城市-->
						<div class="search_pkg_depart">
							<div class="J_DepartCity search_ctrl search_ctrl_inp search_ctrl_city">
								<div class="search_ctrl_inp_label">出发地&nbsp;|&nbsp;</div>
								<input  class="search_ctrl_inp_input search_ctrl_inp_in" name="depart" type="text" autocomplete="off">
							</div>
						</div>
						<!--出发时间-->
						<div class="search_pkg_start">
							<div class="J_DepartDate search_ctrl search_ctrl_inp search_ctrl_city">
								<div class="search_ctrl_inp_label">出发时间&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder"></div>
								<input class="search_ctrl_inp_input" name="" type="text" value="" readonly="">
							</div>
						</div>
					</div>
					<!--目的地-->
					<div class="J_SearchDestGroup search_pkg_dests">
						<div class="J_SearchDestRow search_pkg_dest">
							<!--目的地-->
							<div class="J_SearchCity search_ctrl search_ctrl_inp search_ctrl_city">
								<div class="search_ctrl_inp_label">目的地&nbsp;|&nbsp;</div>
								<input  class="search_ctrl_inp_input search_ctrl_in" name="" type="text" autocomplete="off">
							</div>
							<div class="search_pkg_dest_date">2016-01-06<span>至</span>2016-01-08</div>
							<!--天数选择-->
							<div class="J_SearchNumber search_ctrl search_number">
								<a href="javascript:;" class="search_number_btn search_number_minus">
									<i class="search_number_btn_icon">-</i>
								</a>
								<a href="javascript:;" class="search_number_btn search_number_plus">
									<i class="search_number_btn_icon">+</i>
								</a>
								<input class="search_number_input" type="text" value="3天">
							</div>
							<div class="search_dest_delete search_row_delete">
								<i class="search_icon icon_search_delete"></i>
							</div>
						</div>
					</div>

					<!--人数选择-->
					<div class="J_SearchStuffRow search_row">
						<!--成人-->
						<div class="search_pkg_adult">
							<div class="J_SearchAdult search_ctrl search_ctrl_select">
								<div class="search_ctrl_select_placeholder">成人</div>
								<div class="search_ctrl_select_btn">
									<i class="search_ctrl_select_arrow"></i>
								</div>
								<input class="search_ctrl_select_input" readonly="">
							</div>
						</div>
						<!--儿童-->
						<div class="search_pkg_child">
							<div class="J_SearchChild search_ctrl search_ctrl_select">
								<div class="search_ctrl_select_placeholder">儿童（2~12周岁）</div>
								<div class="search_ctrl_select_btn">
									<i class="search_ctrl_select_arrow"></i>
								</div>
								<input class="search_ctrl_select_input" readonly="">
								<div class="search_ctrl_select_options" style="display: none;">
									<a class="search_ctrl_select_option" data-value="0" href="javascript:;">0</a>
								</div>
							</div>
						</div>
						<!--submit-->
						<div class="J_SearchSubmit search_ctrl search_submit search_pkg_submit">
							<a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_{hz}','点击','分类目录-超级自由行_开始查找___']);">搜索</a>
						</div>
					</div>

					<!-- 下方分类 -->
					
					<div class="J_PackageLeague league_column tn_mt20">
						<div class="league_title">
							<span class="line"></span>热门目的地						</div>
						<div class="league_item">
														<em>
								<a class="a_hot" href="http://super.tuniu.com/pkg/0/906-5/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_1-三亚__'])">三亚</a>
							</em>
														<em>
								<a class="a_hot" href="http://super.tuniu.com/pkg/0/414-4/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_2-厦门__'])">厦门</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/1300-4/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_3-香港__'])">香港</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/3312-4/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_4-丽江__'])">丽江</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/2802-4/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_5-成都__'])">成都</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/3306-4/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_6-大理__'])">大理</a>
							</em>
														<em>
								<a class="a_hot" href="http://super.tuniu.com/pkg/0/785093-6/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_7-普吉__'])">普吉</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/1906-4/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_8-大连__'])">大连</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/1102-5/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_9-哈尔滨__'])">哈尔滨</a>
							</em>
														<em>
								<a class="a_hot" href="http://super.tuniu.com/pkg/0/45103-5/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_10-东京__'])">东京</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/45398-6/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_11-曼谷__'])">曼谷</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/1804-5/0/2-0/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_12-白山__'])">白山</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/784812-6/0/2-0-1/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_13-巴厘岛__'])">巴厘岛</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/4049-6/0/2-0-1/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_14-毛里求斯__'])">毛里求斯</a>
							</em>
														<em>
								<a  href="http://super.tuniu.com/pkg/0/784018-5/0/2-0-1/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门目的地_15-大阪__'])">大阪</a>
							</em>
													</div>
					</div>

										<div class="J_PackageLeague league_bottom">
						<a href="http://super.tuniu.com/" target="_blank" rel="nofollow"><img src="picture/cjzyx.jpg" alt=""></a>                    </div>
					
					<div class="J_PackageLeague league_column tn_mt30">
						<div class="league_title">
							<span class="line"></span>热门玩法						</div>
						<div class="league_item">
														<em>
								<a  href="http://www.tuniu.com/journey/64" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门玩法_1-三亚亚龙湾热带天堂 4日精华游__'])">三亚亚龙湾热带天堂 4日精华游</a>
							</em>
														<em>
								<a  href="http://www.tuniu.com/journey/1668" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门玩法_2-日本伏见稻荷朱红色 6日古都游__'])">日本伏见稻荷朱红色 6日古都游</a>
							</em>
														<em>
								<a  href="http://www.tuniu.com/journey/1690" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门玩法_3-法瑞意威尼斯文艺复兴 13日经典游__'])">法瑞意威尼斯文艺复兴 13日经典游</a>
							</em>
														<em>
								<a  href="http://www.tuniu.com/journey/273" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-超级自由行_热门玩法_4-巴厘岛梦幻海滩分享甜蜜 5日蜜月游__'])">巴厘岛梦幻海滩分享甜蜜 5日蜜月游</a>
							</em>
													</div>
					</div>

										<div class="J_PackageLeague league_bottom">
						<a href="http://super.tuniu.com/" target="_blank" rel="nofollow"><img src="picture/cjzyx.jpg" alt=""></a>                    </div>
									</div>
								<!--package E-->

				<!-- 机票二级菜单 -->
				<!--flight S-->
								<div class="J_SearchFlight search_group search_flight tn_none">
					<div class="search_switch J_SearchSwitch tn_none">
						<a href="javascript:;" class="switch_btn switch_selected" data-value="internal" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-机票_Tab_国内机票'])">国内机票</a>
						<a href="javascript:;" class="switch_btn" data-value="international" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-机票_Tab_国际机票'])">国际机票</a>
					</div>
					<!-- 暂时只展示国内 -->
					<!--departure & dest-->
					<div class="J_InternalFlight tn_none">
						<!-- 单程返程 -->
						<div class="search_switch_type J_SearchSwitchRadio">
							<ul>
								<li>
									<label class="tn_switch" data-value="single">
										<i class="radio_icon catalog_icon"></i>
										<span class="radio_text">单程</span>
									</label>
								</li>
								<li>
									<label class="" data-value="round">
										<i class="radio_icon catalog_icon"></i>
										<span class="radio_text">往返</span>
									</label>
								</li>
							</ul>
						</div>
						<!-- 出发地目的地 往返 -->
						<div class="J_SearchCitiesRow search_row ">
							<!--input-->
							<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_flight_depart">
								<div class="search_ctrl_inp_label">出发地&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_holder">请填写出发地</div>
								<input  class="search_ctrl_inp_input search_flight_in" name="" type="text">
							</div>
							<div class="J_SearchChange search_ctrl search_flight_change">
								<i class="icon_search_change catalog_icon"></i>
							</div>
							<!--input-->
							<div class="J_SearchDest search_ctrl search_ctrl_inp search_ctrl_city search_flight_dest">
								<div class="search_ctrl_inp_label">目的地&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_holder">请填写目的地</div>
								<input  class="search_ctrl_inp_input search_flight_in" name="" type="text">
							</div>
						</div>
						<!--start & end 出发返回时间 -->
						<div class="J_SearchDateRow search_row ">
							<div class="J_SearchStart search_ctrl search_ctrl_inp search_ctrl_city search_flight_start">
								<div class="search_ctrl_inp_label">出发&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder">周四</div>
								<input class="search_ctrl_inp_input" name="" type="text" value="2015-08-31">
							</div>
							<div class="J_SearchEnd search_ctrl search_ctrl_inp search_ctrl_city search_flight_end">
								<div class="search_ctrl_inp_label">返回&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder">周四</div>
								<input class="search_ctrl_inp_input" name="" type="text" value="2015-08-31">
							</div>
						</div>

						<!--depart & dest & date 单程 -->
						<div class="J_SearchSingle search_rows">
							<div class="search_row">
								<div class="J_SearchCities search_city_group">
									<!--input-->
									<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_flight_depart">
										<div class="search_ctrl_inp_label">出发地&nbsp;|&nbsp;</div>
										<div class="search_ctrl_inp_placeholder search_holder">请填写出发地</div>
										<input  class="search_ctrl_inp_input search_flight_in" name="" type="text"/>
									</div>
									<div class="J_SearchChange search_ctrl search_flight_single_change">
										<i class="icon_search_change catalog_icon"></i>
									</div>
									<!--input-->
									<div class="J_SearchDest search_ctrl search_ctrl_inp search_ctrl_city search_flight_dest">
										<div class="search_ctrl_inp_label">目的地&nbsp;|&nbsp;</div>
										<div class="search_ctrl_inp_placeholder search_holder">请填写目的地</div>
										<input  class="search_ctrl_inp_input search_flight_in" name="" type="text"/>
									</div>
								</div>
								<div class="J_SearchDate search_ctrl search_ctrl_inp search_ctrl_city search_flight_start">
									<div class="search_ctrl_inp_label">出发&nbsp;|&nbsp;</div>
									<div class="search_ctrl_inp_placeholder">周四</div>
									<input class="search_ctrl_inp_input" name="" type="text" value="2015-08-31">
								</div>
							</div>
						</div>

						<!--人数选择-->
						<div class="J_SearchStuffRow search_row">
							<!--成人-->
							<div class="search_flight_adult">
								<div class="J_SearchAdult search_ctrl search_ctrl_select search_ctrl_select_expanded">
									<div class="search_ctrl_select_placeholder">成人</div>
									<div class="search_ctrl_select_btn">
										<i class="search_ctrl_select_arrow"></i>
									</div>
									<input class="search_ctrl_select_input">
								</div>
							</div>
							<!--儿童-->
							<div class="search_flight_child">
								<div class="J_SearchChild search_ctrl search_ctrl_select">
									<div class="search_ctrl_select_placeholder">儿童（2~12周岁）</div>
									<div class="search_ctrl_select_btn">
										<i class="search_ctrl_select_arrow"></i>
									</div>
									<input class="search_ctrl_select_input">
								</div>
							</div>
							<!--submit-->
							<div class="J_SearchSubmit search_ctrl search_submit search_flight_submit">
								<a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-机票_国内机票_开始查找__'])">搜索</a>
							</div>
						</div>
												<div class="J_FlightLeague league_adv_img">
						<a href="http://www.tuniu.com/szt/indiscountflight/?p=26268" target="_blank" rel="nofollow">
                                        <img src="picture/cii-vvnpxy-if_nyaachydogmrmaabxpgf981aaaid553.jpeg" alt="" title="">
                                    </a>						</div>
												<div class="J_FlightLeague league_bottom" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-机票_更多特价机票__'])">
						<a href="http://www.tuniu.com/flight/" target="_blank" rel="nofollow"><img src="picture/jipiao.jpg" alt=""></a>	                    </div>
											</div>
					<!-- international S -->
					<div class="J_InternationalFlight tn_none">
                        <div class="search_switch_type J_SearchSwitchRadio">
                            <ul>
                                <li>
                                    <label class="tn_switch" data-value="single">
                                        <i class="radio_icon catalog_icon"></i>
                                        <span class="radio_text">单程</span>
                                    </label>
                                </li>
                                <li>
                                    <label class="" data-value="round">
                                        <i class="radio_icon catalog_icon"></i>
                                        <span class="radio_text">往返</span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                        <div class="J_SearchCitiesRow search_row ">
                            <!--input-->
                            <div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_flight_depart">
                                <div class="search_ctrl_inp_label">出发地&nbsp;|&nbsp;</div>
                                <div class="search_ctrl_inp_placeholder search_holder">请填写出发地</div>
                                <input onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录n-机票_国际机票_出发地_选择框_杭州'])" class="search_ctrl_inp_input search_flight_in" name="" type="text">
                            </div>
                            <div class="J_SearchChange search_ctrl search_flight_change">
                                <i class="icon_search_change catalog_icon"></i>
                            </div>
                            <!--input-->
                            <div class="J_SearchDest search_ctrl search_ctrl_inp search_ctrl_city search_flight_dest">
                                <div class="search_ctrl_inp_label">目的地&nbsp;|&nbsp;</div>
                                <div class="search_ctrl_inp_placeholder search_holder">请填写目的地</div>
                                <input onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录n-机票_国际机票_目的地_选择框_杭州'])" class="search_ctrl_inp_input search_flight_in" name="" type="text">
                            </div>
                        </div>
                        <!--start & end-->
                        <div class="J_SearchDateRow search_row">
                            <div class="J_SearchStart search_ctrl search_ctrl_inp search_ctrl_city search_flight_start">
                                <div class="search_ctrl_inp_label">出发&nbsp;|&nbsp;</div>
                                <div class="search_ctrl_inp_placeholder">周四</div>
                                <input class="search_ctrl_inp_input" name="" type="text" value="2015-08-31">
                            </div>
                            <div class="J_SearchEnd search_ctrl search_ctrl_inp search_ctrl_city search_flight_end">
                                <div class="search_ctrl_inp_label">返回&nbsp;|&nbsp;</div>
                                <div class="search_ctrl_inp_placeholder">周四</div>
                                <input class="search_ctrl_inp_input" name="" type="text" value="2015-08-31">
                            </div>
                        </div>
                        <!--depart & dest & date-->
                        <div class="J_SearchSingle search_rows tn_none">
                            <div class="search_row">
                                <div class="J_SearchCities search_city_group">
                                    <!--input-->
                                    <div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_flight_depart">
                                        <div class="search_ctrl_inp_label">出发地&nbsp;|&nbsp;</div>
                                        <div class="search_ctrl_inp_placeholder search_holder">请填写出发地</div>
                                        <input class="search_ctrl_inp_input search_flight_in" name="" type="text"/>
                                    </div>
                                    <div class="J_SearchChange search_ctrl search_flight_single_change">
                                        <i class="icon_search_change catalog_icon"></i>
                                    </div>
                                    <!--input-->
                                    <div class="J_SearchDest search_ctrl search_ctrl_inp search_ctrl_city search_flight_dest">
                                        <div class="search_ctrl_inp_label">目的地&nbsp;|&nbsp;</div>
                                        <div class="search_ctrl_inp_placeholder search_holder">请填写目的地</div>
                                        <input class="search_ctrl_inp_input search_flight_in" name="" type="text"/>
                                    </div>
                                </div>
                                <div class="J_SearchDate search_ctrl search_ctrl_inp search_ctrl_city search_flight_start">
                                    <div class="search_ctrl_inp_label">出发&nbsp;|&nbsp;</div>
                                    <div class="search_ctrl_inp_placeholder">周四</div>
                                    <input class="search_ctrl_inp_input" name="" type="text" value="2015-08-31">
                                </div>
                            </div>
                        </div>
                        <!--人数选择-->
                        <div class="J_SearchStuffRow search_row">
                            <!--成人-->
                            <div class="search_flight_adult">
                                <div class="J_SearchAdult search_ctrl search_ctrl_select search_ctrl_select_expanded">
                                    <div class="search_ctrl_select_placeholder">成人</div>
                                    <div class="search_ctrl_select_btn">
                                        <i class="search_ctrl_select_arrow"></i>
                                    </div>
                                    <input class="search_ctrl_select_input">
                                </div>
                            </div>
                            <!--儿童-->
                            <div class="search_flight_child">
                                <div class="J_SearchChild search_ctrl search_ctrl_select">
                                    <div class="search_ctrl_select_placeholder">儿童（2~12周岁）</div>
                                    <div class="search_ctrl_select_btn">
                                        <i class="search_ctrl_select_arrow"></i>
                                    </div>
                                    <input class="search_ctrl_select_input">
                                </div>
                            </div>
                            <!--submit-->
                            <div class="J_SearchSubmit search_ctrl search_submit search_flight_submit">
                                <a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-机票_国际机票_开始查找__'])">搜索</a>
                            </div>
                        </div>
                        						<div class="J_FlightLeague league_adv_img">
						<a href="http://www.tuniu.com/flight/intel/portal/charterFlightList?activityId=29" target="_blank" rel="nofollow">
                                        <img src="picture/cii-t1hjkvmia9yjaagjcddij2saagfxap5dskaaymj910.png" alt="" title="">
                                    </a>						</div>
												<div class="J_FlightLeague league_bottom" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-机票_国际机票'])">
						<a href="http://www.tuniu.com/flight/" target="_blank" rel="nofollow"><img src="picture/jipiao.jpg" alt=""></a>	                    </div>
						                    </div>
					<!-- international E-->
				</div>
								<!--flight E-->

				<!-- 酒店二级菜单 -->
				<!--hotel S-->
								<div class="J_SearchHotel search_group search_hotel tn_none">
					<div class="search_switch J_SearchSwitch tn_none">
						<a href="javascript:;" class="switch_btn switch_selected" data-value="internal" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-酒店_Tab_国内酒店__'])">国内酒店</a>
						<a href="javascript:;" class="switch_btn" data-value="international" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-酒店_Tab_国际酒店__'])">国际酒店</a>
						<a href="javascript:;" class="switch_btn" data-value="hotel-scenery" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-酒店_Tab_酒+景__'])">酒+景</a>
					</div>
					<!-- 国内酒店 -->
					<div class="J_InternalHotel tn_none">
						<!--departure & dest-->
						<div class="J_SearchCitiesRow search_row">
							<!--input-->
							<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_hotel_dest">
								<div class="search_ctrl_inp_label">目的地&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_hotel_holder">请选择目的地</div>
								<input  class="search_ctrl_inp_input search_hotel_in" name="" type="text">
							</div>
							<!--input-->
							<div class="J_SearchKeyWord search_ctrl search_ctrl_inp search_ctrl_city search_hotel_keyword">
								<div class="search_ctrl_inp_label">关键词&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_hotel_holder">酒店名/位置/品牌</div>
								<input class="search_ctrl_inp_input search_hotel_in" name="" type="text">
							</div>
						</div>
						<!--start & end-->
						<div class="J_SearchDateRow search_row">
							<div class="J_SearchStart search_ctrl search_ctrl_inp search_ctrl_city search_hotel_start">
								<div class="search_ctrl_inp_label">入住日期&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder">周四</div>
								<input class="search_ctrl_inp_input search_hotel_inp" name="" type="text"
									   value="2015-08-31">
							</div>
							<div class="J_SearchEnd search_ctrl search_ctrl_inp search_ctrl_city search_hotel_end">
								<div class="search_ctrl_inp_label">离店日期&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder">周四</div>
								<input class="search_ctrl_inp_input search_hotel_inp" name="" type="text"
									   value="2015-08-31">
							</div>
						</div>
						<div class="J_SearchHotelRow search_row">
							<div class="J_SearchSubmit search_ctrl search_submit search_hotel_submit">
								<a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-酒店_国内酒店_开始查找__'])">搜索</a>
							</div>
						</div>
												<div class="J_HotelLeague league_adv_img">
						<a href="http://www.tuniu.com/szt/jdsyznp1011/" target="_blank" rel="nofollow">
                                        <img src="picture/cii-vvnoa0siz-_saab08zm8ckkaacvjqo_1kiaahuj18.jpeg" alt="" title="">
                                    </a>						</div>
												<div class="J_HotelLeague league_bottom">
						<a href="http://hotel.tuniu.com/" target="_blank" rel="nofollow"><img src="picture/jiudian.jpg" alt=""></a>	                    </div>
											</div>
					<!-- 国际酒店 -->
					<div class="J_InternationalHotel tn_none">
						<!--departure & dest-->
						<div class="J_SearchCitiesRow search_row">
							<!--input-->
							<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_hotel_dest">
								<div class="search_ctrl_inp_label">目的地&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_hotel_holder">请选择目的地</div>
								<input  class="search_ctrl_inp_input search_hotel_in" name="" type="text">
							</div>
							<!--input-->
							<div class="J_SearchKeyWord search_ctrl search_ctrl_inp search_ctrl_city search_hotel_keyword">
								<div class="search_ctrl_inp_label">关键词&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_hotel_holder">酒店名/位置/品牌</div>
								<input class="search_ctrl_inp_input search_hotel_in" name="" type="text">
							</div>
						</div>
						<!--start & end-->
						<div class="J_SearchDateRow search_row">
							<div class="J_SearchStart search_ctrl search_ctrl_inp search_ctrl_city search_hotel_start">
								<div class="search_ctrl_inp_label">入住日期&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder">周四</div>
								<input class="search_ctrl_inp_input search_hotel_inp" name="" type="text"
									   value="2015-08-31">
							</div>
							<div class="J_SearchEnd search_ctrl search_ctrl_inp search_ctrl_city search_hotel_end">
								<div class="search_ctrl_inp_label">离店日期&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder">周四</div>
								<input class="search_ctrl_inp_input search_hotel_inp" name="" type="text"
									   value="2015-08-31">
							</div>
						</div>
						<div class="J_SearchHotelRow search_row">
							<div class="J_SearchSubmit search_ctrl search_submit search_hotel_submit">
								<a  href="javascript: ;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-酒店_国际酒店_开始查找__'])">搜索</a>
							</div>
						</div>
												<div class="J_HotelLeague league_adv_img">
						<a href="http://www.tuniu.com/zt/jdsjsdgat170425/" target="_blank" rel="nofollow">
                                        <img src="picture/cii-t1kklxsih5ueaabfhd7pgbqaajmcqp5nbgaaf8188.jpeg" alt="" title="">
                                    </a>						</div>
												<div class="J_HotelLeague league_bottom">
						<a href="http://globalhotel.tuniu.com/" target="_blank" rel="nofollow"><img src="picture/jiudian.jpg" alt=""></a>	                    </div>
											</div>
					<!--酒+景-->
					<div class="J_sceneryHotel tn_none">
						<input type="hidden" value="hz" id="nav_city_letter"/>
						<div class="J_SearchCitiesRow search_row">
							<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_hotel_dest">
								<div class="search_ctrl_inp_label">目的地&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_hotel_holder">请填写目的地</div>
								<input  class="search_ctrl_inp_input search_hotel_in" name="" type="text">
							</div>
						</div>
						<div class="J_SearchDateRow search_row clearfix">
							<div class="J_DepartDate search_ctrl search_ctrl_inp">
								<div class="search_ctrl_inp_label">出发日期&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder"></div>
								<input type="text" readonly="" value="" name="" class="search_ctrl_inp_input">
							</div>
							<div class="J_SearchSubmit search_ctrl search_submit search_hotel_submit">
								<a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-酒店_酒+景_开始查找__'])">搜索</a>
							</div>
						</div>

												<div class="J_HotelLeague league_adv_img">
							<a href="http://www.tuniu.com/szt/changlong/" target="_blank" rel="nofollow">
                                        <img src="picture/cii-vvmvtooixmleaafl4glfso8aaafsqfdmgwaauv694.jpeg" alt="" title="">
                                    </a>						</div>
													<div class="J_HotelLeague league_bottom">
								<a href="http://hotel.tuniu.com/" target="_blank" rel="nofollow"><img src="picture/jiudian.jpg" alt=""></a>							</div>
											</div>
				</div>
								<!--hotel E-->

				<!-- 火车票.汽车票二级菜单 2016-07-14 16:12:41 -->
				<!--train S-->
								<div class="J_SearchTicket search_group search_train tn_none">
					<div class=" J_SearchSwitch search_switch tn_none">
						<a href="javascript:;" class="switch_btn switch_selected" data-value="train" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-火车汽车票_Tab_火车票__'])">火车票</a>
						<a href="javascript:;" class="switch_btn" data-value="bus" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-火车汽车票_Tab_汽车票__'])">汽车票</a>
					</div>
					<!-- 火车票 -->
					<div class="J_Train tn_none">
						<div class="J_SearchSwitchRadio search_switch_type tn_none">
							<ul>
								<li>
									<label class="tn_switch" data-value="domestic">
										<i class="radio_icon catalog_icon"></i>
										<span class="radio_text">国内</span>
									</label>
								</li>
								<!-- <li><label data-value="european"><i class="radio_icon catalog_icon"></i><span class="radio_text">欧铁</span></label></li> -->
							</ul>
							<a class="search_high_rail J_SearchRail">
								<i class="high_icon catalog_icon"></i>
								<span class="only_high">仅搜索 高铁/动车</span>
							</a>
						</div>
						<!--departure & dest-->
						<div class="J_SearchCitiesRow search_row">
							<!--input-->
							<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_train_depart">
								<div class="search_ctrl_inp_label">出发站&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_hotel_holder">请选择出发站</div>
								<input  class="search_ctrl_inp_input search_train_in" name="" type="text">
							</div>
							<div class="J_SearchChange search_ctrl search_flight_change">
								<i class="icon_search_change catalog_icon"></i>
							</div>
							<!--input-->
							<div class="J_SearchDest search_ctrl search_ctrl_inp search_ctrl_city search_train_dest">
								<div class="search_ctrl_inp_label ">到达站&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_hotel_holder">请选择到达站</div>
								<input  class="search_ctrl_inp_input search_train_in" name="" type="text">
							</div>
						</div>
						<!--start & end-->
						<div class="J_SearchDateRow search_row">
							<div class="search_train_start">
								<div class="J_DepartDate search_ctrl search_ctrl_select">
									<div class="search_ctrl_inp_label">出发时间&nbsp;|&nbsp;</div>
									<div class="search_ctrl_inp_placeholder"></div>
									<input class="search_ctrl_inp_input search_train_inp" type="text">
								</div>
							</div>

							<!--submit-->
							<div class="J_SearchSubmit search_ctrl search_submit search_flight_submit">
								<a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-火车票_火车票_开始查找__'])">搜索</a>
							</div>
						</div>
						<div class="J_SearchSingle search_rows tn_none">
							<div class="search_row">
								<div class="J_SearchCities search_city_group">
									<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_train_depart">
										<div class="search_ctrl_inp_label">出发站&nbsp;|&nbsp;</div>
										<input class="search_ctrl_inp_input search_train_in" name="" type="text">
									</div>
									<div class="J_SearchChange search_ctrl search_flight_change">
										<i class="icon_search_change catalog_icon"></i>
									</div>
									<div class="J_SearchDest search_ctrl search_ctrl_inp search_ctrl_city search_train_dest">
										<div class="search_ctrl_inp_label ">到达站&nbsp;|&nbsp;</div>
										<input class="search_ctrl_inp_input search_train_in" name="" type="text">
									</div>
								</div>
								<div class="search_train_start">
									<div class="J_SearchDate search_ctrl search_ctrl_inp search_ctrl_city">
										<div class="search_ctrl_inp_label">出发&nbsp;|&nbsp;</div>
										<div class="search_ctrl_inp_placeholder">周四</div>
										<input class="search_ctrl_inp_input" name="" type="text" value="2015-08-31">
									</div>
								</div>
								<div class="J_SearchSubmit search_ctrl search_submit search_flight_submit">
									<a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-火车汽车票_hz_搜索__火车票'])">搜索</a>
								</div>
							</div>
						</div>
												<div class="J_TrainLeague league_bottom">
						<a href="http://huoche.tuniu.com/" target="_blank" rel="nofollow"><img src="picture/huochepiao.jpg" alt=""></a>	                    </div>
											</div>
					<!-- bus start 汽车票 -->
					<div class="J_Bus tn_none">
                        <!--departure & dest-->
                        <div class="J_SearchCitiesRow search_row">
                            <!--input-->
                            <div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_train_depart">
                                <div class="search_ctrl_inp_label">出发地&nbsp;|&nbsp;</div>
                                <div class="search_ctrl_inp_placeholder search_hotel_holder">请填写出发地</div>
                                <input  class="search_ctrl_inp_input search_train_in" name="" type="text">
                            </div>
                            <div class="J_SearchChange search_ctrl search_flight_change">
                                <i class="icon_search_change catalog_icon"></i>
                            </div>
                            <!--input-->
                            <div class="J_SearchDest search_ctrl search_ctrl_inp search_ctrl_city search_train_dest">
                                <div class="search_ctrl_inp_label ">目的地&nbsp;|&nbsp;</div>
                                <div class="search_ctrl_inp_placeholder search_hotel_holder">请填写目的地</div>
                                <input  class="search_ctrl_inp_input search_train_in" name="" type="text">
                            </div>
                        </div>
                        <!--start & end-->
                        <div class="J_SearchDateRow search_row">
                            <div class="search_train_start">
                                <div class="J_DepartDate search_ctrl search_ctrl_select">
                                    <div class="search_ctrl_inp_label">出发时间&nbsp;|&nbsp;</div>
                                    <div class="search_ctrl_inp_placeholder"></div>
                                    <input class="search_ctrl_inp_input search_train_inp" type="text">
                                </div>
                            </div>

                            <!--submit-->
                            <div class="J_SearchSubmit search_ctrl search_submit search_flight_submit">
                                <a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-火车汽车票_汽车票_开始查找__'])">搜索</a>
                            </div>
                        </div>
                        
                                                <div class="J_BusLeague league_adv_img">
                        <a href="http://www.tuniu.com/tn?r=coach/coachTicket/activity&type=bonus" target="_blank" rel="nofollow">
                                        <img src="picture/qcp_1014.jpg" alt="" title="">
                                    </a>                        </div>
                                                <div class="J_BusLeague league_bottom">
                        <a href="http://bus.tuniu.com/" target="_blank" rel="nofollow"><img src="picture/qichepiao.jpg" alt=""></a>                        </div>
                                            </div>
					<!-- bus end 汽车票 -->
				</div>
								<!--train E-->

				<!-- 邮轮二级菜单 -->
				<!--cruise S-->
								<div class="J_SearchCruise search_group search_cruise tn_none">
					<div class="J_SearchSwitch search_switch tn_none">
						<a href="javascript:;" class="switch_btn switch_selected" data-value="cruise" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_Tab_邮轮__'])">邮轮</a>
													<a href="javascript:;" class="switch_btn" data-value="visa" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_Tab_签证__'])">签证</a>
											</div>
					<!-- 邮轮 -->
					<div class="J_Cruise tn_none">
						<!--departure & dest-->
						<div class="J_SearchCitiesRow search_row">
							<!--input-->
							<div class="J_SearchType search_ctrl search_ctrl_inp search_ctrl_city search_cruise_dest search_ctrl_select_expanded">
								<div class="search_ctrl_inp_label">出发地&nbsp;|&nbsp;</div>
								<input class="search_ctrl_inp_input search_cruise_in" name="" type="text">
								<div class="search_ctrl_select_btn">
									<i class="search_ctrl_select_arrow"></i>
								</div>
							</div>
							<!--input-->
							<div class="J_SearchRoute search_ctrl search_ctrl_inp search_ctrl_city search_cruise_path">
								<div class="search_ctrl_inp_label">邮轮航线&nbsp;|&nbsp;</div>
								<input class="search_ctrl_inp_input search_cruise_inp" name="" type="text">
								<div class="search_ctrl_select_btn">
									<i class="search_ctrl_select_arrow"></i>
								</div>
							</div>
						</div>
						<!--start & end-->
						<div class="J_SearchCruiseRow search_row">
							<div class="search_cruise_brand">
								<div class="J_SearchBrand search_ctrl search_ctrl_select">
									<div class="search_ctrl_inp_label">邮轮品牌&nbsp;|&nbsp;</div>
									<input class="search_ctrl_select_input search_cruise_inp search_w200" value="不限" readonly>
									<div class="search_ctrl_select_btn">
										<i class="search_ctrl_select_arrow"></i>
									</div>
								</div>
							</div>
							<div class="J_SearchSubmit search_ctrl search_submit search_pkg_submit">
								<a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_搜索__'])">搜索</a>
							</div>
						</div>
												<div class="J_CruiseLeague league_column tn_mt20">
							<div class="league_title">
								<span class="line"></span>热门航线玩法							</div>
							<div class="league_item">
																<em>
									<a class="a_hot" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_1-包船专享_'])" href="http://www.tuniu.com/zt/new-baochuan/" target="_blank" rel="nofollow">包船专享</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_2-日本_'])" href="http://youlun.tuniu.com/d1-all-all/" target="_blank" rel="nofollow">日本</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_3-经典欧洲地中海_'])" href="http://youlun.tuniu.com/d34-all-all/" target="_blank" rel="nofollow">经典欧洲地中海</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_4-加勒比海度假_'])" href="http://youlun.tuniu.com/d42-all-all/" target="_blank" rel="nofollow">加勒比海度假</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_5-阿拉斯加冰川猎奇_'])" href="http://youlun.tuniu.com/d40-all-all/" target="_blank" rel="nofollow">阿拉斯加冰川猎奇</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_6-北欧童话波罗的海_'])" href="http://youlun.tuniu.com/d35-all-all/" target="_blank" rel="nofollow">北欧童话波罗的海</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_7-北极摄影之旅_'])" href="http://youlun.tuniu.com/d48-all-all/" target="_blank" rel="nofollow">北极摄影之旅</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_8-探索南极_'])" href="http://youlun.tuniu.com/d47-all-all/" target="_blank" rel="nofollow">探索南极</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_9-圆梦环球_'])" href="http://youlun.tuniu.com/d10-all-all/" target="_blank" rel="nofollow">圆梦环球</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_10-风情东南亚_'])" href="http://youlun.tuniu.com/d6-all-all/" target="_blank" rel="nofollow">风情东南亚</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_11-三峡_'])" href="http://youlun.tuniu.com/d9-all-all/" target="_blank" rel="nofollow">三峡</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门航线玩法_12-台湾_'])" href="http://youlun.tuniu.com/d33-all-all/" target="_blank" rel="nofollow">台湾</a>
								</em>
															</div>
						</div>
												<div class="J_CruiseLeague league_column tn_mt30">
							<div class="league_title">
								<span class="line"></span>热门活动							</div>
							<div class="league_item">
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门活动_1-11周年邮轮钜惠_'])" href="http://www.tuniu.com/szt/17Cruisehuichang/" target="_blank" rel="nofollow">11周年邮轮钜惠</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门活动_2-深秋赏枫 淡季出游_'])" href="http://www.tuniu.com/szt/1011cuofeng/" target="_blank" rel="nofollow">深秋赏枫 淡季出游</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_邮轮_热门活动_3-2018早鸟预售优惠多_'])" href="http://www.tuniu.com/cruise/d0-b0-p0/list-d20180101_20181231/1" target="_blank" rel="nofollow">2018早鸟预售优惠多</a>
								</em>
															</div>
						</div>
												<div class="J_CruiseLeague league_bottom">
						<a href="http://youlun.tuniu.com/" target="_blank" rel="nofollow"><img src="picture/youlun.jpg" alt=""></a>	                    </div>
											</div>
					<!-- 签证 -->
											<div class="J_Visa tn_none search_visa">
							<div class="J_SearchCitiesRow search_row">
								<!--input-->
								<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_visa_dest">
									<div class="search_ctrl_inp_label">国家</div>
									<div class="search_ctrl_inp_placeholder search_hotel_holder">请填写签证国家</div>
									<input class="search_ctrl_inp_input search_visa_in" name="" type="text" value="">
								</div>
								<!--input-->
							</div>
							<!--start & end-->
							<div class="J_SearchVisaRow search_row">
								<div class="J_SearchSubmit search_ctrl search_submit search_visa_submit">
									<a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_搜索__'])">搜索</a>
								</div>
							</div>
																<div class="league_column tn_mt20">
										<div class="league_title">
											<span class="line"></span>热门签证目的地										</div>
										<div class="league_item">
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3738/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_1-美国_'])">美国</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3905/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_2-日本_'])">日本</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3604/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_3-法国_'])">法国</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3910/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_4-泰国_'])">泰国</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3911/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_5-马来西亚_'])">马来西亚</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_4102/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_6-澳大利亚_'])">澳大利亚</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3608/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_7-英国_'])">英国</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3912/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_8-新加坡_'])">新加坡</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3710/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_9-加拿大_'])">加拿大</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3616/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_10-德国_'])">德国</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_3645/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_11-意大利_'])">意大利</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_3402_2900/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_12-台湾_'])">台湾</a>
												</em>
																					</div>
									</div>
																	<div class="league_column tn_mt30">
										<div class="league_title">
											<span class="line"></span>其他签证目的地										</div>
										<div class="league_item">
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3907" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_1-老挝_'])">老挝</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3906" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_2-越南_'])">越南</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3919" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_3-印度_'])">印度</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3902" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_4-蒙古_'])">蒙古</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3908" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_5-柬埔寨_'])">柬埔寨</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3936" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_6-阿拉伯联合酋长国_'])">阿拉伯联合酋长国</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3948" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_7-尼泊尔_'])">尼泊尔</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3920" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_8-斯里兰卡_'])">斯里兰卡</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3914" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_9-菲律宾_'])">菲律宾</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3946" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_10-土耳其_'])">土耳其</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3643" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_11-希腊_'])">希腊</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3644" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_12-西班牙_'])">西班牙</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3605" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_13-荷兰_'])">荷兰</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3610" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_14-丹麦_'])">丹麦</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3617" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_15-捷克_'])">捷克</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3614" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_16-奥地利_'])">奥地利</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3611" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_17-芬兰_'])">芬兰</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3638" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_18-葡萄牙_'])">葡萄牙</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3619" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_19-瑞士_'])">瑞士</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_3624" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_20-俄罗斯_'])">俄罗斯</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_4103" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_21-新西兰_'])">新西兰</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_4002" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_22-埃及_'])">埃及</a>
												</em>
																							<em>
													<a  href="http://www.tuniu.com/visa/country_1619_4054" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-邮轮签证_签证_热门活动_23-南非_'])">南非</a>
												</em>
																					</div>
									</div>
																<div class="league_bottom">
									<a href="http://www.tuniu.com/visa/" target="_blank" rel="nofollow"><img src="picture/qianzhen.jpg" alt=""></a>								</div>
													</div>
									</div>
								<!--cruise E-->

                <!-- 门票玩乐WiFi -->
				<!--local S-->
								<div class="J_SearchLocal search_group search_ticket tn_none">
					<div class="J_SearchSwitch search_switch tn_none">
                        <a href="javascript:;"  class="switch_btn switch_selected" data-value="entrance" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_Tab_门票__'])">门票</a>
                        <a href="javascript:;" class="switch_btn" data-value="disport" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_Tab_玩乐__'])">玩乐</a>
                        
                                                        <a href="javascript:;" class="switch_btn" data-value="wifi" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_Tab_全球WiFi__'])">全球WiFi</a>
                        						<!-- <a href="javascript:;" class="switch_btn" data-value="rental">租车</a> -->
					</div>
					<!-- 门票 -->
					<div class="J_Entrance tn_none">
						<!--departure & dest-->
						<div class="J_SearchCitiesRow search_row">
							<!--input-->
							<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_ticket_dest">
								<div class="search_ctrl_inp_label">关键词&nbsp;|&nbsp;</div>
								<div class="search_ctrl_inp_placeholder search_hotel_holder">请填写关键词</div>
								<input class="search_ctrl_inp_input search_ticket_in" name="" type="text" value="">
							</div>
							<!--input-->
						</div>
						<!--start & end-->
						<div class="J_SearchTicketRow search_row">
							<div class="J_SearchSubmit search_ctrl search_submit search_ticket_submit">
                                <a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_门票_搜索__'])">搜索</a>
							</div>
						</div>
												<div class="J_LocalLeague league_column tn_mt20">
							<div class="league_title">
								<span class="line"></span>热门景点							</div>
							<div class="league_item">
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_1-中华恐龙园_'])" href="http://menpiao.tuniu.com/t_107" target="_blank" rel="nofollow">中华恐龙园</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_2-东方盐湖城_'])" href="http://menpiao.tuniu.com/t_8598" target="_blank" rel="nofollow">东方盐湖城</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_3-天目湖山水园_'])" href="http://menpiao.tuniu.com/t_320" target="_blank" rel="nofollow">天目湖山水园</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_4-常州淹城野生动物园_'])" href="http://menpiao.tuniu.com/t_7453" target="_blank" rel="nofollow">常州淹城野生动物园</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_5-灵山大佛_'])" href="http://menpiao.tuniu.com/t_102" target="_blank" rel="nofollow">灵山大佛</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_6-横店影视城_'])" href="http://menpiao.tuniu.com/t_222" target="_blank" rel="nofollow">横店影视城</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_7-宋城千古情_'])" href="http://menpiao.tuniu.com/t_4433" target="_blank" rel="nofollow">宋城千古情</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_8-南浔古镇_'])" href="http://menpiao.tuniu.com/t_412" target="_blank" rel="nofollow">南浔古镇</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_9-上海迪士尼_'])" href="http://menpiao.tuniu.com/t_8641" target="_blank" rel="nofollow">上海迪士尼</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_10-上海长风海洋世界_'])" href="http://menpiao.tuniu.com/t_901" target="_blank" rel="nofollow">上海长风海洋世界</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_11-上海欢乐谷_'])" href="http://menpiao.tuniu.com/t_915" target="_blank" rel="nofollow">上海欢乐谷</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_12-天目湖南山竹海_'])" href="http://menpiao.tuniu.com/t_98" target="_blank" rel="nofollow">天目湖南山竹海</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_13-南昌万达主题乐园_'])" href="http://menpiao.tuniu.com/t_10454" target="_blank" rel="nofollow">南昌万达主题乐园</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_14-合肥万达主题乐园_'])" href="http://menpiao.tuniu.com/t_10640" target="_blank" rel="nofollow">合肥万达主题乐园</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_15-大明山风景区_'])" href="http://menpiao.tuniu.com/t_4136" target="_blank" rel="nofollow">大明山风景区</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_16-银杏湖乐园景区_'])" href="http://menpiao.tuniu.com/t_8312" target="_blank" rel="nofollow">银杏湖乐园景区</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_热门景点_17-同里古镇_'])" href="http://menpiao.tuniu.com/t_130" target="_blank" rel="nofollow">同里古镇</a>
								</em>
															</div>
						</div>
												<div class="J_LocalLeague league_column tn_mt30">
							<div class="league_title">
								<span class="line"></span>游玩主题							</div>
							<div class="league_item">
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_游玩主题_1-水上乐园_'])" href="http://menpiao.tuniu.com/cat_0_0_32_0_0_0_1_1_1.html" target="_blank" rel="nofollow">水上乐园</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_游玩主题_2-主题乐园_'])" href="http://menpiao.tuniu.com/cat_0_0_7_0_0_0_1_1_1.html" target="_blank" rel="nofollow">主题乐园</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_游玩主题_3-家庭亲子_'])" href="http://menpiao.tuniu.com/cat_0_0_26_0_0_0_1_1_1.html" target="_blank" rel="nofollow">家庭亲子</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_游玩主题_4-古镇园林_'])" href="http://menpiao.tuniu.com/cat_0_0_8_0_0_0_1_1_1.html" target="_blank" rel="nofollow">古镇园林</a>
								</em>
																<em>
									<a   onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_门票_游玩主题_5-名胜风光_'])" href="http://menpiao.tuniu.com/cat_0_0_6_0_0_0_1_1_1.html" target="_blank" rel="nofollow">名胜风光</a>
								</em>
															</div>
						</div>
												<div class="J_LocalLeague league_bottom">
						<a href="http://menpiao.tuniu.com/" target="_blank" rel="nofollow"><img src="picture/menpiao.jpg" alt=""></a>	                    </div>
											</div>
					<!-- 当地玩乐 -->
					<div class="J_Disport tn_none">
                        <!--departure & dest-->
                        <div class="J_SearchSwitchRadio search_switch_type tn_none">
                            <ul>
                                <li>
                                    <label class="tn_switch" data-value="local">
                                        <i class="radio_icon catalog_icon"></i>
                                        <span class="radio_text">当地玩乐</span>
                                    </label>
                                </li>
                                <li>
                                    <label data-value="around">
                                        <i class="radio_icon catalog_icon"></i>
                                        <span class="radio_text">当地参团</span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                        <div class="J_SearchCitiesRow search_row tn_none">
                            <!--input-->
                            <div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_ticket_dest">
                                <div class="search_ctrl_inp_label">景点目的地&nbsp;|&nbsp;</div>
                                <div class="search_ctrl_inp_placeholder search_hotel_holder">请填写关键词</div>
                                <input class="search_ctrl_inp_input search_ticket_in" name="" type="text" value="">
                            </div>
                            <!--input-->
                        </div>
                        <!--start & end-->
                        <div class="J_SearchTicketRow search_row tn_none">
                            <div class="J_SearchSubmit search_ctrl search_submit search_ticket_submit">
                                <a href="javascript:;" class="search_submit_btn" onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_玩乐_搜索__'])">搜索</a>
                            </div>
                        </div>
                        <div class="J_SearchSingle search_rows">
                            <div class="search_row">
                                <div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city search_ticket_dest">
                                    <div class="search_ctrl_inp_label">景点目的地&nbsp;|&nbsp;</div>
                                    <div class="search_ctrl_inp_placeholder search_hotel_holder">请填写关键词</div>
                                    <input class="search_ctrl_inp_input search_ticket_in" name="" type="text" value="">
                                </div>
                            </div>
                            <div class="J_SearchSubmit search_ctrl search_submit search_ticket_submit">
                            <a href="javascript:;" class="search_submit_btn">搜索</a>
                            </div>
                        </div>
                        						<div class="J_LocalLeague league_column tn_mt0">
							<div class="league_title">
								<span class="line"></span>当地玩乐热门推荐							</div>
							<div class="league_item">
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_1-普吉岛_'])" href="http://www.tuniu.com/g5896/local-all-0/" target="_blank" rel="nofollow">普吉岛</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_2-曼谷_'])" href="http://www.tuniu.com/g45398/local-all-0/" target="_blank" rel="nofollow">曼谷</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_3-巴厘岛_'])" href="http://www.tuniu.com/g784812/local-all-0/" target="_blank" rel="nofollow">巴厘岛</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_4-沙巴_'])" href="http://www.tuniu.com/g44378/local-all-0/" target="_blank" rel="nofollow">沙巴</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_5-新加坡_'])" href="http://www.tuniu.com/g47109/local-all-0/" target="_blank" rel="nofollow">新加坡</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_6-毛里求斯_'])" href="http://www.tuniu.com/g4049/local-all-0/" target="_blank" rel="nofollow">毛里求斯</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_7-台湾_'])" href="http://www.tuniu.com/g2900/local-all-0/" target="_blank" rel="nofollow">台湾</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_8-东京_'])" href="http://www.tuniu.com/g45103/local-all-0/" target="_blank" rel="nofollow">东京</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_9-英国_'])" href="http://www.tuniu.com/g3608/local-all-0/" target="_blank" rel="nofollow">英国</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_10-澳大利亚_'])" href="http://www.tuniu.com/g4102/local-all-0/" target="_blank" rel="nofollow">澳大利亚</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_11-新西兰_'])" href="http://www.tuniu.com/g4103/local-all-0/" target="_blank" rel="nofollow">新西兰</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_12-迪拜_'])" href="http://www.tuniu.com/g42838/local-all-0/" target="_blank" rel="nofollow">迪拜</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_13-纽约_'])" href="http://www.tuniu.com/g44679/local-all-0/" target="_blank" rel="nofollow">纽约</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_14-洛杉矶_'])" href="http://www.tuniu.com/g44558/local-all-0/" target="_blank" rel="nofollow">洛杉矶</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地玩乐热门推荐_15-出境WiFi_'])" href="http://www.tuniu.com/zt/niu_online/" target="_blank" rel="nofollow">出境WiFi</a>
								</em>
															</div>
						</div>
												<div class="J_LocalLeague league_column tn_mt10">
							<div class="league_title">
								<span class="line"></span>当地参团热门推荐							</div>
							<div class="league_item">
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_1-美国_'])" href="http://www.tuniu.com/g3738/around-all-0/" target="_blank" rel="nofollow">美国</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_2-欧洲_'])" href="http://www.tuniu.com/g3600/around-all-0/" target="_blank" rel="nofollow">欧洲</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_3-澳大利亚_'])" href="http://www.tuniu.com/g4102/around-all-0/" target="_blank" rel="nofollow">澳大利亚</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_4-新西兰_'])" href="http://www.tuniu.com/g4103/around-all-0/" target="_blank" rel="nofollow">新西兰</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_5-日本_'])" href="http://www.tuniu.com/g3905/around-all-0/" target="_blank" rel="nofollow">日本</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_6-泰国_'])" href="http://www.tuniu.com/g3910/around-all-0/" target="_blank" rel="nofollow">泰国</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_7-巴厘岛_'])" href="http://www.tuniu.com/g784812/around-all-0/" target="_blank" rel="nofollow">巴厘岛</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_8-新加坡_'])" href="http://www.tuniu.com/g47109/around-all-0/" target="_blank" rel="nofollow">新加坡</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_9-马来西亚_'])" href="http://www.tuniu.com/g3911/around-all-0/" target="_blank" rel="nofollow">马来西亚</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_10-香港_'])" href="http://www.tuniu.com/g1300/around-all-0/" target="_blank" rel="nofollow">香港</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_11-毛里求斯_'])" href="http://www.tuniu.com/g4049/around-all-0/" target="_blank" rel="nofollow">毛里求斯</a>
								</em>
																<em>
									<a  onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐_玩乐_当地参团热门推荐_12-柬埔寨_'])" href="http://www.tuniu.com/g3908/around-all-0/" target="_blank" rel="nofollow">柬埔寨</a>
								</em>
															</div>
						</div>
												<div class="J_LocalLeague league_bottom">
						<a href="http://www.tuniu.com/local/" target="_blank" rel="nofollow"><img src="picture/wanle.jpg" alt=""></a>	                    </div>
						                    </div>

                    <!-- WIFI -->
                    <div class="J_Wifi tn_mt20 tn_none">
						<!--目的地-->
						<div class="J_SearchSingle search_rows">
							<div class="J_SearchCitiesRow search_row ">
								<!--input-->
								<div class="J_SearchDepart search_ctrl search_ctrl_inp search_ctrl_city">
									<div class="search_ctrl_inp_label">目的地&nbsp;|&nbsp;</div>
									<div class="search_ctrl_inp_placeholder search_holder">请选择目的地</div>
									<input  class="search_ctrl_inp_input search_ticket_in" name="" type="text" readonly="">
								</div>
								<!--input-->
								<div class="J_SearchRoute search_ctrl search_ctrl_inp search_pro_style">
									<div class="search_ctrl_inp_label">产品类型&nbsp;|&nbsp;</div>
									<input type="text" name="" class="search_ctrl_inp_input search_ticket_inp" readonly="">
									<div class="search_ctrl_select_btn">
										<i class="search_ctrl_select_arrow"></i>
									</div>
								</div>
							</div>
							<div class="J_SearchWifiRow search_row">
								<div class="J_SearchSwitchRadio search_switch_type">
									<ul>
										<li class="search_switch_type_tit">
											取件方式
										</li>
										<li class="tn_label">
											<label data-value="invite" class="tn_switch">
												<i class="radio_icon catalog_icon"></i>
												<span class="radio_text">自取</span>
											</label>
										</li>
										<li class="tn_label">
											<label data-value="express">
												<i class="radio_icon catalog_icon"></i>
												<span class="radio_text">快递</span>
											</label>
										</li>
									</ul>
								</div>
								<div class="J_SearchSubmit search_ctrl search_submit search_ticket_submit">
									<a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_WiFi_搜索__'])" class="search_submit_btn" href="javascript:;">搜索</a>
								</div>
							</div>
						</div>
                        <!--start & end-->
                        <div class="clearfix">
                                                <div class="J_LocalLeague league_column tn_mt0">
                            <div class="league_title">
                                <span class="line"></span>热门国家WiFi                            </div>
                            <div class="league_item">
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_1-日本_'])" href="http://www.tuniu.com/tucom/area3905-0-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >日本</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_2-台湾_'])" href="http://www.tuniu.com/tucom/area2900-0-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >台湾</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_3-泰国_'])" href="http://www.tuniu.com/tucom/area3910-0-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >泰国</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_4-马尔代夫_'])" href="http://www.tuniu.com/tucom/area3922-0-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >马尔代夫</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_5-巴厘岛_'])" href="http://www.tuniu.com/tucom/area784812-0-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >巴厘岛</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_6-菲律宾_'])" href="http://www.tuniu.com/tucom/area3914-0-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >菲律宾</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_7-美国_'])" href="http://www.tuniu.com/tucom/area3738-0-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >美国</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_8-欧洲通用_'])" href="http://www.tuniu.com/tucom/area0-5-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >欧洲通用</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_9-美加_'])" href="http://www.tuniu.com/tucom/area0-29-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >美加</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_10-澳新_'])" href="http://www.tuniu.com/tucom/area0-9-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >澳新</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_热门国家WiFi_11-港澳_'])" href="http://www.tuniu.com/tucom/area0-8-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow" >港澳</a>
                                </em>
                                                            </div>
                        </div>
                                                <div class="J_LocalLeague league_column tn_mt10">
                            <div class="league_title">
                                <span class="line"></span>特色推荐                            </div>
                            <div class="league_item">
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_特色推荐_1-水下相机_'])" href="http://www.tuniu.com/zt/shuixiaxiangji/sh" target="_blank" rel="nofollow"  class="a_hot" >水下相机</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_特色推荐_2-无人机_'])" href="http://www.tuniu.com/tucom/210214162" target="_blank" rel="nofollow"  class="a_hot" >无人机</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_特色推荐_3-牛宝公仔_'])" href="http://www.tuniu.com/zt/tuniudoll/" target="_blank" rel="nofollow"  class="a_hot" >牛宝公仔</a>
                                </em>
                                                                <em>
                                        <a onclick="_gaq.push(['_trackEvent','首页_hz','点击','分类目录-门票玩乐WiFi_全球WiFi_特色推荐_4-出境上网卡_'])" href="http://www.tuniu.com/tucom/area0-0-64-0-0-1-3-1-0-1.html" target="_blank" rel="nofollow"  class="a_hot" >出境上网卡</a>
                                </em>
                                                            </div>
                        </div>
                                                </div>
						                        <div class="J_LocalLeague league_bottom">
                        <a href="http://www.tuniu.com/tucom/area0-0-0-0-0-1-1-0-0-1.html" target="_blank" rel="nofollow"><img src="picture/wifi.jpg" alt=""></a>                        </div>
                                            </div>
					<!-- rental start 租车暂时隐藏 -->
					<!-- rental end -->
				</div>
								<!--local E-->
			</div>
		</div>
	</div>
</div>
<input type="hidden" id="cityLetter" value="hz"/>
<script>

    window.staticVersion = '201601041931';
    window.pageData = {};
    window.indexCatalogData = {
        defaultCity: {
            cityCode: 3402,
            cityName: '杭州'
        },
        cruise: {
            depart:{
                defaultType: 'all',
                options:[
                     {name: '全部', value: 'all'},
                         {name: '上海港', value: 'cnsha'},{name: '天津港', value: 'cntsn'},{name: '广州港', value: 'cngua'},{name: '厦门港', value: 'cnxia'},{name: '香港港', value: 'hkhkg'},{name: '青岛港', value: 'tao'},{name: '大连港', value: 'cndal'},{name: '深圳港', value: 'cnshe'},{name: '宜昌港', value: 'yc'},{name: '重庆港', value: 'cnchq'},{name: '迈阿密港口', value: 'miami'},{name: '三亚港', value: 'cnsya'},{name: '天津国际邮轮母港', value: ''}                     ]
            },
            path: {
                defaultType: 'd0',
                options:[
                	{name: '全部', value: 'd0'},
                	{name: '日本', value: 'd1'},{name: '长江三峡&西沙', value: 'd9'},{name: '多瑙河', value: 'd38'},{name: '阿拉斯加', value: 'd40'},{name: '波罗的海', value: 'd35'},{name: '地中海', value: 'd34'},{name: '加勒比海', value: 'd42'},{name: '莱茵河', value: 'd39'},{name: '澳新', value: 'd3'},{name: '中东', value: 'd2'},{name: '港澳', value: 'd12'},{name: '南极', value: 'd47'},{name: '北极', value: 'd48'},{name: '环球', value: 'd10'},{name: '西沙', value: 'd32'},{name: '东南亚', value: 'd6'},{name: '挪威峡湾', value: 'd36'},{name: '英国爱尔兰连线', value: 'd37'},{name: '加拿大新英格兰连线', value: 'd41'},{name: '南美', value: 'd46'},{name: '伏尔加河', value: 'd52'}               ]


            },
             brand:{
                 defaultType: 'all',
                 options: [
                    {name: '全部', value: 'all'},
                    {name: '歌诗达邮轮', value: 'costa'},{name: '公主邮轮', value: 'princess'},{name: '皇家加勒比游轮', value: 'rccl'},{name: '地中海邮轮', value: 'msc'},{name: '丽星邮轮', value: 'star'},{name: '天海邮轮', value: 'skysea'},{name: '夸克邮轮', value: 'quark'},{name: '诺唯真游轮', value: 'ncl'},{name: '英国圣殿游轮', value: 'explorer'},{name: '长江海外游轮', value: 'changhai'},{name: '总统游轮', value: 'president'},{name: '世纪游轮', value: 'century'},{name: '美国维多利亚游轮', value: 'mv'},{name: '黄金游轮', value: 'yangtzegold'},{name: '华夏神女游轮', value: 'damei'},{name: '长乐公主号(西沙)', value: 'hnss'},{name: '南海邮轮(西沙)', value: 'nhc'},{name: '伯曼邮轮公司', value: 'pullmantur'},{name: '荷美邮轮', value: 'hollandamericaline'},{name: '中华泰山号', value: 'cts'},{name: '迪士尼邮轮', value: 'disneycruiseline'},{name: 'GADVENTURES', value: 'g'},{name: '精致邮轮', value: 'c'},{name: '冠达邮轮', value: 'cunard'},{name: '维京游轮', value: 'vikingrivercruises'},{name: '希腊赛洛斯邮轮', value: 'celestyalcruises'},{name: '精钻邮轮', value: 'azamara'},{name: '星途游轮', value: 'gct'},{name: '阿玛河轮', value: 'amawaterways'},{name: '卢芙娜河轮', value: 'luftnercruises'},{name: '寰宇邮轮', value: 'uniworldrivercruises'},{name: '美国邮轮', value: 'americancruise'},{name: '星梦邮轮', value: 'dream'},{name: '美国女王汽船', value: 'americanempress'},{name: '风星邮轮', value: 'windstarcruises'},{name: 'APT邮轮', value: 'apt'},{name: '埃及河轮', value: 'jaz'},{name: '瑞士皇冠', value: 'rshg'},{name: 'Albatros Group', value: 'albatrostravelgroup'},{name: '和平之船', value: 'peaceboat'},{name: 'Cruise & Maritime Voyages', value: 'ma'}                	]
                }
            },
		wifi: {
			genre:{
				defaultType: 'all',
				options: [
					{name: '不限', value: 'all'},
					{name: 'WiFi', value: 'wifi'},{name: '上网卡', value: 'card'}
				]
			}
		}
        }
    </script><!-- new end -->
</div></div><div class="tn_main">
	<div class="tn_banner">
		<!--通栏广告位开始-->
		<div class="tn_activity_slide">
			<div class="activity_slide">
	<ul class="activity_images">
				
							
						</ul>
</div>		</div>
		<!--通栏广告位结束-->
		<div class="tn_banner_center">
			<div id="container">
                <div id="list" style="left: -1250px;">
                    <c:forEach items="${ad1List}" var="node" varStatus="status">
                        <img <%--id="lunbo_1"--%>	src="${node.image}">
                    </c:forEach>
                </div>
                <div id="buttons">
                    <span index="1" class="on"></span>
                    <span index="2"></span>
                    <span index="3"></span>
                    <span index="4"></span>
                    <span index="5"></span>
                    <span index="6"></span>
                    <span index="7"></span>
                </div>
                <a href="javascript:;" id="prev" class="arrow"><</a>
                <a href="javascript:;" id="next" class="arrow">></a>
				<!-- 轮播图播放位置 -->
               <%-- <ul id="mylist">
                    <c:forEach items="${ad1List}" var="node" varStatus="status">
                        <li>
                            <a&lt;%&ndash; name="sfbest_hp_hp_focus_${status.index}" class="fore_pic trackref"  target="_blank"&ndash;%&gt;>
                                <img &lt;%&ndash;id="lunbo_1"&ndash;%&gt;	src="${node.image}">
                            </a>
                        </li>
                    </c:forEach>
                </ul>--%>
                <%--<ul id="underNum">
                    <li><a href="">1</a></li>
                    <li><a href="">2</a></li>
                    <li><a href="">3</a></li>
                    <li><a href="">4</a></li>
                    <li><a href="">5</a></li>
                    <li><a href="">6</a></li>
                    <li><a href="">7</a></li>
                    <li><a href="">8</a></li>
                </ul>--%>
            </div>
			
			<!--顶部右侧边栏start-->
			<div class="tn_bc_right">
				<div class="aside_summary">
				<div class="statics clearfix">
	<div class="hot-point" data-hot="93">
		<span class="hot-num">93</span>
		<span class="hot-du">%</span>
		<span class="hot-txt">满意度</span>
	</div>
	<p class="item_common first_item">出游人数：<em>71800000+</em></p>
	<p class="item_common">点评人数：<em>4800000+</em></p>
	</div>

	<div class="latest_order">
				<ul class="order_list">
						<li>
					<p class="order_title">
                        <a rel="nofollow" href="http://www.tuniu.com/tours/210133013" title="[春节]<德法瑞意10-13日游>含服务费，卢浮宫，凡尔赛，比萨，五渔村，塞纳河游船，科尔马，滴滴湖，水上餐厅，巴黎圣母院，可异地录指纹" target="_blank" onclick="_gaq.push(['_trackEvent', '首页_hz','点击','品牌专区_预定列表_[春节]<德法瑞意10-13日游>含服务费，卢浮宫，凡尔赛，比萨，五渔村，塞纳河游船，科尔马，滴滴湖，水上餐厅，巴黎圣母院，可异地录指纹__']);" >[春节]<>含服务费，卢浮宫，凡尔赛，比萨，五渔村，塞纳河游船，科尔马，滴滴湖，水上餐厅，巴黎圣母院，可异地录指纹</a>
					</p>
					<p class="order_info">
						<span class="order_info_user">用户***901920</span>
						<span class="order_info_item">1分钟前预订</span>
					</p>
			</li>
						
					</ul>
			</div>

	<div class="ad_cooperation">
        <a href="http://www.tuniu.com/static/sunshine_ensure/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','品牌专区_三大阳光保证_20170124__']);">
            <img src='picture/sunensure20170124.png'>
        </a>
     </div>
					<!--当前热点图文广告位start-->
			<div class="current_hot">
    <div class="current_hot_img">
        <a href="http://www.tuniu.com/theme/jdair/" target="_blank" rel="nofollow" onclick="_gaq.push(['_trackEvent','首页_hz','点击','品牌专区_出游服务_图片-当前热点-首航__']);">
            <img src="picture/cii-t1ihbdsihhgjaaa5omuhlhwaag5aqjr0c0aadm430.jpeg" width="230" height="56" alt="当前热点-首航">
        </a>
    </div>
    <div class="current_hot_title">
        <span>出游服务</span>
    </div>
    <div class="current_hot_main clearfix">
        <div class="current_hot_main_l">
            <a href="http://www.tuniu.com/visa/" onclick="_gaq.push(['_trackEvent','首页_hz','点击','品牌专区_出游服务_图片-签 证__']);">
                <img src="picture/cii9efihde2ickyaaaaem6qennyaahh-qp_-7iaaaro441.png"><span>签 证</span>
            </a>
            <a href="http://www.tuniu.com/tucom/" onclick="_gaq.push(['_trackEvent','首页_hz','点击','品牌专区_出游服务_图片-全球WIFI__']);">
                <img src="picture/cii-tfihdqaiowauaaaeizla0wiaag3fgp_-1waaask090.png"><span>全球WIFI</span>
            </a>
            <a href="http://shopping.tuniu.cn/" onclick="_gaq.push(['_trackEvent','首页_hz','点击','品牌专区_出游服务_图片-全 球 购__']);">
                <img src="picture/cii-u1ihecaik56raaadbln4ikaaahgxwp__oiaaame659.png"><span>全 球 购</span>
            </a>
        </div>
        <div class="current_hot_main_r">
            <a href="http://www.tuniu.com/local/" onclick="_gaq.push(['_trackEvent','首页_hz','点击','品牌专区_出游服务_图片-当地玩乐__']);">
                <img src="picture/cii9evihdl2iixcdaaadq7kklryaahchwp__d0aaapd653.png"><span>当地玩乐</span>
            </a>
            <a href="http://car.tuniu.com/" onclick="_gaq.push(['_trackEvent','首页_hz','点击','品牌专区_出游服务_图片-租车用车__']);">
                <img src="picture/cii9evihdvsiwcpiaaad0unfxycaahirqp__byaaapq125.png"><span>租车用车</span>
            </a>
            <a href="http://love.tuniu.com/" onclick="_gaq.push(['_trackEvent','首页_hz','点击','品牌专区_出游服务_图片-婚纱旅拍__']);">
                <img src="picture/cii9efihenmisjzbaaahxykjjcqaahjbwp_98qaaag8312.png"><span>婚纱旅拍</span>
            </a>
        </div>
    </div>
</div>					<!--当前热点图文广告位end-->
				</div>
			</div>
			<!--顶部右侧边栏end-->
		</div>
    </div>
	

            
        </ul>
	</div>
</div>			</div>
			<!--特卖end-->
			<!--热门活动广告位开始-->
			
		</div>
	</div>
	


<div class="layer layer_box layer_type_2 layer_color_ganlanlv">
	<div class="layer_header clearfix">
	<h2>国内跟团游</h2>

	<div class="more">
		<a href="javascript:void(0)"  onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_更多产品___']);" >更多产品 &gt;</a>
	</div>
</div>

<ul class="layer_body_list datalazyload loading" data-lazyload-type="data" data-lazyload-from="textarea">
<textarea data-lazyload-textarea>
      <li class="layer_body current_body clearfix" >
   <div class="body_right">
       <ul class="tab_list clearfix">
        			<!--邮轮 签证专属逻辑start-->
							<!-- WEBS-6935 首页楼层 -->
              <c:forEach items="${pictureList_2}" var="picture" varStatus="status">

				<li class="pro_item">
					<!--楼层图片信息开始-->
					<div class="pro_pic">

						<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-图片-[春节]<俄罗斯莫斯科圣彼得堡8-9日游>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
																						<img src="${picture.image}" />
													</a>
						<!--图片内内容-->
						<div class="pro_mess_bg"></div>
						<div class="pro_mess">
							<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-文字链-<span>[春节]&lt;俄罗斯莫斯科圣彼得堡8-9日游&gt;</span>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
								<span>${picture.title}</span></a>
						</div>
						<!--图片内内容结束-->
					</div>
					<!--楼层图片信息结束-->
					<!--楼层产品信息开始-->
					<a href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank">
					<div class="pro_infor clearfix">
						<span class="price">
															¥
								<em>${picture.priceView}</em>
								<i>起</i>													</span>

					<span class="satisfaction">
						满意度 ${picture.goodRate}%					 </span>
					</div>
					</a>
					<!--楼层产品信息结束-->
				</li>
              </c:forEach>
		</ul>
   </div>
   </li>
      
   </textarea>
</ul>
</div>

<div class="layer layer_box layer_type_2 layer_color_ganlanlv">
    <div class="layer_header clearfix">
        <h2>国外跟团游</h2>

        <div class="more">
            <a href="javascript:void(0)"  onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_更多产品___']);" >更多产品 &gt;</a>
        </div>
    </div>

    <ul class="layer_body_list datalazyload loading" data-lazyload-type="data" data-lazyload-from="textarea">
<textarea data-lazyload-textarea>
      <li class="layer_body current_body clearfix" >
   <div class="body_right">
       <ul class="tab_list clearfix">
        			<!--邮轮 签证专属逻辑start-->
           <!-- WEBS-6935 首页楼层 -->
              <c:forEach items="${pictureList_3}" var="picture3" varStatus="status">

				<li class="pro_item">
					<!--楼层图片信息开始-->
					<div class="pro_pic">

						<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-图片-[春节]<俄罗斯莫斯科圣彼得堡8-9日游>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
																						<img src="${picture3.image}" />
													</a>
                        <!--图片内内容-->
						<div class="pro_mess_bg"></div>
						<div class="pro_mess">
							<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-文字链-<span>[春节]&lt;俄罗斯莫斯科圣彼得堡8-9日游&gt;</span>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
								<span>${picture3.title}</span></a>
						</div>
                        <!--图片内内容结束-->
					</div>
                    <!--楼层图片信息结束-->
                    <!--楼层产品信息开始-->
					<a href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank">
					<div class="pro_infor clearfix">
						<span class="price">
															¥
								<em>${picture3.priceView}</em>
								<i>起</i>													</span>

					<span class="satisfaction">
						满意度 ${picture3.goodRate}%					 </span>
					</div>
					</a>
                    <!--楼层产品信息结束-->
				</li>
              </c:forEach>
		</ul>
   </div>
   </li>

   </textarea>
    </ul>
</div>

<div class="layer layer_box layer_type_2 layer_color_ganlanlv">
    <div class="layer_header clearfix">
        <h2>国内自助游</h2>

        <div class="more">
            <a href="javascript:void(0)"  onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_更多产品___']);" >更多产品 &gt;</a>
        </div>
    </div>

    <ul class="layer_body_list datalazyload loading" data-lazyload-type="data" data-lazyload-from="textarea">
<textarea data-lazyload-textarea>
      <li class="layer_body current_body clearfix" >
   <div class="body_right">
       <ul class="tab_list clearfix">
        			<!--邮轮 签证专属逻辑start-->
           <!-- WEBS-6935 首页楼层 -->
              <c:forEach items="${pictureList_4}" var="picture4" varStatus="status">

				<li class="pro_item">picture4
					<!--楼层图片信息开始-->
					<div class="pro_pic">

						<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-图片-[春节]<俄罗斯莫斯科圣彼得堡8-9日游>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
																						<img src="${picture4.image}" />
													</a>
                        <!--图片内内容-->
						<div class="pro_mess_bg"></div>
						<div class="pro_mess">
							<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-文字链-<span>[春节]&lt;俄罗斯莫斯科圣彼得堡8-9日游&gt;</span>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
								<span>${picture4.title}</span></a>
						</div>
                        <!--图片内内容结束-->
					</div>
                    <!--楼层图片信息结束-->
                    <!--楼层产品信息开始-->
					<a href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank">
					<div class="pro_infor clearfix">
						<span class="price">
															¥
								<em>${picture4.priceView}</em>
								<i>起</i>													</span>

					<span class="satisfaction">
						满意度 ${picture4.goodRate}%					 </span>
					</div>
					</a>
                    <!--楼层产品信息结束-->
				</li>
              </c:forEach>
		</ul>
   </div>
   </li>

   </textarea>
    </ul>
</div>

<div class="layer layer_box layer_type_2 layer_color_ganlanlv">
    <div class="layer_header clearfix">
        <h2>国外自助游</h2>

        <div class="more">
            <a href="javascript:void(0)"  onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_更多产品___']);" >更多产品 &gt;</a>
        </div>
    </div>

    <ul class="layer_body_list datalazyload loading" data-lazyload-type="data" data-lazyload-from="textarea">
<textarea data-lazyload-textarea>
      <li class="layer_body current_body clearfix" >
   <div class="body_right">
       <ul class="tab_list clearfix">
        			<!--邮轮 签证专属逻辑start-->
           <!-- WEBS-6935 首页楼层 -->
              <c:forEach items="${pictureList_5}" var="picture5" varStatus="status">

				<li class="pro_item">
					<!--楼层图片信息开始-->
					<div class="pro_pic">

						<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-图片-[春节]<俄罗斯莫斯科圣彼得堡8-9日游>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
																						<img src="${picture5.image}" />
													</a>
                        <!--图片内内容-->
						<div class="pro_mess_bg"></div>
						<div class="pro_mess">
							<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-文字链-<span>[春节]&lt;俄罗斯莫斯科圣彼得堡8-9日游&gt;</span>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
								<span>${picture5.title}</span></a>
						</div>
                        <!--图片内内容结束-->
					</div>
                    <!--楼层图片信息结束-->
                    <!--楼层产品信息开始-->
					<a href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank">
					<div class="pro_infor clearfix">
						<span class="price">
															¥
								<em>${picture5.priceView}</em>
								<i>起</i>													</span>

					<span class="satisfaction">
						满意度 ${picture5.goodRate}%					 </span>
					</div>
					</a>
                    <!--楼层产品信息结束-->
				</li>
              </c:forEach>
		</ul>
   </div>
   </li>

   </textarea>
    </ul>
</div>

<div class="layer layer_box layer_type_2 layer_color_ganlanlv">
    <div class="layer_header clearfix">
        <h2>主题游</h2>

        <div class="more">
            <a href="javascript:void(0)"  onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_更多产品___']);" >更多产品 &gt;</a>
        </div>
    </div>

    <ul class="layer_body_list datalazyload loading" data-lazyload-type="data" data-lazyload-from="textarea">
<textarea data-lazyload-textarea>
      <li class="layer_body current_body clearfix" >
   <div class="body_right">
       <ul class="tab_list clearfix">
        			<!--邮轮 签证专属逻辑start-->
           <!-- WEBS-6935 首页楼层 -->
              <c:forEach items="${pictureList_6}" var="picture6" varStatus="status">

				<li class="pro_item">
					<!--楼层图片信息开始-->
					<div class="pro_pic">

						<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-图片-[春节]<俄罗斯莫斯科圣彼得堡8-9日游>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
																						<img src="${picture6.image}" />
													</a>
                        <!--图片内内容-->
						<div class="pro_mess_bg"></div>
						<div class="pro_mess">
							<a rel="nofollow" href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank" onclick="_gaq.push(['_trackEvent','首页_hz','点击','楼层2-出境长线_产品区块_1-精选_1-文字链-<span>[春节]&lt;俄罗斯莫斯科圣彼得堡8-9日游&gt;</span>高铁无夜火车住宿，金环谢镇，克里姆林宫，冬宫，夏宫，卡洛明斯科娅庄园，莫斯科地铁，彼得保罗要塞_']);">
								<span>${picture6.title}</span></a>
						</div>
                        <!--图片内内容结束-->
					</div>
                    <!--楼层图片信息结束-->
                    <!--楼层产品信息开始-->
					<a href="http://www.tuniu.com/tour/210134613#source=bb" data-pst="source=bb&ta_pst=%E9%A6%96%E9%A1%B5_%E5%87%BA%E5%A2%83%E9%95%BF%E7%BA%BF-%E7%B2%BE%E9%80%89_1&ad_id=210134613" target="_blank">
					<div class="pro_infor clearfix">
						<span class="price">
															¥
								<em>${picture6.priceView}</em>
								<i>起</i>													</span>

					<span class="satisfaction">
						满意度 ${picture6.goodRate}%					 </span>
					</div>
					</a>
                    <!--楼层产品信息结束-->
				</li>
              </c:forEach>
		</ul>
   </div>
   </li>

   </textarea>
    </ul>
</div>

<script type='text/javascript'>
 var protocol = window.location.protocol;
 var _fxcmd=[];
 _fxcmd.sid='dffa3543c3541a0ebd1add4d151d073b';
 _fxcmd.trackAll=false;
 _fxcmd.requestUrl=protocol + '//fx.axis.tuniu.org/fx/jsServlet3';
 _fxcmd.webCallSrc=protocol + '//img.tuniucdn.com/site/file/pinzhi/fxwc.js';
 // 参数配置(可选)...
 // 追踪配置(可选)...
 (function () {
   var _pzfx=document['createElement']('script');
   _pzfx.type='text/javascript';
   _pzfx.async=true;
   _pzfx.src=protocol + '//img.tuniucdn.com/site/file/pinzhi/fx.js';
  var sc=document.getElementsByTagName('script')[0];
  sc.parentNode.insertBefore(_pzfx,sc);
  })();
</script>

 <script type="text/javascript">var analyTuniuBeginTime=(new Date()).getTime();</script>


 <script type="text/javascript">
    var api_ver = "201710231130";
    var PageName = "度假:杭州:首页:hz";
    var GaPageName = "/度假/杭州/首页/www";
 </script>
<script type="text/javascript" src="js/isshowchatentry.js"></script>
<script src="js/require-2.1.15.min.js" data-main="//img4.tuniucdn.com/j/201710231130/index_amd/app"></script>
<script src="js/stat_start.js"></script>
<script src="js/ga_start.js" async defer type="text/javascript"></script>
<script type="text/javascript" src="js/fps.min.js"></script>
<script type="text/javascript" src="js/bb_product.js"></script>
<script type="text/javascript">
    /* 知识点： */
    /* this用法 */
    /* DOM事件 */
    /* 定时器 */
    window.onload = function () {
        var container = document.getElementById('container');
        var list = document.getElementById('list');
        var buttons = document.getElementById('buttons').getElementsByTagName('span');
        var prev = document.getElementById('prev');
        var next = document.getElementById('next');
        var index = 1;
        var timer;
        function animate(offset) {
//获取的是style.left，是相对左边获取距离，所以第一张图后style.left都为负值，
//且style.left获取的是字符串，需要用parseInt()取整转化为数字。
            var newLeft = parseInt(list.style.left) + offset;
            list.style.left = newLeft + 'px';
//无限滚动判断
            if (newLeft > -1250) {
                list.style.left = -8750+ 'px';
            }
            if (newLeft < -8750) {
                list.style.left = -1250 + 'px';
            }
        }
        function play() {
//重复执行的定时器
            timer = setInterval(function () {
                next.onclick();
            }, 2000)
        }
        function stop() {
            clearInterval(timer);
        }
        function buttonsShow() {
//将之前的小圆点的样式清除
            for (var i = 0; i < buttons.length; i++) {
                if (buttons[i].className == "on") {
                    buttons[i].className = "";
                }
            }
//数组从0开始，故index需要-1
            buttons[index - 1].className = "on";
        }
        prev.onclick = function () {
            index -= 1;
            if (index < 1) {
                index = 7
            }
            buttonsShow();
            animate(1250);
        };
        next.onclick = function () {
//由于上边定时器的作用，index会一直递增下去，我们只有5个小圆点，所以需要做出判断
            index += 1;
            if (index > 7) {
                index = 1
            }
            animate(-1250);
            buttonsShow();
        };
        for (var i = 0; i < buttons.length; i++) {
            buttons[i].onclick = function () {
//优化，当前图片点击当前的小圆点不执行以下代码。
                if (this.className == "on") {
                    return;
                }
                /* 这里获得鼠标移动到小圆点的位置，用this把index绑定到对象buttons[i]上，去谷歌this的用法 */
                /* 由于这里的index是自定义属性，需要用到getAttribute()这个DOM2级方法，去获取自定义index的属性*/
                var clickIndex = parseInt(this.getAttribute('index'));
                var offset = 1250 * (clickIndex - index); //这个index是当前图片停留时的index
                animate(offset);
                index = clickIndex; //存放鼠标点击后的位置，用于小圆点的正常显示
                buttonsShow();
            }
        }
        container.onmouseover = stop;
        container.onmouseout = play;
        play();
    }
</script>
</body>
</html>