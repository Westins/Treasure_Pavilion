<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>我的订单信息</title>
<meta charset="utf-8">
<meta name="keywords"
	content="html5 template, best html5 template, best html template, html5 basic template, multipurpose html5 template, multipurpose html template, creative html templates, creative html5 templates" />
<meta name="description"
	content="SuperMarket is a powerful Multi-purpose HTML5 Template with clean and user friendly design. It is definite a great starter for any eCommerce web project." />
<meta name="author" content="Magentech">
<meta name="robots" content="index, follow" />

<!-- Mobile specific metas
    ============================================ -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicon
    ============================================ -->
<link rel="shortcut icon" type="image/png" href="ico/favicon-16x16.png" />


<!-- Libs CSS
    ============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath }/css/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/js/datetimepicker/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/js/owl-carousel/owl.carousel.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/themecss/lib.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/js/jquery-ui/jquery-ui.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/js/minicolors/miniColors.css"
	rel="stylesheet">

<!-- Theme CSS
    ============================================ -->
<link
	href="${pageContext.request.contextPath }/css/themecss/so_searchpro.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so_megamenu.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so-categories.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so-listing-tabs.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so-category-slider.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so-newletter-popup.css"
	rel="stylesheet">

<link href="${pageContext.request.contextPath }/css/footer/footer1.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/header/header1.css"
	rel="stylesheet">
<link id="color_scheme"
	href="${pageContext.request.contextPath }/css/theme.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/responsive.css"
	rel="stylesheet">

<!-- Google web fonts
   ============================================ -->
<link
	href='https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700'
	rel='stylesheet' type='text/css'>
<style type="text/css">
body {
	font-family: 'Poppins', sans-serif;
}
</style>

</head>

<body class="res layout-1 layout-subpage">


	<div id="wrapper" class="wrapper-fluid banners-effect-5">

		<!-- Header Container  -->
		<header id="header" class=" typeheader-1">
		
<div class="header-top hidden-compact">
				<div class="container">
					<div class="row"></div>
				</div>
			</div>
			<!-- Header center -->
			<div class="header-middle">
				<div class="container">
					<div class="row">
						<!-- Logo -->
						<div class="navbar-logo col-lg-2 col-md-3 col-sm-4 col-xs-12">
							<div class="logo">
								<a href="index.html"><img src="image/catalog/logo.png"
									title="Your Store" alt="Your Store" /></a>
							</div>
						</div>
						<!-- //end Logo -->


						<!-- Search -->
						<div class="col-lg-7 col-md-6 col-sm-5">
							<div class="search-header-w">
								<div class="icon-search hidden-lg hidden-md hidden-sm">
									<i class="fa fa-search"></i>
								</div>

								<div id="sosearchpro" class="sosearchpro-wrapper so-search ">
									<form method="post" action="selectGoodsOrShops">
										<div id="search0" class="search input-group form-group">
											<div
												class="select_category filter_type  icon-select hidden-sm hidden-xs">
												<select class="no-border" name="goodsOrshops">
													<option value="goods">商品</option>
													<option value="shops">商铺</option>
												</select>
											</div>
											<input class="autosearch-input form-control" type="text"
												value="" size="50" autocomplete="off"
												placeholder="想找些什么呢..." name="selectInfoByCondition">
											<button type="submit" class="button-search btn btn-primary"
												name="submit_search">
												<i class="fa fa-search"></i>
											</button>
										</div>
										<input type="hidden" name="route" value="product/search" />
									</form>
								</div>
							</div>
						</div>
						<!-- //end Search -->						
					</div>
				</div>
			</div>
			<!-- //Header center -->

			<!-- Header Bottom --><div class="header-bottom hidden-compact">
				<div class="container">
					<div class="row">

						<div class="bottom1 menu-vertical col-lg-2 col-md-3 col-sm-3">
							<div class="responsive so-megamenu megamenu-style-dev ">
								<div class="so-vertical-menu ">
									<nav class="navbar-default">
										<div class="container-megamenu vertical">
											<div id="menuHeading">
												<div class="megamenuToogle-wrapper">
													<div class="megamenuToogle-pattern">
														<div class="container">
															<div>
																<span></span> <span></span> <span></span>
															</div>
															所有类别
														</div>
													</div>
												</div>
											</div>

											<div class="navbar-header">
												<button type="button" id="show-verticalmenu"
													data-toggle="collapse" class="navbar-toggle">
													<i class="fa fa-bars"></i> <span> 所有类别 </span>
												</button>
											</div>
											<div class="vertical-wrapper">
												<span id="remove-verticalmenu" class="fa fa-times"></span>
												<div class="megamenu-pattern">
													<div class="container-mega">
														<ul class="megamenu">
															<c:forEach items="${GoodsTypeList }" var="GoodsTypeList">
																<li class="item-vertical  with-sub-menu hover">
																	<p class="close-menu"></p> <a href="#" class="clearfix">
																		<img
																		src="${pageContext.request.contextPath }/image/catalog/menu/icons/ico10.png"
																		alt="icon"> <span style="font-size: 16px">${GoodsTypeList.goodsTypeName }</span>
																		<b class="fa-angle-right"></b>
																</a>
																	<div class="sub-menu" data-subwidth="60">
																		<div class="content">
																			<div class="row">
																				<div class="col-sm-12">
																					<div class="row">
																						<div class="col-md-4 static-menu">
																							<div class="menu">
																								<ul>
																									<c:forEach items="${GoodsTypesList }"
																										var="GoodsTypesList">
																										<c:if
																											test="${GoodsTypeList.goodTypeId==GoodsTypesList.goodstypeId}">
																											<li><a
																												href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsTypes.do?GoodsTypeId=${GoodsTypesList.goodstypeId}"
																												style="font-size: 18px">${GoodsTypesList.goodstypesName }</a>
																											</li>
																										</c:if>
																									</c:forEach>
																								</ul>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</li>

															</c:forEach>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</nav>
								</div>
							</div>

						</div>

						<!-- Main menu -->
						<div class="main-menu-w col-lg-10 col-md-9">
							<div class="responsive so-megamenu megamenu-style-dev">
								<nav class="navbar-default">
									<div class=" container-megamenu  horizontal open ">
										<div class="navbar-header">
											<button type="button" id="show-megamenu"
												data-toggle="collapse" class="navbar-toggle">
												<span class="icon-bar"></span> <span class="icon-bar"></span>
												<span class="icon-bar"></span>
											</button>
										</div>

										<div class="megamenu-wrapper">
											<span id="remove-megamenu" class="fa fa-times"></span>
											<div class="megamenu-pattern">
												<div class="container-mega">
													<ul class="megamenu" data-transition="slide"
														data-animationtime="250">
														<li class="home hover"><a
															href="${pageContext.request.contextPath }/index.jsp">主界面</a></li>
														<li class="">
															<p class="close-menu"></p> <a
															href="${pageContext.request.contextPath }/category.jsp"
															class="clearfix"> <strong>全部商品</strong> <span
																class="label"></span>
														</a>
														</li>
														<li class="">
															<p class="close-menu"></p> <a
															href="${pageContext.request.contextPath }/category-v2.jsp"
															class="clearfix"> <strong>全部商铺</strong> <span
																class="label"></span>
														</a>
														</li>
														<li class="with-sub-menu hover">
															<p class="close-menu"></p> <a
															href="${pageContext.request.contextPath }/wishlist.jsp"
															class="clearfix"> <strong>收藏夹</strong> <b
																class="caret"></b>
														</a>
															<div class="sub-menu"
																style="width: 180px; display: none;">
																<div class="content">
																	<ul>
																		<li><a
																			href="${pageContext.request.contextPath }/wishlist.jsp"
																			class="main-menu">收藏的商品</a></li>
																		<li><a
																			href="${pageContext.request.contextPath }/Shops.jsp"
																			class="main-menu">收藏的商铺</a>
																	</ul>
																</div>
															</div>
														</li>
														<li class="with-sub-menu hover">
															<p class="close-menu"></p> <a
															href="${pageContext.request.contextPath }/cart.jsp"
															class="clearfix"> <strong>我的购物车</strong> <b
																class="caret"></b>
														</a>
															<div class="sub-menu"
																style="width: 180px; display: none;">
																<div class="content">
																	<ul>
																		<li><a
																			href="${pageContext.request.contextPath }/cart.jsp"
																			class="main-menu">我的购物车</a></li>
																		<li><a
																			href="${pageContext.request.contextPath }/order-history.jsp"
																			class="main-menu">我的订单</a>
																	</ul>
																</div>
															</div>
														</li>
														<c:if test="${userinfo==null }">
																<li class="" style="float: right; margin-right: 10px">
																	<p class="close-menu"></p> <a href="${pageContext.request.contextPath }/login/demo.jsp" class="clearfix">
																		<strong>用户登录</strong>
																</a>
																</li>
															</c:if>
															<c:if test="${userinfo!=null }">															　　　
																<li class="with-sub-menu hover"
																	style="float: right; margin-right: 10px">
																	<p class="close-menu"></p> <a
																	href="${pageContext.request.contextPath }/cart.jsp"
																	class="clearfix"> <strong>我的信息</strong> <b
																		class="caret"></b>
																</a>
																	<div class="sub-menu"
																		style="width: 150px; display: none;">
																		<div class="content">
																			<ul>
																				<li><a
																					href="CancellationUserInfo"
																					class="main-menu">切换用户</a>
																				<li><a
																					href="CancellationUserInfo"
																					class="main-menu">注销</a>
																			</ul>
																		</div>
																	</div>
																</li>
																&ensp; &ensp; 
																<li class="" style="float: right; margin-right: 10px">
																	<p class="close-menu"></p> <a href="${pageContext.request.contextPath }/shops/addShop.jsp" class="clearfix">
																		<strong>我要开店</strong>
																</a>
																</li>
															</c:if>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</nav>
							</div>
						</div>
						<!-- //end Main menu -->
					</div>
				</div>
			</div>
		</header>
		<!-- //Header Container  -->

		<!-- Main Container  -->
		<div class="main-container container">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i></a></li>
				<li><a href="#">历史订单</a></li>
			</ul>

			<div class="row">
				<!--Middle Part Start-->
				<div id="content" class="col-sm-9">
					<h2 class="title">历史订单</h2>
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<td class="text-center">图片</td>
									<td class="text-left">商品名</td>
									<td class="text-center">订单号</td>
									<td class="text-center">数量</td>
									<td class="text-center">状态</td>
									<td class="text-center">下单日期</td>
									<td class="text-center">总金额</td>
									<td class="text-center">操作</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${orderinfoList }" var="orderinfoList">
									<tr>
										<td class="text-center"><a
											href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${orderinfoList.goods.goodsId }"><img
												width="85" class="img-thumbnail"
												title="Aspire Ultrabook Laptop"
												alt="Aspire Ultrabook Laptop"
												src="${pageContext.request.contextPath }/${orderinfoList.goods.goodsImg }">
										</a></td>
										<td class="text-left"><a
											href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${orderinfoList.goods.goodsId }">${orderinfoList.goods.goodsName }</a>
										</td>
										<td class="text-center">${orderinfoList.ordersInfoNo }</td>
										<td class="text-center">${orderinfoList.ordersInfoNum }</td>
										<td class="text-center"><c:if
												test="${orderinfoList.ordersInfoState==0 }">完成！</c:if> <c:if
												test="${orderinfoList.ordersInfoState==1 }">等待商家发货！</c:if> <c:if
												test="${orderinfoList.ordersInfoState==2 }">已经发货！</c:if> <c:if
												test="${orderinfoList.ordersInfoState==3 }">正在运输中！</c:if> <c:if
												test="${orderinfoList.ordersInfoState==4 }">派送中！</c:if> <c:if
												test="${orderinfoList.ordersInfoState==5 }">已签收，等待评论！</c:if>
												<c:if
												test="${orderinfoList.ordersInfoState==6 }">未完成</c:if>
										</td>
										<td class="text-center">${orderinfoList.ordersInfoTime }</td>
										<td class="text-center">${orderinfoList.ordersInfoPrice }</td>
										<td class="text-center"><a class="btn btn-info" title=""
											data-toggle="tooltip"
											href="${pageContext.request.contextPath }/Main/getOrderByordersId.do?ordersInfoId=${orderinfoList.ordersInfoId }"
											data-original-title="查看详细"><i class="fa fa-eye"></i></a> <c:if
												test="${orderinfoList.ordersInfoState==5 }">
												<button type="button" class="btn btn-primary btn-lg"
													data-toggle="modal" data-target="#myModal"
													style="width: 150px; height: 35px"
													onclick="pl('${orderinfoList.ordersInfoId }')">评论</button>
											</c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- 评论框 --------------------- -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">评论该商品</h4>
								</div>
								<div class="modal-body">
									<input type="hidden" id="OrdersId"><input type="hidden"
										id="GoodsId">
									<div style="width: 380px; height: 300px; margin: auto"
										id="plImg"></div>
									<br>
									<div class="block"
										style="margin-left: 200px; margin-top: 20px; margin-bottom: 20px">
										<ul>

											<li data-default-index="0">评价星级: <span><img
													src="img/x1.png"> <img src="img/x1.png"> <img
													src="img/x1.png"> <img src="img/x1.png"> <img
													src="img/x1.png"> </span> <em class="level"></em><input
												type="hidden" id="ReviewRated"></li>
										</ul>
									</div>
									<div style="margin-left: 90px">
										<textarea rows="4" cols="42" style="font-size: 18px"
											placeholder="在此输入您对于该商品的评价" id="plValue"></textarea>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="button" class="btn btn-primary" onclick="okPl()">确认评论</button>
								</div>
							</div>
						</div>
					</div>


					<!-- 评论框 -->
				</div>
				<!--Middle Part End-->
				<!--Right Part Start -->
				<aside class="col-sm-3 hidden-xs content-aside col-md-3"
					id="column-right">
					<h2 class="subtitle">用户信息操作</h2>
					<div class="list-group">
						<ul class="list-item">
							<hr>
							<li><a href="register.html">用户信息显示...</a></li>
							<hr>
							<li><a href="login.html">个人信息</a></li>
							<hr>
							<li><a href="register.html">订单信息</a></li>
							<hr>
							<li><a href="register.html">我的消息</a></li>
							<hr>
							<li><a href="#">历史订单</a></li>
							<hr>
							<li><a href="#">愿望清单</a></li>
							<hr>
							<li><a href="#">收藏的店铺</a>
								<hr>
						</ul>
					</div>
				</aside>
				<!--Right Part End -->
			</div>
		</div>
		<!-- //Main Container -->
	</div>


	<!-- Include Libs & Plugins
	============================================ -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/slick-slider/slick.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/libs.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/unveil/jquery.unveil.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/countdown/jquery.countdown.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/datetimepicker/moment.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery-ui/jquery-ui.min.js"></script>


	<!-- Theme files
============================================ -->


	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/so_megamenu.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/addtocart.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/application.js"></script>
	<script type="text/javascript">
		function pl(orderId) {
			var plImg = document.getElementById("plImg")
			$
					.ajax({
						url : "${pageContext.request.contextPath }/Main/getOrderinfoByOrderId.do",//请求的url地址
						dataType : "json",
						async : true,//请求是否异步，默认为异步，这也是ajax重要特性
						data : {
							"orderId" : orderId
						},
						type : "POST", //请求方式
						beforeSend : function() {
						},
						success : function(req) {
							var data = eval(req);
							document.getElementById("OrdersId").value = data.ordersInfoId;
							document.getElementById("GoodsId").value = data.goodsId;
							var z = "<img src='${pageContext.request.contextPath }/"
									+ data.goods.goodsImg
									+ "' class='img-polaroid' style='width: 100%; height: 100%'>";
							plImg.innerHTML = z;
							document.getElementById("plValue").value = "";
						},
						complete : function() {
						},
						error : function() {
						}
					});
		}
		function okPl() {
			var plValue = document.getElementById("plValue").value//评价内容""
			var OrdersId = document.getElementById("OrdersId").value //订单ID
			var GoodsId = document.getElementById("GoodsId").value
			var ReviewRated = document.getElementById("ReviewRated").value;
			if (plValue == null || ReviewRated == null || plValue == ""
					|| ReviewRated == "") {
				alert("亲！请填写完整评论信息");
			} else {
				$
						.ajax({
							url : "${pageContext.request.contextPath }/Main/addGoodsReview.do",//请求的url地址
							async : true,//请求是否异步，默认为异步，这也是ajax重要特性
							data : {
								"goodsReviewTest" : plValue,
								"OrdersId" : OrdersId,
								"goodsId" : GoodsId,
								"goodsReviewRated" : ReviewRated
							},
							type : "POST", //请求方式
							beforeSend : function() {
							},
							success : function(req) {
								if (req > 0) {
									alert("评论给成功！");
									location.reload();
								}
							},
							complete : function() {
							},
							error : function() {
							}
						});
			}
		}
		function byIndexLeve(index) {

			var str = "";
			switch (index) {
			case 0:
				document.getElementById("ReviewRated").value = 1;
				str = "差评";
				break;
			case 1:
				document.getElementById("ReviewRated").value = 2;
				str = "较差";
				break;
			case 2:
				document.getElementById("ReviewRated").value = 3;
				str = "一般";
				break;
			case 3:
				document.getElementById("ReviewRated").value = 4;
				str = "不错";
				break;
			case 4:
				document.getElementById("ReviewRated").value = 5;
				str = "好评";
				break;
			}
			return str;
		}
		//  星星数量
		var stars = [ [ 'x2.png', 'x1.png', 'x1.png', 'x1.png', 'x1.png' ],
				[ 'x2.png', 'x2.png', 'x1.png', 'x1.png', 'x1.png' ],
				[ 'x2.png', 'x2.png', 'x2.png', 'x1.png', 'x1.png' ],
				[ 'x2.png', 'x2.png', 'x2.png', 'x2.png', 'x1.png' ],
				[ 'x2.png', 'x2.png', 'x2.png', 'x2.png', 'x2.png' ], ];
		$(".block li").find("img").hover(
				function(e) {
					var obj = $(this);
					var index = obj.index();
					if (index < (parseInt($(".block li").attr(
							"data-default-index")) - 1)) {
						return;
					}
					var li = obj.closest("li");
					var star_area_index = li.index();
					for (var i = 0; i < 5; i++) {
						li.find("img").eq(i).attr("src",
								"img/" + stars[index][i]);//切换每个星星
					}
					$(".level").html(byIndexLeve(index));
				})
	</script>
</body>
</html>
