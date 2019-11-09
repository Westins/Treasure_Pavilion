<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>宝阁购物商场</title>
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

<body class="common-home res layout-1">


	<div id="wrapper" class="wrapper-fluid banners-effect-3">
		<!-- Header Container  -->
		<header id="header" class=" typeheader-1">
			<!-- Header Top -->
			<div class="header-top hidden-compact">
				<div class="container">
					<div class="row"></div>
				</div>
			</div>
			<!-- //Header Top -->
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
																		<p class="close-menu"></p> <a href="#"
																		class="clearfix"> <img
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
																													href="getGoodsInfoByGoodsTypes.do?GoodsTypesId=${GoodsTypesList.goodstypesId}"
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
															<!-- <li class="">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<strong>博客广场</strong>
															</a>
															</li>
															<li class="">
																<p class="close-menu"></p> <a href="blog-page.html"
																class="clearfix"> <strong>关于我们</strong> <span
																	class="label"></span>
															</a>
															</li> -->
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
			<div id="content">
				<div class="content-top-w">

					<div class="col-lg-2 col-md-12 col-sm-12 col-xs-12 main-left">
						<div class="module col1 hidden-sm hidden-xs"></div>
					</div>
					<div class="col-lg-10 col-md-12 col-sm-12 col-xs-12 main-right">
						<div class="slider-container row">

							<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12 col2">
								<div class="module sohomepage-slider ">
									<div class="yt-content-slider" data-rtl="yes"
										data-autoplay="no" data-autoheight="no" data-delay="4"
										data-speed="0.6" data-margin="0" data-items_column00="1"
										data-items_column0="1" data-items_column1="1"
										data-items_column2="1" data-items_column3="1"
										data-items_column4="1" data-arrows="no" data-pagination="yes"
										data-lazyload="yes" data-loop="no" data-hoverpause="yes">
										<c:forEach items="${MainimgList }" var="MainimgList">
											<div class="yt-content-slide">
												<a href="#"><img
													src="${pageContext.request.contextPath }/${MainimgList.goods.goodsImgIntroduce }"
													alt="slider1" class="img-responsive"
													style="width: 1200px; height: 600px"></a>
											</div>
										</c:forEach>
									</div>

									<div class="loadeding"></div>
								</div>

							</div>


							<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12 col3">
								<div class="module product-simple extra-layout1">
									<h3 class="modtitle">
										<span>畅销榜</span>
									</h3>
									<div class="modcontent">
										<div id="so_extra_slider_1" class="so-extraslider">
											<!-- Begin extraslider-inner -->
											<div class="yt-content-slider extraslider-inner"
												data-rtl="yes" data-pagination="yes" data-autoplay="no"
												data-delay="4" data-speed="0.6" data-margin="0"
												data-items_column00="1" data-items_column0="1"
												data-items_column1="1" data-items_column2="1"
												data-items_column3="1" data-items_column4="1"
												data-arrows="no" data-lazyload="yes" data-loop="no"
												data-buttonpage="top">

												<div class="item ">
													<c:forEach items="${GoodsByVolumeList }"
														var="GoodsByVolumeList">
														<div class="product-layout item-inner style1 ">
															<div class="item-image">
																<div class="item-img-info">
																	<a
																		href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsByVolumeList.goodsId }"
																		target="_self" title="Mandouille short "> <img
																		src="${pageContext.request.contextPath }/${GoodsByVolumeList.goodsImg }"
																		alt="Mandouille short">
																	</a>
																</div>
															</div>
															<div class="item-info">
																<div class="item-title">
																	<a href="product.html" target="_self"
																		title="Mandouille short">${GoodsByVolumeList.goodsName }</a>
																</div>
																<div class="rating">
																	<span class="fa fa-stack"><i
																		class="fa fa-star fa-stack-2x"></i></span> <span
																		class="fa fa-stack"><i
																		class="fa fa-star fa-stack-2x"></i></span> <span
																		class="fa fa-stack"><i
																		class="fa fa-star fa-stack-2x"></i></span> <span
																		class="fa fa-stack"><i
																		class="fa fa-star fa-stack-2x"></i></span> <span
																		class="fa fa-stack"><i
																		class="fa fa-star-o fa-stack-2x"></i></span>
																</div>
																<div class="content_price price">
																	<c:if test="${GoodsByVolumeList.goodsDiscount!=1 }">
																		<span class="price-new product-price">${GoodsByVolumeList.goodsOriginalPrice*GoodsByVolumeList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsByVolumeList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
																	<c:if test="${GoodsByVolumeList.goodsDiscount==1 }">
																		<span class="price-new product-price">${GoodsByVolumeList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
																</div>
															</div>
															<!-- End item-info -->
															<!-- End item-wrap-inner -->
														</div>
													</c:forEach>
												</div>
											</div>
											<!--End extraslider-inner -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row content-main-w">

					<div class="col-lg-2 col-md-3 col-sm-4 col-xs-12 main-left">

						<div class="module">
							<div class="banners banners2">
								<div class="banner">
									<a href="#"><img
										src="${pageContext.request.contextPath }/image/catalog/banners/banner1.jpg"
										alt="image"></a>
								</div>
							</div>
						</div>

						<div class="module product-simple extra-layout1">
							<h3 class="modtitle">
								<span>最新商品</span>
							</h3>
							<div class="modcontent">
								<div id="so_extra_slider_1" class="so-extraslider">
									<!-- Begin extraslider-inner -->
									<div class="yt-content-slider extraslider-inner" data-rtl="yes"
										data-pagination="yes" data-autoplay="no" data-delay="4"
										data-speed="0.6" data-margin="0" data-items_column00="1"
										data-items_column0="1" data-items_column1="1"
										data-items_column2="1" data-items_column3="1"
										data-items_column4="1" data-arrows="no" data-lazyload="yes"
										data-loop="no" data-buttonpage="top">
										<div class="item ">
											<c:forEach items="${GoodsByGoodsTimeList }"
												var="GoodsByGoodsTimeList">
												<div class="product-layout item-inner style1 ">
													<div class="item-image">
														<div class="item-img-info">
															<a
																href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsByGoodsTimeList.goodsId }"
																target="_self" title="Mandouille short "><img
																style="width: 130px; height: 70px"
																src="${pageContext.request.contextPath }/${GoodsByGoodsTimeList.goodsImg }"
																alt="Mandouille short"></a>
														</div>
													</div>
													<div class="item-info">
														<div class="item-title">
															<a href="product.html" target="_self"
																title="Mandouille short">${GoodsByGoodsTimeList.goodsName }</a>
														</div>
														<div class="rating">
															<span class="fa fa-stack"><i
																class="fa fa-star fa-stack-2x"></i></span> <span
																class="fa fa-stack"><i
																class="fa fa-star fa-stack-2x"></i></span> <span
																class="fa fa-stack"><i
																class="fa fa-star fa-stack-2x"></i></span> <span
																class="fa fa-stack"><i
																class="fa fa-star fa-stack-2x"></i></span> <span
																class="fa fa-stack"><i
																class="fa fa-star-o fa-stack-2x"></i></span>
														</div>
														<div class="content_price price">
															<c:if test="${GoodsByGoodsTimeList.goodsDiscount!=1 }">
																<span class="price-new product-price">${GoodsByGoodsTimeList.goodsOriginalPrice*GoodsByGoodsTimeList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsByGoodsTimeList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
															<c:if test="${GoodsByGoodsTimeList.goodsDiscount==1 }">
																<span class="price-new product-price">${GoodsByGoodsTimeList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
														</div>
													</div>
													<!-- End item-wrap-inner -->
												</div>
											</c:forEach>
										</div>
									</div>
									<!--End extraslider-inner -->
								</div>
							</div>
						</div>

						<div class="module">
							<div class="policy-w">
								<a href="#"><img src="image/catalog/banners/call-us.jpg"
									alt="image"></a>
								<ul class="block-infos">
									<li class="info1">
										<div class="inner">
											<i class="fa fa-file-text-o"></i>
											<div class="info-cont">
												<a href="#">用户信息填写</a>
												<p>保证自己信息的</p>
											</div>
										</div>
									</li>
									<li class="info2">
										<div class="inner">
											<i class="fa fa-shield"></i>
											<div class="info-cont">
												<a href="#">网络防护</a>
												<p>保护您的信息</p>
											</div>
										</div>
									</li>
									<li class="info3">
										<div class="inner">
											<i class="fa fa-gift"></i>
											<div class="info-cont">
												<a href="#">限时折扣</a>
												<p>给你想不到的价格!</p>
											</div>
										</div>
									</li>
									<li class="info4">
										<div class="inner">
											<i class="fa fa-money"></i>
											<div class="info-cont">
												<a href="#">商品</a>
												<p>每天都有不同的商品上架</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<div class="module extra">
							<h3 class="modtitle">
								<span>推荐商品</span>
							</h3>
							<div class="modcontent">
								<div id="so_extra_slider_1" class="so-extraslider">
									<!-- Begin extraslider-inner -->
									<div class="products-list yt-content-slider extraslider-inner"
										data-rtl="yes" data-pagination="yes" data-autoplay="no"
										data-delay="4" data-speed="0.6" data-margin="0"
										data-items_column00="1" data-items_column0="1"
										data-items_column1="1" data-items_column2="1"
										data-items_column3="1" data-items_column4="1" data-arrows="no"
										data-lazyload="yes" data-loop="no" data-buttonpage="top">
										<%-- 推荐商品循环 --%>
										<div class="item">
											<c:forEach items="${GoodsByDiscountList }"
												var="GoodsByDiscountList">
												<div
													class="item-inner product-layout transition product-grid">
													<div class="product-item-container">
														<div class="left-block left-b">
															<div class="product-image-container second_img">
																<a
																	href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsByDiscountList.goodsId }"
																	target="_self" title="Duis aute irure "> <img
																	src="${pageContext.request.contextPath }/${GoodsByDiscountList.goodsImg }"
																	class="img-1 img-responsive" alt="image1"> <img
																	src="${pageContext.request.contextPath }/${GoodsByDiscountList.goodsImg }"
																	class="img-2 img-responsive" alt="image2">
																</a>
															</div>
															<!--quickview-->
															<div class="so-quickview">
																<a
																	class="iframe-link btn-button quickview quickview_handler visible-lg"
																	href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsId.do?GoodsId=${GoodsByDiscountList.goodsId }"
																	title="查看详细" data-fancybox-type="iframe"><i
																	class="fa fa-eye"></i><span>查看详细</span></a>
															</div>
															<!--end quickview-->
														</div>
														<div class="right-block">
															<div class="button-group so-quickview cartinfo--left">
																<a
																	href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsByDiscountList.goodsId }">
																	<button type="button" class="addToCart" title="添加到购物车"
																		onclick="cart.add('60 ');">
																		<span>添加到购物车</span>
																	</button>
																</a>
																<button type="button" class="wishlist btn-button"
																	title="添加到收藏夹"
																	onclick="addUserGoods('${GoodsByDiscountList.goodsId }')">
																	<i class="fa fa-heart-o"></i><span>添加到收藏夹</span>
																</button>
																<button type="button" class="compare btn-button"
																	title="分享" onclick="">
																	<i class="fa fa-retweet"></i><span>分享</span>
																</button>

															</div>
															<div class="caption hide-cont">
																<div class="rating">
																	<span class="fa fa-stack"><i
																		class="fa fa-star fa-stack-2x"></i></span> <span
																		class="fa fa-stack"><i
																		class="fa fa-star fa-stack-2x"></i></span> <span
																		class="fa fa-stack"><i
																		class="fa fa-star fa-stack-2x"></i></span> <span
																		class="fa fa-stack"><i
																		class="fa fa-star fa-stack-2x"></i></span> <span
																		class="fa fa-stack"><i
																		class="fa fa-star fa-stack-2x"></i></span>
																</div>
																<h4>
																	<a href="product.html" title="Pastrami bacon"
																		target="_self">${GoodsByDiscountList.goodsName }</a>
																</h4>

															</div>
															<p class="price">
																<span class="price-new product-price">${GoodsByDiscountList.goodsOriginalPrice }</span>&nbsp;&nbsp;
																<c:if test="${GoodsByDiscountList.goodsDiscount!=0 }">
																	<span class="price-old">${GoodsByDiscountList.goodsOriginalPrice*GoodsByDiscountList.goodsDiscount }</span>&nbsp;
																</c:if>
															</p>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
									<!--End extraslider-inner -->
								</div>
							</div>
						</div>

						<div class="module so-latest-blog blog-sidebar">

							<h3 class="modtitle">
								<span>用户动态</span>
							</h3>
							<div class="modcontent clearfix">

								<div class="so-blog-external buttom-type1 button-type1">
									<div class="blog-external-simple">
										<%-- 用户动态循环 --%>
										<div class="cat-wrap">
											<div class="media">

												<div class="item item-1">
													<div class="media-left">
														<a href="#" target="_self"> <img
															src="image/catalog/blog/1.jpg"
															alt="Biten demons lector in henderit in vulp"
															class="media-object">
														</a>
													</div>
													<div class="media-body">
														<h4 class="media-heading">
															<a href="#"
																title="Biten demons lector in henderit in vulp"
																target="_self">宝阁购物商场挺不错的！</a>
														</h4>
														<div class="media-content">
															<div class="media-date-added">
																<i class="fa fa-calendar"></i> 2017年6月20日
															</div>
														</div>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="module testimonials">
							<h3 class="modtitle">
								<span>开发者寄语</span>
							</h3>
							<div class="slider-testimonials">
								<div class="yt-content-slider contentslider" data-rtl="no"
									data-loop="yes" data-autoplay="no" data-autoheight="no"
									data-autowidth="no" data-delay="4" data-speed="0.6"
									data-margin="0" data-items_column00="1" data-items_column0="1"
									data-items_column1="1" data-items_column2="1"
									data-items_column3="1" data-items_column4="1" data-arrows="no"
									data-pagination="yes" data-lazyload="yes" data-hoverpause="yes">
									<%-- 寄语循环 --%>
									<div class="item">
										<div class="img">
											<img src="image/catalog/demo/client/user-1.jpg" alt="Image">
										</div>
										<div class="name">陈代刊</div>
										<p>“我所做的后台管理系统，希望能让你们满意”</p>
									</div>
								</div>
							</div>
						</div>


						<div class="module">
							<div class="banners banners5">
								<div class="banner">
									<a href="#"><img
										src="${pageContext.request.contextPath }/image/catalog/banners/banner2.jpg"
										alt="image"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-10 col-md-9 col-sm-8 col-xs-12 main-right">


						<div class="static-cates">
							<ul>
								<li><a href="#"><img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat1.jpg"
										alt="image"></a></li>
								<li><a href="#"><img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat2.jpg"
										alt="image"></a></li>
								<li><a href="#"><img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat3.jpg"
										alt="image"></a></li>
								<li><a href="#"><img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat4.jpg"
										alt="image"></a></li>
								<li><a href="#"><img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat5.jpg"
										alt="image"></a></li>
							</ul>
						</div>

						<!-- Deals -->
						<div class="module deals-layout1">
							<div class="head-title">
								<div class="modtitle">
									<span>限时折扣</span>
								</div>
							</div>
							<div class="modcontent">
								<div id="so_deal_1" class="so-deal style1">
									<div class="extraslider-inner products-list yt-content-slider"
										data-rtl="yes" data-autoplay="no" data-autoheight="no"
										data-delay="4" data-speed="0.6" data-margin="30"
										data-items_column00="6" data-items_column0="5"
										data-items_column1="3" data-items_column2="2"
										data-items_column3="2" data-items_column4="1"
										data-arrows="yes" data-pagination="no" data-lazyload="yes"
										data-loop="yes" data-hoverpause="yes">
										<%-- 折扣商品循环 --%>
										<c:forEach items="${GoodsByDiscountList }"
											var="GoodsByDiscountList">
											<div class="item">
												<div
													class="item-inner product-layout transition product-grid">
													<div class="product-item-container">
														<div class="left-block left-b">
															<div class="box-label">
																<span class="label-product label-sale">
																	${GoodsByDiscountList.goodsDiscount*10 } 折</span>
															</div>
															<div class="product-image-container second_img">
																<a
																	href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsByDiscountList.goodsId }"
																	target="_self" title="Pastrami bacon"> <img
																	src="${pageContext.request.contextPath }/${GoodsByDiscountList.goodsImg }"
																	class="img-1 img-responsive" alt="image1"
																	style="width: 170px; height: 110px"> <img
																	src="${pageContext.request.contextPath }/${GoodsByDiscountList.goodsImg }"
																	class="img-2 img-responsive" alt="image2"
																	style="width: 170px; height: 110px">
																</a>
															</div>
															<!--quickview-->
															<div class="so-quickview">
																<a
																	class="iframe-link btn-button quickview quickview_handler visible-lg"
																	href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsId.do?GoodsId=${GoodsByDiscountList.goodsId }"
																	title="查看详细" data-fancybox-type="iframe"><i
																	class="fa fa-eye"></i><span>查看详细</span></a>
															</div>
															<!--end quickview-->


														</div>
														<div class="right-block">
															<div class="button-group so-quickview cartinfo--left">
																<a
																	href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsByDiscountList.goodsId }">
																	<button type="button" class="addToCart"
																		title="Add to cart">
																		<span>添加到购物车</span>
																	</button>
																</a>
																<button type="button" class="wishlist btn-button"
																	title="添加到收藏夹"
																	onclick="addUserGoods('${GoodsByDiscountList.goodsId }')">
																	<i class="fa fa-heart-o"></i><span>添加到收藏夹</span>
																</button>
																<button type="button" class="compare btn-button"
																	title="Compare this Product "
																	onclick="compare.add('60');">
																	<i class="fa fa-retweet"></i><span>分享</span>
																</button>

															</div>
															<div class="caption hide-cont">
																<div class="ratings">
																	<div class="rating-box">
																		<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i></span> <span
																			class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i></span> <span
																			class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i></span> <span
																			class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i></span> <span
																			class="fa fa-stack"><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	</div>



																	<span class="rating-num">${GoodsByDiscountList.goodsreview.size() }人评论</span>
																</div>
																<h4>
																	<a href="product.html" title="Pastrami bacon"
																		target="_self">${GoodsByDiscountList.goodsName }</a>
																</h4>
															</div>
															<p class="price">
																<c:if test="${GoodsByDiscountList.goodsDiscount!=1 }">
																	<span class="price-new product-price">${GoodsByDiscountList.goodsOriginalPrice*GoodsByDiscountList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsByDiscountList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                            </c:if>
																<c:if test="${GoodsByDiscountList.goodsDiscount==1 }">
																	<span class="price-new product-price">${GoodsByDiscountList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                             </c:if>
															</p>
														</div>

														<div class="item-available">
															<div class="available">
																<span class="color_width" data-title="100%"
																	data-toggle='tooltip' style="width: 100%"></span>
															</div>
															<p class="a2">
																销量: <b>${GoodsByDiscountList.goodsSalesVolume }</b>
															</p>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
						<!-- End Deals -->

						<!-- Banners -->
						<div class="banners3 banners">
							<div class="item1">
								<a href="#"><img
									src="${pageContext.request.contextPath }/image/catalog/banners/banner3.jpg"
									alt="image"></a>
							</div>
							<div class="item2">
								<a href="#"><img
									src="${pageContext.request.contextPath }/image/catalog/banners/banner4.jpg"
									alt="image"></a>
							</div>
							<div class="item3">
								<a href="#"><img
									src="${pageContext.request.contextPath }/image/catalog/banners/banner5.jpg"
									alt="image"></a>
							</div>
						</div>
						<!-- end Banners -->

						<!-- Category Slider 1 -->
						<div id="so_category_slider_1"
							class="so-category-slider container-slider module cateslider1">
							<div class="modcontent">
								<div class="page-top">
									<div class="page-title-categoryslider">数码商品</div>
								</div>
								<div class="categoryslider-content">
									<div class="item-cat-image" style="min-height: 351px;">
										<a href="#" title="Technology" target="_self"> <img
											class="categories-loadimage" alt="Technology"
											src="${pageContext.request.contextPath }/image/catalog/demo/category/tab1.jpg">
										</a>
									</div>
									<div
										class="slider category-slider-inner products-list yt-content-slider"
										data-rtl="yes" data-autoplay="no" data-autoheight="no"
										data-delay="4" data-speed="0.6" data-margin="30"
										data-items_column00="4" data-items_column0="4"
										data-items_column1="2" data-items_column2="1"
										data-items_column3="2" data-items_column4="1"
										data-arrows="yes" data-pagination="no" data-lazyload="yes"
										data-loop="yes" data-hoverpause="yes">
										<%-- 数码商品循环 --%>
										<c:forEach items="${GoodsInfoList }" var="GoodsInfoList">
											<c:if test="${GoodsInfoList.goodstypes.goodstypeId==3 }">
												<div class="item">
													<div
														class="item-inner product-layout transition product-grid">
														<div class="product-item-container">
															<div class="left-block left-b">

																<div class="product-image-container second_img">
																	<a
																		href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsInfoList.goodsId }"
																		target="_self" title="Lastrami bacon"> <img
																		src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
																		class="img-1 img-responsive" alt="image1"
																		style="width: 380px; height: 250px"> <img
																		src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
																		class="img-2 img-responsive" alt="image2"
																		style="width: 380px; height: 250px">
																	</a>
																</div>
																<!--quickview-->
																<div class="so-quickview">
																	<a
																		class="iframe-link btn-button quickview quickview_handler visible-lg"
																		href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsId.do?GoodsId=${GoodsInfoList.goodsId }"
																		title="查看详细" data-fancybox-type="iframe"><i
																		class="fa fa-eye"></i><span>查看详细</span></a>
																</div>
																<!--end quickview-->


															</div>
															<div class="right-block">
																<div class="button-group so-quickview cartinfo--left">
																	<a
																		href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsInfoList.goodsId }">
																		<button type="button" class="addToCart" title="添加到购物车"
																			onclick="cart.add('60 ');">
																			<span>添加到购物车</span>
																		</button>
																	</a>
																	<button type="button" class="wishlist btn-button"
																		title="添加到收藏夹"
																		onclick="addUserGoods('${GoodsInfoList.goodsId }')">
																		<i class="fa fa-heart-o"></i><span>添加到收藏夹</span>
																	</button>
																	<button type="button" class="compare btn-button"
																		title="分享" onclick="compare.add('60');">
																		<i class="fa fa-retweet"></i><span>分享</span>
																	</button>

																</div>
																<div class="caption hide-cont">
																	<div class="ratings">
																		<div class="rating-box">
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span>
																		</div>
																		<span class="rating-num">${GoodsInfoList.goodsreview.size() }人评论</span>
																	</div>
																	<h4>
																		<a href="product.html" title="Pastrami bacon"
																			target="_self">${GoodsInfoList.goodsName }</a>
																	</h4>

																</div>
																<p class="price">
																	<c:if test="${GoodsInfoList.goodsDiscount!=1 }">
																		<span class="price-new product-price">${GoodsInfoList.goodsOriginalPrice*GoodsInfoList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsInfoList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                            </c:if>
																	<c:if test="${GoodsInfoList.goodsDiscount==1 }">
																		<span class="price-new product-price">${GoodsInfoList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                             </c:if>
																</p>
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

						<!-- end Category Slider 1 -->

						<!-- Category Slider 2 -->
						<div id="so_category_slider_1"
							class="so-category-slider container-slider module cateslider2">
							<div class="modcontent">
								<div class="page-top">
									<div class="page-title-categoryslider">男装 & 女装</div>
								</div>
								<div class="categoryslider-content">
									<div class="item-cat-image" style="min-height: 351px;">
										<a href="#" title="Funiture & Decor" target="_self"> <img
											class="categories-loadimage" alt="Funiture & Decor"
											src="${pageContext.request.contextPath }/image/catalog/demo/category/tab2.jpg">
										</a>
									</div>
									<div
										class="slider category-slider-inner products-list yt-content-slider"
										data-rtl="yes" data-autoplay="no" data-autoheight="no"
										data-delay="4" data-speed="0.6" data-margin="30"
										data-items_column00="4" data-items_column0="4"
										data-items_column1="2" data-items_column2="1"
										data-items_column3="2" data-items_column4="1"
										data-arrows="yes" data-pagination="no" data-lazyload="yes"
										data-loop="yes" data-hoverpause="yes">
										<%-- 衣服循环 --%>
										<c:forEach items="${GoodsInfoList }" var="GoodsInfoList">
											<c:if test="${GoodsInfoList.goodstypes.goodstypeId==1 }">
												<div class="item">
													<div
														class="item-inner product-layout transition product-grid">
														<div class="product-item-container">
															<div class="left-block left-b">
																<!-- <div class="box-label">
																	<span class="label-product label-new">New</span>
																</div> -->
																<div class="product-image-container second_img">
																	<a
																		href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsInfoList.goodsId }"
																		target="_self" title="Sunt inculpa qui"> <img
																		src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
																		class="img-1 img-responsive" alt="image1"
																		style="width: 380px; height: 250px"> <img
																		src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
																		class="img-2 img-responsive" alt="image2"
																		style="width: 380px; height: 250px">
																	</a>
																</div>
																<!--quickview-->
																<div class="so-quickview">
																	<a
																		class="iframe-link btn-button quickview quickview_handler visible-lg"
																		href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsId.do?GoodsId=${GoodsInfoList.goodsId }"
																		title="Quick view" data-fancybox-type="iframe"><i
																		class="fa fa-eye"></i><span>查看详细</span></a>
																</div>
																<!--end quickview-->


															</div>
															<div class="right-block">
																<div class="button-group so-quickview cartinfo--left">
																	<a
																		href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsInfoList.goodsId }">
																		<button type="button" class="addToCart"
																			title="Add to cart" onclick="cart.add('60 ');">
																			<span>添加到购物车</span>
																		</button>
																	</a>
																	<button type="button" class="wishlist btn-button"
																		title="Add to Wish List"
																		onclick="addUserGoods('${GoodsInfoList.goodsId }')">
																		<i class="fa fa-heart-o"></i><span>添加到收藏夹</span>
																	</button>
																	<button type="button" class="compare btn-button"
																		title="Compare this Product "
																		onclick="compare.add('60');">
																		<i class="fa fa-retweet"></i><span>分享</span>
																	</button>

																</div>
																<div class="caption hide-cont">
																	<div class="ratings">
																		<div class="rating-box">
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span>
																		</div>
																		<span class="rating-num">${GoodsInfoList.goodsreview.size() }人评论</span>
																	</div>
																	<h4>
																		<a href="product.html" title="Pastrami bacon"
																			target="_self">${GoodsInfoList.goodsName }</a>
																	</h4>

																</div>
																<p class="price">
																	<c:if test="${GoodsInfoList.goodsDiscount!=1 }">
																		<span class="price-new product-price">${GoodsInfoList.goodsOriginalPrice*GoodsInfoList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsInfoList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                            </c:if>
																	<c:if test="${GoodsInfoList.goodsDiscount==1 }">
																		<span class="price-new product-price">${GoodsInfoList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                             </c:if>
																</p>
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
						<!-- end Category Slider 2 -->

						<!-- Category Slider 3 -->
						<div id="so_category_slider_1"
							class="so-category-slider container-slider module cateslider1">
							<div class="modcontent">
								<div class="page-top">
									<div class="page-title-categoryslider">动漫</div>
								</div>
								<div class="categoryslider-content">
									<div class="item-cat-image" style="min-height: 351px;">
										<a href="#" title="Fashion & Accessories" target="_self">
											<img class="categories-loadimage" alt="Fashion & Accessories"
											src="${pageContext.request.contextPath }/image/catalog/demo/category/tab3.jpg">
										</a>
									</div>
									<div
										class="slider category-slider-inner products-list yt-content-slider"
										data-rtl="yes" data-autoplay="no" data-autoheight="no"
										data-delay="4" data-speed="0.6" data-margin="30"
										data-items_column00="4" data-items_column0="4"
										data-items_column1="2" data-items_column2="1"
										data-items_column3="2" data-items_column4="1"
										data-arrows="yes" data-pagination="no" data-lazyload="yes"
										data-loop="yes" data-hoverpause="yes">
										<c:forEach items="${GoodsInfoList }" var="GoodsInfoList">
											<c:if test="${GoodsInfoList.goodstypes.goodstypeId==10 }">
												<div class="item">
													<div
														class="item-inner product-layout transition product-grid">
														<div class="product-item-container">
															<div class="left-block left-b">
																<div class="product-image-container second_img">
																	<a
																		href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsInfoList.goodsId }"
																		target="_self" title="Exceeur sint occaecat"> <img
																		src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
																		class="img-1 img-responsive" alt="image1"
																		style="width: 380px; height: 250px"> <img
																		src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
																		class="img-2 img-responsive" alt="image2"
																		style="width: 380px; height: 250px">
																	</a>
																</div>
																<!--quickview-->
																<div class="so-quickview">
																	<a
																		class="iframe-link btn-button quickview quickview_handler visible-lg"
																		href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsId.do?GoodsId=${GoodsInfoList.goodsId }"
																		title="Quick view" data-fancybox-type="iframe"><i
																		class="fa fa-eye"></i><span>Quick view</span></a>
																</div>
																<!--end quickview-->

															</div>
															<div class="right-block">
																<div class="button-group so-quickview cartinfo--left">
																	<button type="button" class="addToCart"
																		title="Add to cart" onclick="cart.add('60 ');">
																		<span>Add to cart </span>
																	</button>
																	<button type="button" class="wishlist btn-button"
																		title="Add to Wish List" onclick="wishlist.add('60');">
																		<i class="fa fa-heart-o"></i><span>Add to Wish
																			List</span>
																	</button>
																	<button type="button" class="compare btn-button"
																		title="Compare this Product "
																		onclick="compare.add('60');">
																		<i class="fa fa-retweet"></i><span>Compare this
																			Product</span>
																	</button>

																</div>
																<div class="caption hide-cont">
																	<div class="ratings">
																		<div class="rating-box">
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star fa-stack-2x"></i></span> <span
																				class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-2x"></i></span>
																		</div>
																		<span class="rating-num">${GoodsInfoList.goodsreview.size() }人评论</span>
																	</div>
																	<h4>
																		<a href="product.html" title="Pastrami bacon"
																			target="_self">${GoodsInfoList.goodsName }</a>
																	</h4>

																</div>
																<p class="price">
																	<c:if test="${GoodsInfoList.goodsDiscount!=1 }">
																		<span class="price-new product-price">${GoodsInfoList.goodsOriginalPrice*GoodsInfoList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsInfoList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                            </c:if>
																	<c:if test="${GoodsInfoList.goodsDiscount==1 }">
																		<span class="price-new product-price">${GoodsInfoList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                             </c:if>
																</p>
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
						<!-- end Category Slider 3 -->

						<!-- Banners -->
						<div class="banners4 banners">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<a href="#"><img
										src="${pageContext.request.contextPath }/image/catalog/banners/bn1.jpg"
										alt="image"></a>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<a href="#"><img
										src="${pageContext.request.contextPath }/image/catalog/banners/bn2.jpg"
										alt="image"></a>
								</div>
							</div>
						</div>
						<!-- end Banners -->

						<!-- Listing tabs -->
						<div class="module listingtab-layout1">

							<div id="so_listing_tabs_1" class="so-listing-tabs first-load">
								<div class="loadeding"></div>
								<div class="ltabs-wrap">
									<div class="ltabs-tabs-container" data-delay="300"
										data-duration="600" data-effect="starwars" data-ajaxurl=""
										data-type_source="0" data-lg="5" data-md="3" data-sm="2"
										data-xs="1" data-margin="30">
										<!--Begin Tabs-->
										<div class="ltabs-tabs-wrap">
											<div class="item-sub-cat">
												<ul class="ltabs-tabs cf">
													<li class="ltabs-tab tab-sel" data-category-id="20"
														data-active-content=".items-category-20"><span
														class="ltabs-tab-label">书籍</span></li>
												</ul>
											</div>
										</div>
										<!-- End Tabs-->
									</div>

									<div class="ltabs-items-container products-list grid">
										<!--Begin Items-->
										<div
											class="ltabs-items ltabs-items-selected items-category-20"
											data-total="16">
											<div class="ltabs-items-inner ltabs-slider">
												<c:forEach items="${GoodsInfoList }" var="GoodsInfoList">
													<c:if test="${GoodsInfoList.goodstypes.goodstypeId==6 }">
														<div class="item">
															<div
																class="item-inner product-layout transition product-grid">
																<div class="product-item-container">
																	<div class="left-block left-b">

																		<div class="product-image-container second_img">
																			<a
																				href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsInfoList.goodsId }"
																				target="_self" title="Ullamco occaeca"> <img
																				src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
																				class="img-1 img-responsive" alt="image1"
																				style="width: 380px; height: 250px"> <img
																				src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
																				class="img-2 img-responsive" alt="image2"
																				style="width: 380px; height: 250px">
																			</a>
																		</div>
																		<!--quickview-->
																		<div class="so-quickview">
																			<a
																				class="iframe-link btn-button quickview quickview_handler visible-lg"
																				href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsId.do?GoodsId=${GoodsInfoList.goodsId }"
																				title="查看详细" data-fancybox-type="iframe"><i
																				class="fa fa-eye"></i><span>查看详细</span></a>
																		</div>
																		<!--end quickview-->


																	</div>
																	<div class="right-block">
																		<div class="button-group so-quickview cartinfo--left">
																			<a
																				href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsInfoList.goodsId }">
																				<button type="button" class="addToCart"
																					title="添加到购物车" onclick="cart.add('60 ');">
																					<span>添加到购物车</span>
																				</button>
																			</a>
																			<button type="button" class="wishlist btn-button"
																				title="添加到收藏夹"
																				onclick="addUserGoods('${GoodsInfoList.goodsId }')">
																				<i class="fa fa-heart-o"></i><span>添加到收藏夹</span>
																			</button>
																			<button type="button" class="compare btn-button"
																				title="分享" onclick="compare.add('60');">
																				<i class="fa fa-retweet"></i><span>分享</span>
																			</button>

																		</div>
																		<div class="caption hide-cont">
																			<div class="rating">
																				<span class="fa fa-stack"><i
																					class="fa fa-star fa-stack-2x"></i></span> <span
																					class="fa fa-stack"><i
																					class="fa fa-star fa-stack-2x"></i></span> <span
																					class="fa fa-stack"><i
																					class="fa fa-star fa-stack-2x"></i></span> <span
																					class="fa fa-stack"><i
																					class="fa fa-star fa-stack-2x"></i></span> <span
																					class="fa fa-stack"><i
																					class="fa fa-star-o fa-stack-2x"></i></span> <span
																					class="rating-num">${GoodsInfoList.goodsreview.size() }人评论</span>
																			</div>
																			<h4>
																				<a href="product.html" title="Pastrami bacon"
																					target="_self">${GoodsInfoList.goodsName }</a>
																			</h4>

																		</div>
																		<p class="price">
																			<c:if test="${GoodsInfoList.goodsDiscount!=1 }">
																				<span class="price-new product-price">${GoodsInfoList.goodsOriginalPrice*GoodsInfoList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsInfoList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                            </c:if>
																			<c:if test="${GoodsInfoList.goodsDiscount==1 }">
																				<span class="price-new product-price">${GoodsInfoList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									                             </c:if>
																		</p>
																	</div>

																</div>
															</div>
														</div>
													</c:if>
												</c:forEach>
											</div>
										</div>
										<div class="ltabs-items items-category-18 grid"
											data-total="16">
											<div class="ltabs-loading"></div>

										</div>
										<div class="ltabs-items  items-category-25 grid"
											data-total="16">
											<div class="ltabs-loading"></div>
										</div>
										<!--End Items-->
									</div>

								</div>
							</div>
						</div>
						<!-- end Listing tabs -->

						<!-- Slider Brands -->
						<div class="slider-brands col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="yt-content-slider contentslider" data-autoplay="no"
								data-delay="4" data-speed="0.6" data-margin="0"
								data-items_column00="7" data-items_column0="7"
								data-items_column1="5" data-items_column2="3"
								data-items_column3="2" data-items_column4="1" data-arrows="yes"
								data-pagination="no" data-lazyload="yes" data-loop="yes">
								<div class="item">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat5.jpg"
										alt="brand">
									</a>
								</div>
								<div class="item">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat5.jpg"
										alt="brand">
									</a>
								</div>
								<div class="item">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat5.jpg"
										alt="brand">
									</a>
								</div>
								<div class="item">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat5.jpg"
										alt="brand">
									</a>
								</div>
								<div class="item">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat5.jpg"
										alt="brand">
									</a>
								</div>
								<div class="item">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat5.jpg"
										alt="brand">
									</a>
								</div>
								<div class="item">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/banners/cat5.jpg"
										alt="brand">
									</a>
								</div>
								<div class="item">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/brands/b5.png"
										alt="brand">
									</a>
								</div>
								<div class="item">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/brands/b6.png"
										alt="brand">
									</a>
								</div>
							</div>
						</div>
						<!-- Slider Brands -->


					</div>

				</div>

			</div>
		</div>
		<!-- //Main Container -->



		<!-- Footer Container -->
		<!-- //end Footer Container -->
	</div>
	<!-- End Color Scheme
============================================ -->



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
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/modernizr/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/minicolors/jquery.miniColors.min.js"></script>

	<!-- Theme files
============================================ -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/application.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/homepage.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/toppanel.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/so_megamenu.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/addtocart.js"></script>
	<script type="text/javascript">
		function addUserGoods(goodsId) {
			$
					.ajax({
						url : "${pageContext.request.contextPath }/Main/addUserGoods.do",//请求的url地址
						// dataType:"json",   返回格式为json
						async : true,//请求是否异步，默认为异步，这也是ajax重要特性
						data : {
							"GoodsId" : goodsId
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
								alert("改商品已存在于您的收藏夹");
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
