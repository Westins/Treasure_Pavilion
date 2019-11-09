<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>我的愿望清单</title>
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
<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
<link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="js/datetimepicker/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="css/themecss/lib.css" rel="stylesheet">
<link href="js/jquery-ui/jquery-ui.min.css" rel="stylesheet">
<link href="js/minicolors/miniColors.css" rel="stylesheet">

<!-- Theme CSS
    ============================================ -->
<link href="css/themecss/so_searchpro.css" rel="stylesheet">
<link href="css/themecss/so_megamenu.css" rel="stylesheet">
<link href="css/themecss/so-categories.css" rel="stylesheet">
<link href="css/themecss/so-listing-tabs.css" rel="stylesheet">
<link href="css/themecss/so-category-slider.css" rel="stylesheet">
<link href="css/themecss/so-newletter-popup.css" rel="stylesheet">

<link href="css/footer/footer1.css" rel="stylesheet">
<link href="css/header/header1.css" rel="stylesheet">
<link id="color_scheme" href="css/theme.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

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
			<!-- Header Top -->
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

			<!-- Header Bottom -->
			<div class="header-bottom hidden-compact">
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
																<p class="close-menu"></p> <a
																href="${pageContext.request.contextPath }/login/demo.jsp"
																class="clearfix"> <strong>用户登录</strong>
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
																			<li><a href="CancellationUserInfo"
																				class="main-menu">切换用户</a>
																			<li><a href="CancellationUserInfo"
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
				<li><a href="#">用户信息</a></li>
				<li><a href="#">我的愿望清单</a></li>
			</ul>

			<div class="row">
				<!--Middle Part Start-->
				<div id="content" class="col-sm-9">
					<h2 class="title">我的愿望清单</h2>
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<td class="text-center">商品图</td>
									<td class="text-left">商品名</td>
									<td class="text-left">所属店铺</td>
									<td class="text-right">状态</td>
									<td class="text-right">单价</td>
									<td class="text-right">操作</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${UserGoodsByUserList }"
									var="UserGoodsByUserList">
									<c:forEach items="${UserGoodsByUserList.goods }"
										var="UserGoodsList">
										<tr>
											<td class="text-center"><a
												href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${UserGoodsList.goodsId }"><img
													width="80px" height="60px"
													src="${pageContext.request.contextPath }/${UserGoodsList.goodsImg }"
													alt="Aspire Ultrabook Laptop"
													title="Aspire Ultrabook Laptop"> </a></td>
											<td class="text-left"><a
												href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${UserGoodsList.goodsId }">${UserGoodsList.goodsName }</a></td>
											<td class="text-left"><a
												href="${pageContext.request.contextPath }/Main/ShowGoods.do?shopsId=${UserGoodsList.shopsId }"><span>进入店铺</span></a></td>
											<td class="text-right"><c:if
													test="${UserGoodsList.goodsState=='1' }">正在出售</c:if> <c:if
													test="${UserGoodsList.goodsState=='3' }">正在打折</c:if></td>
											<td class="text-right">
												<div class="price">
													<c:if test="${UserGoodsList.goodsDiscount!=0 }">
														<span class="price-new product-price">${UserGoodsList.goodsOriginalPrice*UserGoodsList.goodsDiscount }</span>&nbsp;
																	<span class="price-old ">${UserGoodsList.goodsOriginalPrice }</span>&nbsp;&nbsp;
																</c:if>
													<c:if test="${UserGoodsList.goodsDiscount==0 }">
														<span class="price-new product-price">${UserGoodsList.goodsOriginalPrice }</span>&nbsp;&nbsp;
																</c:if>
												</div>

											</td>
											<td class="text-right"><a
												href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${UserGoodsList.goodsId }">
													<button class="btn btn-primary" title=""
														data-toggle="tooltip" onclick="" type="button"
														data-original-title="添加到购物车">
														<i class="fa fa-shopping-cart"></i>
													</button>
											</a> <a class="btn btn-danger" title="" data-toggle="tooltip"
												onclick="deleteUserGoods('${UserGoodsByUserList.userGoodsId }')"
												data-original-title="移除"><i class="fa fa-times"></i></a></td>
										</tr>
									</c:forEach>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

				<!--Middle Part End-->
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
			</div>
		</div>
		<!-- //Main Container -->

		<!-- Footer Container -->
		<!-- //end Footer Container -->

	</div>


	<!-- Include Libs & Plugins
============================================ -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript" src="js/slick-slider/slick.js"></script>
	<script type="text/javascript" src="js/themejs/libs.js"></script>
	<script type="text/javascript" src="js/unveil/jquery.unveil.js"></script>
	<script type="text/javascript"
		src="js/countdown/jquery.countdown.min.js"></script>
	<script type="text/javascript"
		src="js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
	<script type="text/javascript" src="js/datetimepicker/moment.js"></script>
	<script type="text/javascript"
		src="js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui/jquery-ui.min.js"></script>


	<!-- Theme files
============================================ -->


	<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
	<script type="text/javascript" src="js/themejs/addtocart.js"></script>
	<script type="text/javascript" src="js/themejs/application.js"></script>
	<script type="text/javascript">
		function deleteUserGoods(userGoodsId) {
			$
					.ajax({
						url : "${pageContext.request.contextPath }/Main/deleteUserGoods.do",//请求的url地址
						// dataType:"json",   返回格式为json
						async : true,//请求是否异步，默认为异步，这也是ajax重要特性
						data : {
							"usergoodsId" : userGoodsId
						}, //参数值
						type : "POST", //请求方式
						beforeSend : function() {
							//请求前
						},
						success : function(req) {
							//请求成功
							if (req > 0) {
								location.reload()
							}
						},
						complete : function() {
							//请求完成的处理
						},
						error : function() {
							//请求出错处理
						}
					});
		}
	</script>
</body>
</html>
