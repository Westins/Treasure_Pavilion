<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>商品信息</title>
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
<link rel="shortcut icon"
	type="${pageContext.request.contextPath }/image/png"
	href="ico/favicon-16x16.png" />


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

<body class="res layout-1 listing-page">


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
														<ul class="megamenu" id="typeUl">
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
				<li><a href="#">所有商品</a></li>
			</ul>

			<div class="row">
				<!--Left Part Start -->
				<aside class="col-sm-4 col-md-3 content-aside" id="column-left">
					<div class="module product-simple">
						<h3 class="modtitle">
							<span>最新产品</span>
						</h3>
						<div class="modcontent">
							<c:forEach items="${GoodsByGoodsTimeList }"
								var="GoodsByGoodsTimeList">
								<div class="so-extraslider">
									<!-- Begin extraslider-inner -->
									<div class="yt-content-slider extraslider-inner">
										<div class="item ">
											<div class="product-layout item-inner style1 ">
												<div class="item-image">
													<div class="item-img-info">
														<a
															href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsByGoodsTimeList.goodsId }"
															target="_self" title="Mandouille short "> <img
															src="${pageContext.request.contextPath }/${GoodsByGoodsTimeList.goodsImg }"
															alt="Mandouille short" style="width: 160px; height: 70px">
														</a>
													</div>

												</div>
												<div class="item-info">
													<div class="item-title">
														<a
															href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsByGoodsTimeList.goodsId }"
															target="_self" title="Mandouille short">${GoodsByGoodsTimeList.goodsName }</a>
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
														<c:if test="${GoodsByVolumeList.goodsDiscount!=0 }">
															<span class="price-new product-price">${GoodsByVolumeList.goodsOriginalPrice*GoodsByVolumeList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsByVolumeList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
														<c:if test="${GoodsByVolumeList.goodsDiscount==0 }">
															<span class="price-new product-price">${GoodsByVolumeList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
													</div>
												</div>
												<!-- End item-info -->
											</div>
										</div>
										<!--End extraslider-inner -->
									</div>
								</div>
							</c:forEach>
						</div>
						<div class="module banner-left hidden-xs ">
							<div class="banner-sidebar banners">
								<div>
									<a title="Banner Image" href="#"> <img
										src="${pageContext.request.contextPath }/image/catalog/banners/banner-sidebar.jpg"
										alt="Banner Image">
									</a>
								</div>
							</div>
						</div>
				</aside>
				<!--Left Part End -->

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
												src="${pageContext.request.contextPath }/image/catalog/demo/category/img-cate.jpg"
												alt="img cate"><br></a>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!-- Filters -->
						<div class="product-filter product-filter-top filters-panel">
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
										id="paixu" class="form-control" onchange="onPai()">
										<option value="all" selected="selected">默认</option>
										<option value="pirceDi">价格 (低 &gt; 高)</option>
										<option value="priceGao">价格 (高 &gt; 低)</option>
										<option value="NumDi">销量 (低 &gt; 高)</option>
										<option value="NumGao">销量 (高 &gt; 低)</option>
										<option value="ZheDi">折扣力度(低 &gt; 高)</option>
										<option value="ZheGao">折扣力度(高 &gt; 低)</option>
										<option value="quan">查看全部</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<!-- //end Filters -->

					<!--changed listings-->
					<div class="products-list row nopadding-xs so-filter-gird"
						id="goodsTab">
						<c:forEach items="${GoodsInfoList }" var="GoodsInfoList">
							<div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
								<div class="product-item-container">
									<div class="left-block left-b">
										<div class="box-label">
											<c:if test="${GoodsInfoList.goodsDiscount!=0 }">
												<span class="label-product label-sale">${GoodsInfoList.goodsDiscount*10 }
													折</span>
											</c:if>
										</div>
										<div class="product-image-container second_img">
											<a
												href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsInfoList.goodsId }"
												target="_self" title="Lastrami bacon"> <img
												src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
												class="img-1 img-responsive" alt="image1"
												style="width: 270px; height: 200px"> <img
												src="${pageContext.request.contextPath }/${GoodsInfoList.goodsImg }"
												class="img-2 img-responsive" alt="image2"
												style="width: 270px; height: 200px">
											</a>
										</div>
										<!--quickview-->
										<div class="so-quickview">
											<a
												class="iframe-link btn-button quickview quickview_handler visible-lg"
												href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsId.do?GoodsId=${GoodsInfoList.goodsId }"
												title="查看详细信息" data-fancybox-type="iframe"><i
												class="fa fa-eye"></i><span>查看详细信息</span></a>
										</div>
										<!--end quickview-->
									</div>
									<div class="right-block">
										<div class="button-group so-quickview cartinfo--left">
											<button type="button" class="addToCart" title="加入到购物车"
												onclick="cart.add('60 ');">
												<span>加入到购物车</span>
											</button>
											<button type="button" class="wishlist btn-button"
												title="添加到愿望清单"
												onclick="addUserGoods('${GoodsInfoList.goodsId }')">
												<i class="fa fa-heart-o"></i><span>添加到愿望清单</span>
											</button>
											<button type="button" class="compare btn-button" title="分享"
												onclick="compare.add('60');">
												<i class="fa fa-retweet"></i><span>分享</span>
											</button>

										</div>
										<div class="caption hide-cont">
											<div class="ratings">
												<span class="rating-num">${GoodsInfoList.goodsreview.size() }人评论</span>
											</div>
											<h4>
												<a href="product.html" title="Pastrami bacon" target="_self">${GoodsInfoList.goodsName }</a>
											</h4>
										</div>
										<p class="price">
											<c:if test="${GoodsByVolumeList.goodsDiscount!=0 }">
												<span class="price-new product-price">${GoodsByVolumeList.goodsOriginalPrice*GoodsByVolumeList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsByVolumeList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
											<c:if test="${GoodsByVolumeList.goodsDiscount==0 }">
												<span class="price-new product-price">${GoodsByVolumeList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
										</p>
										<div class="description item-desc">
											<p>${GoodsInfoList.goodsTestIntroduce }</p>
										</div>
										<div class="list-block">
											<a
												href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${GoodsByVolumeList.goodsId }">
												<button class="添加到购物车" type="button" title="Add to Cart"
													onclick="">
													<i class="fa fa-shopping-basket"></i>
												</button>
											</a>
											<button class="添加到收藏夹" type="button" title="Add to Wish List"
												onclick="addUserGoods('${GoodsByVolumeList.goodsId }')">
												<i class="fa fa-heart"></i>
											</button>
											<button class="分享" type="button" title="Compare this Product"
												onclick="compare.add('101');">
												<i class="fa fa-refresh"></i>
											</button>
											<a
												class="iframe-link btn-button quickview quickview_handler visible-lg"
												href="quickview.html" title="查看详细"
												data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!--// End Changed listings-->
					<!-- Filters -->
					<!-- <div class="product-filter product-filter-bottom filters-panel">  分页
						<div class="row">
							<div class="col-sm-6 text-left"></div>
							<div
								class="box-pagination col-md-3 col-sm-4 col-xs-12 text-right">
								<ul class="pagination">
									<li class="active"><span>1</span></li>
									<li><a href="">2</a></li>
									<li><a href="">&gt;</a></li>
									<li><a href="">&gt;|</a></li>
								</ul>
							</div>
							//end Filters
						</div>
					</div> -->
					<!--Middle Part End-->
				</div>
			</div>
			<!-- //Main Container -->
			<!-- //end Footer Container -->

		</div>
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
		<!--
			// Check if Cookie exists
			if ($.cookie('display')) {
				view = $.cookie('display');
			} else {
				view = 'grid';
			}
			if (view)
				display(view);
		//-->
		</script>
		<script type="text/javascript">
			onPai();
			function onPai() {
				var zhi = document.getElementById("paixu").value;
				$.ajax({
							url : "${pageContext.request.contextPath }/Main/getCategoryInfo.do", //请求的url地址
							// dataType:"json",   返回格式为json
							async : true,//请求是否异步，默认为异步，这也是ajax重要特性
							data : {
								"zhi" : zhi
							}, //参数值
							type : "POST", //请求方式
							beforeSend : function() {
								//请求前
							},
							success : function(req) {
								var data = eval(req);
								$("#goodsTab").html("");
								$
										.each(
												data,
												function(i, item) {
													if (item.goodsDiscount == 0) {
														var z = "<div class='product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12'><div class='product-item-container'><div class='left-block left-b'><div class='box-label'></div><div class='product-image-container second_img'><a href='${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId="
																+ item.goodsId
																+ "' target='_self' title='Lastrami bacon'> <img src='${pageContext.request.contextPath }/"+item.goodsImg+"' class='img-1 img-responsive' alt='image1' style='width: 270px; height: 200px'> <img src='${pageContext.request.contextPath }/"+item.goodsImg+"' class='img-2 img-responsive' alt='image2' style='width: 270px; height: 200px'> </a> </div><div class='so-quickview'><a class='iframe-link btn-button quickview quickview_handler visible-lg' href='${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsId.do?GoodsId="
																+ item.goodsId
																+ "' title='查看详细信息' data-fancybox-type='iframe'><i class='fa fa-eye'></i><span>查看详细信息</span></a></div></div><div class='right-block'><div class='button-group so-quickview cartinfo--left'><a href='${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId="
																+ item.goodsId
																+ "'><button type='button' class='addToCart' title='加入到购物车' onclick=''><span>加入到购物车</span></button><button type='button' class='wishlist btn-button' title='添加到愿望清单'  onclick='addUserGoods('"
																+ item.goodsId
																+ "')'><i class='fa fa-heart-o'></i><span>添加到愿望清单</span></button> <button type='button' class='compare btn-button' title='分享' onclick=''> <i class='fa fa-retweet'></i><span>分享</span> </button></div><div class='caption hide-cont'><div class='ratings'><span class='rating-num'>"
																+ item.goodsreview.length
																+ "人评论</span></div><h4><a href='product.html' title='Pastrami bacon' target='_self'>"
																+ item.goodsName
																+ "</a></h4></div><p class='price'><span class='price-new product-price'>"
																+ item.goodsOriginalPrice
																+ "</span>&nbsp;&nbsp;</p><div class='description item-desc'><p>"
																+ item.goodsTestIntroduce
																+ "</p></div><div class='list-block'> <a href='${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId="
																+ item.goodsId
																+ "'><button class='addToCart btn-button' type='button' title='添加到购物车' onclick=''> <i class='fa fa-shopping-basket'></i> </button></a> <button class='wishlist btn-button' type='button' title='添加到收藏夹' onclick='addUserGoods('"
																+ item.goodsId
																+ "')'> <i class='fa fa-heart'></i> </button><button class='compare btn-button' type='button' title='Compare this Product' onclick=''> <i class='fa fa-refresh'></i> </button> <a class='iframe-link btn-button quickview quickview_handler visible-lg' href='quickview.html' title='查看详细' data-fancybox-type='iframe'><i class='fa fa-eye'></i></a></div></div></div></div>"

													} else {
														var z = "<div class='product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12'><div class='product-item-container'><div class='left-block left-b'><div class='box-label'><span class='label-product label-sale'>"
																+ item.goodsDiscount * 10
																+ "折</span></div><div class='product-image-container second_img'><a href='${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId="
																+ item.goodsId
																+ "' target='_self' title='Lastrami bacon'> <img src='${pageContext.request.contextPath }/"+item.goodsImg+"' class='img-1 img-responsive' alt='image1' style='width: 270px; height: 200px'> <img src='${pageContext.request.contextPath }/"+item.goodsImg+"' class='img-2 img-responsive' alt='image2' style='width: 270px; height: 200px'> </a> </div><div class='so-quickview'><a class='iframe-link btn-button quickview quickview_handler visible-lg' href='${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsId.do?GoodsId="
																+ item.goodsId
																+ "' title='查看详细信息' data-fancybox-type='iframe'><i class='fa fa-eye'></i><span>查看详细信息</span></a></div></div><div class='right-block'><div class='button-group so-quickview cartinfo--left'><a href='${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId="
																+ item.goodsId
																+ "'><button type='button' class='addToCart' title='加入到购物车' onclick=''><span>加入到购物车</span></button><button type='button' class='wishlist btn-button'title='添加到愿望清单'  onclick='addUserGoods('"
																+ item.goodsId
																+ "')'><i class='fa fa-heart-o'></i><span>添加到愿望清单</span></button> <button type='button' class='compare btn-button' title='分享' onclick=''> <i class='fa fa-retweet'></i><span>分享</span> </button></div><div class='caption hide-cont'><div class='ratings'><span class='rating-num'>"
																+ item.goodsreview.length
																+ "人评论</span></div><h4><a href='product.html' title='Pastrami bacon' target='_self'>"
																+ item.goodsName
																+ "</a></h4></div><p class='price'><span class='price-new product-price'>"
																+ item.goodsOriginalPrice
																		* item.goodsDiscount
																+ "</span>&nbsp;<span class='price-old'>"
																+ item.goodsOriginalPrice
																+ "</span>&nbsp;&nbsp;</p><div class='description item-desc'><p>"
																+ item.goodsTestIntroduce
																+ "</p></div><div class='list-block'> <a href='${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId="
																+ item.goodsId
																+ "'><button class='addToCart btn-button' type='button' title='添加到购物车' onclick=''> <i class='fa fa-shopping-basket'></i> </button></a> <button class='wishlist btn-button' type='button' title='添加到收藏夹'  onclick='addUserGoods('"
																+ item.goodsId
																+ "')'> <i class='fa fa-heart'></i> </button><button class='compare btn-button' type='button' title='Compare this Product' onclick=''> <i class='fa fa-refresh'></i> </button> <a class='iframe-link btn-button quickview quickview_handler visible-lg' href='quickview.html' title='查看详细' data-fancybox-type='iframe'><i class='fa fa-eye'></i></a></div></div></div></div>"

													}
													$("#goodsTab").append(z);
												});

							},
							complete : function() {
							},
							error : function() {
								//请求出错处理
							}
						});
			}
		</script>
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
		<script type="text/javascript">
			goodstype();
			function goodstype() {
				$.ajax({
							url : "${pageContext.request.contextPath }/Main/getType.do",//请求的url地址
							async : true,//请求是否异步，默认为异步
							data : {}, //参数值
							type : "POST", //请求方式
							beforeSend : function() {
								//请求前
							},
							success : function(req) {
								var data = eval(req);
								var zhi = "";
								  $
										.each(
												data,
												function(i, item) {
													zhi = zhi
															+ "<li class='item-vertical  with-sub-menu hover'><p class='close-menu'></p><a href='#' class='clearfix'><img src='${pageContext.request.contextPath }/image/catalog/menu/icons/ico10.png' alt='icon'> <span style='font-size: 16px'>"
															+ item.goodsTypeName
															+ "</span><b class='fa-angle-right'></b></a><div class='sub-menu' data-subwidth='60'><div class='content'><div class='row'><div class='col-sm-12'><div class='row'><div class='col-md-4 static-menu'><div class='menu'><ul name='typesname'><li><a href='${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsTypes.do?GoodsTypeId="
															+ item.goodsTypeName
															+ " style='font-size: 18px'>"
															+  item.goodsTypeName
															+ "</a></li></ul></div></div></div></div></div></div></div></li>"
												}); 
								document.getElementById("typeUl").innerHTML = zhi;
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
