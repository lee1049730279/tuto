<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%--<link rel="stylesheet" type="text/css" href="css/prd_2in1.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="css/nationwide.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="css/foot.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="css/filter_v2.css" />--%>

<link rel="stylesheet" type="text/css" href="css/pagination.css" />
<link rel="stylesheet" type="text/css" href="css/playground.css" />

<title>杭州到千岛湖旅游_11-1月杭州到千岛湖旅游线路报价_途牛</title>
<meta name="keywords" content="杭州到千岛湖游线路预定,杭州到千岛湖旅游价格,杭州到千岛湖旅游路线" />
<meta name="description" content="杭州到千岛湖旅游线路推荐,实时杭州到千岛湖游线路报价,途牛旅游网为您精选杭州到千岛湖旅游线路.要旅游,找途牛!Tuniu.com." />
    <link rel="canonical" href="http://www.tuniu.com/g47300/whole-hz-0/list-h0-j0_0/" />
    <meta name="applicable-device" content="pc"/>
    <script type="text/javascript">
    var d = new Date();
    var elk="P_CATEGORY";
</script>

<link rel="stylesheet" href="css/slider.css">

<script type="text/javascript" src="js/getdegree.js"></script>

<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="contentcontainer clearfix">
	<div style="text-align:right;margin-bottom: 15px">
		<span>找到和"${query}"相关的景点${recordCount}个&gt;&gt;</span>
	</div>
	<%--<div style="clear: both"></div>--%>
	<div class="thelist an_mo" liwithhan="category_列表页详情区域">
       <!-- 不同的产品类型对应不同的class -->
		<ul class="thebox clearfix">
			<c:forEach items="${tripList }" var="trip">
				<li>
					<div class="theinfo">
						<a class="clearfix" onclick="" href="" target="_blank" rel="nofollow">
							<div class="imgbox">
								<div class="img">
								<span class="icon-box">
									<img src="${trip.image }" style="display: inline" />
								</span>
							</div>

							</div>
							<dl class="detail">
								<dt>
									<p class="title">
										<%--<span class="main-tit" title="${trip.title}">--%>
											<%--<span class="f_0053aa">${trip.sTitle}</span>--%>
										<%--</span>--%>
										<span>【${trip.sTitle}】${trip.title}</span>
									</p>
								</dt>
							</dl>
							<div class="priceinfo">
								<div class="tnPrice">
									<i>&yen;</i><strong><fmt:formatNumber
										groupingUsed="false" maxFractionDigits="2"
										minFractionDigits="2" value="${trip.price / 100 }" /></strong>起
								</div>
								<%--<div class="comment-sat clearfix">--%>
                                    <%--<div class="comment-satNum">--%>
                                        <%--满意度<span><i>${trip.goodRate}</i>%</span>--%>
                                    <%--</div>--%>
                                    <%--<div class="trav-person">--%>
                                        <%--<p class="person-num"><i>${trip.buyTime}</i>人已出游</p>--%>
                                        <%--&lt;%&ndash;<p class="person-comment"><i>人</i>点评</p>&ndash;%&gt;--%>
                                    <%--</div>--%>
                                <%--</div>--%>
							</div>
						</a>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
      	<!--end pro_list-->
	<!--start 分页（除推荐页）-->
		<%--<div class="pagination">--%>
			<%--<div class="page-bottom">--%>
            	<%--<span class="page-start"><b class="icon"></b>上一页</span>--%>
				<%--<a href="" class="page-next">下一页<b class="icon"></b></a>--%>
			<%--</div>--%>
		<%--</div>--%>
<!--end 分页-->
	<div width="400" border="0" align="right">
		<c:if test="${totalPages>1}">
			<c:if test="${page==1 }">
				<a href="${pageContext.request.contextPath}?keyword=${query}&page=${page+1 }" class="small blue button">下一页&gt;&gt;</a>
				<a href="${pageContext.request.contextPath}?keyword=${query}&page=${totalPages }" class="small blue button">尾页&gt;&gt;&gt;</a>
			</c:if>
			<c:if test="${page==totalPages }">
				<a href="${pageContext.request.contextPath}?keyword=${query}&page=1" class="small blue button">&lt;&lt;首页</a>
				<a href="${pageContext.request.contextPath}?keyword=${query}&page=${page-1}" class="small blue button">&lt;&lt;上一页</a>
			</c:if>

			<c:if test="${page>1 && page<totalPages }">
				<a href="${pageContext.request.contextPath}?keyword=${query}&page=1" class="small blue button">&lt;&lt;首页</a>
				<a href="${pageContext.request.contextPath}?keyword=${query}&page=${page-1}" class="small blue button">&lt;&lt;上一页</a>
				<a href="${pageContext.request.contextPath}?keyword=${query}&page=${page+1 }" class="small blue button">下一页&gt;&gt;</a>
				<a href="${pageContext.request.contextPath}?keyword=${query}&page=${totalPages }" class="small blue button">尾页&gt;&gt;&gt;</a>
			</c:if>
		</c:if>
		<span>&nbsp;&nbsp;当前页${page }/${totalPages }总页数&nbsp;</span>
	</div>
</div>
</body>
</html>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	//改变搜索栏中内容
	$("#keyword-input").val('${query}');


</script>

