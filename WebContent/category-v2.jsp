<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>全部店铺</title>
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
<link rel="shortcut icon" type="image/png"
	href="${pageContext.request.contextPath }/ico/favicon-16x16.png" />


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

<body class="res layout-1">


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
						<div class="bottom3">
							<div class="signin-w hidden-md hidden-sm hidden-xs">
								<ul class="signin-link blank">
									<li class="log login"><i class="fa fa-lock"></i> <a
										class="link-lg" href="login.html">登陆 </a> 或 <a
										href="register.html"> 注册</a></li>
								</ul>
							</div>
						</div>

					</div>
				</div>
			</div>
		</header>
		<!-- //Header Container  -->

		<!-- Main Container  -->
		<div class="main-container container">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i></a></li>
				<li><a href="#">所有商铺</a></li>
			</ul>

			<div class="row">

				<!--Middle Part Start-->
				<div id="content" class="col-md-9 col-sm-8">
					<div class="products-category">
						<h3 class="title-category ">饰品</h3>
						<div class="category-desc">
							<div class="row">
								<div class="col-sm-12">
									<div class="banners">
										<div>
											<a href="#"><img
												src="image/catalog/demo/category/img-cate.jpg"
												alt="img cate"><br></a>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!-- Filters -->
						<div class="product-filter product-filter-top filters-panel">
							<div class="row">
								<div class="col-md-5 col-sm-3 col-xs-12 view-mode">
									<div class="list-view">
										<button class="btn btn-default grid active" data-view="grid"
											data-toggle="tooltip" data-original-title="Grid">
											<i class="fa fa-th"></i>
										</button>
										<button class="btn btn-default list" data-view="list"
											data-toggle="tooltip" data-original-title="List">
											<i class="fa fa-th-list"></i>
										</button>
									</div>
								</div>
								<div
									class="short-by-show form-inline text-right col-md-7 col-sm-9 col-xs-12">
									<div class="form-group short-by">
										<label class="control-label" for="input-sort">排序方式:</label> <select
											id="shopsPxValue" class="form-control" onchange="shopsPx()">
											<option value="all" selected="selected">默认</option>
											<option value="shopsVolumeDi">销量 (低 &gt; 高)</option>
											<option value="shopsVolumeGao">销量 (高 &gt; 低)</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<!-- //end Filters -->
						<!--changed listings-->
						<div class="products-list row nopadding-xs so-filter-gird"
							id="shopsDiv">
							<%-- <c:forEach items="${ShopsInfoList }" var="ShopsInfoList">
								<div
									class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
									<div class="product-item-container">
										<div class="left-block left-b">

											<div class="product-image-container second_img">
												<a
													href="${pageContext.request.contextPath }/Main/ShowGoods.do?shopsId=${ShopsInfoList.shopsId }"
													target="_self" title="进入${ShopsInfoList.shopsName }"> <img
													src="${pageContext.request.contextPath }/${ShopsInfoList.shopsLogo }"
													class="img-1 img-responsive" alt="image1"
													style="width: 270px; height: 130px"> <img
													src="${pageContext.request.contextPath }/${ShopsInfoList.shopsLogo }"
													class="img-2 img-responsive" alt="image2"
													style="width: 270px; height: 130px">
												</a>
											</div>
										</div>
										<div class="right-block">
											<div class="button-group so-quickview cartinfo--left">
												<a
													href="${pageContext.request.contextPath }/Main/ShowGoods.do?shopsId=${ShopsInfoList.shopsId }">
													<button type="button" class="addToCart" title="进入店铺"
														onclick="">
														<span>进入店铺</span>
													</button>
												</a>
												<button type="button" class="wishlist btn-button"
													title="收藏店铺"
													onclick="addUserShops('${ShopsInfoList.shopsId }')">
													<i class="fa fa-heart-o"></i><span>收藏店铺</span>
												</button>
												<button type="button" class="compare btn-button" title="分享"
													onclick="">
													<i class="fa fa-retweet"></i><span>分享</span>
												</button>

											</div>
											<div class="caption hide-cont">
												<div class="ratings">
													<span class="rating-num">共
														${ShopsInfoList.goods.size() } 件商品</span>
												</div>
												<h4>
													<a href="product.html" title="Pastrami bacon"
														target="_self" style="color: #ff6415">${ShopsInfoList.shopsName }</a>
												</h4>

											</div>
											<div class="description item-desc">
												<p>${ShopsInfoList.shopsTextIntroduce }</p>
											</div>
											<div class="list-block">
												<a
													href="${pageContext.request.contextPath }/Main/ShowGoods.do?shopsId=${ShopsInfoList.shopsId }">
													<button class="addToCart btn-button" type="button"
														title="查看店铺" onclick="">
														<i class="fa fa-eye"></i>
													</button>
												</a>
												<button class="wishlist btn-button" type="button"
													title="收藏此店铺"
													onclick="addUserShops('${ShopsInfoList.shopsId }')">
													<i class="fa fa-heart"></i>
												</button>
												<button class="compare btn-button" type="button"
													title="分享店铺" onclick="">
													<i class="fa fa-refresh"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</c:forEach> --%>
						</div>
					</div>
				</div>


				<!--Middle Part End-->

				<!--Right Part Start -->
				<aside class="col-sm-4 col-md-3 content-aside" id="column-left">
					<div class="module product-simple">
						<h3 class="modtitle">
							<span>最新店铺</span>
						</h3>
						<div class="modcontent">
							<div id="so_extra_slider_1" class="so-extraslider">
								<!-- Begin extraslider-inner -->
								<div class="extraslider-inner">
									<c:forEach items="${ShopsInfoDescList }"
										var="ShopsInfoDescList">
										<div class="item ">
											<div class="product-layout item-inner style1 ">
												<div class="item-image">
													<div class="item-img-info">
														<a href="${pageContext.request.contextPath }/Main/ShowGoods.do?shopsId=${ShopsInfoDescList.shopsId }"
															target="_self" title="Mandouille short "> <img
															src="${pageContext.request.contextPath }/${ShopsInfoDescList.shopsLogo }"
															alt="Mandouille short" style="width: 120px; height: 40px">
														</a>
													</div>
												</div>
												<div class="item-info">
													<div class="item-title" style="margin-top: 10px">
														<a href="#" target="_self" title="Mandouille short"
															style="color: #ff6415; font-size: 16px;margin-top: 15px">${ShopsInfoDescList.shopsName }</a>
															<br>
															<a href="#" target="_self" title="Mandouille short"
															style="color: #ff6415; font-size: 10px;margin-top: 20px">共${ShopsInfoDescList.goods.size() }件商品</a>
													</div>
												</div>
											</div>
										</div>
										<br>
									</c:forEach>
				</aside>
				<!--Right Part End -->


			</div>
			<!--Middle Part End-->
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
		function addUserShops(shopsId) {
			$.ajax({
						url : "${pageContext.request.contextPath }/Main/addUserShops.do",//请求的url地址
						// dataType:"json",   返回格式为json
						async : true,//请求是否异步，默认为异步，这也是ajax重要特性
						data : {
							"shopsId" : shopsId
						}, //参数值
						type : "POST", //请求方式
						beforeSend : function() {
							$
									.post(
											"${pageContext.request.contextPath }/Main/SessionIsNull.do",
											function(date) {
												if (date == 0) {
													location.href = "login/demo.jsp";
												}
											});
						},
						success : function(req) {
							if (req > 0) {
								alert("已收藏至收藏夹");
							} else if (req == "have") {
								alert("此商铺已存在您的收藏夹");
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
	<script type="text/javascript">
	shopsPx();
		function shopsPx() {
			var shopsPxValue = document.getElementById("shopsPxValue").value;
			var zhi ="";
			$.ajax({
						url : "${pageContext.request.contextPath }/Main/Shops.do",//请求的url地址
						dataType : "json", //返回格式为json
						async : true,//请求是否异步，默认为异步，这也是ajax重要特性
						data : {
							"shopsPxValue" : shopsPxValue
						}, //参数值
						type : "POST", //请求方式
						beforeSend : function() {},
						success : function(req) {
							var data = eval(req);
							$.each(data,function(i, item) {
												zhi = zhi + "<div class='product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12'> <div class='product-item-container'> <div class='left-block left-b'><div class='product-image-container second_img'> <a href='${pageContext.request.contextPath }/Main/ShowGoods.do?shopsId="
														+ item.shopsId
														+ "' target='_self' title='进入"
														+ item.shopsName
														+ "'> <img src='${pageContext.request.contextPath }/"+item.shopsLogo+"' class='img-1 img-responsive' alt='image1' style='width: 270px; height: 130px'> <img src='${pageContext.request.contextPath }/"+item.shopsLogo+"' class='img-2 img-responsive' alt='image2' style='width: 270px; height: 130px'></a></div></div><div class='right-block'><div class='button-group so-quickview cartinfo--left'><a href='${pageContext.request.contextPath }/Main/ShowGoods.do?shopsId="
														+ item.shopsId
														+ "'><button type='button' class='addToCart' title='进入店铺' onclick=''><span>进入店铺</span></button></a><button type='button' class='wishlist btn-button' title='收藏店铺' onclick='addUserShops("
														+ item.shopsId
														+ ")'><i class='fa fa-heart-o'></i><span>收藏店铺</span></button><button type='button' class='compare btn-button' title='分享' onclick=''><i class='fa fa-retweet'></i><span>分享</span></button></div><div class='caption hide-cont'><div class='ratings'><span class='rating-num'>共"
														+ item.goods.length
														+ "件商品</span></div><h4><a href='product.html' title='Pastrami bacon' target='_self' style='color: #ff6415'>"
														+ item.shopsName
														+ "</a></h4></div><div class='description item-desc'><p>"
														+ item.shopsTextIntroduce
														+ "</p></div><div class='list-block'><a href='${pageContext.request.contextPath }/Main/ShowGoods.do?shopsId="
														+ item.shopsId
														+ "'><button class='addToCart btn-button' type='button' title='查看店铺' onclick=''><i class='fa fa-eye'></i></button></a><button class='wishlist btn-button' type='button' title='收藏此店铺' onclick='addUserShops("
														+ item.shopsId
														+ ")'><i class='fa fa-heart'></i></button><button class='compare btn-button' type='button'title='分享店铺' onclick=''><i class='fa fa-refresh'></i></button></div></div></div></div>"
														
											});
							document.getElementById("shopsDiv").innerHTML = zhi;
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
