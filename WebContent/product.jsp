<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>商品信息1</title>
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

<body class="res layout-subpage layout-1 banners-effect-5">

	<div id="wrapper" class="wrapper-fluid">
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
								<a href="index.html"><img
									src="${pageContext.request.contextPath }/image/catalog/logo.png"
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
																	href=""
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
				<li><a href="#">商品</a></li>
				<li><a href="#">商品信息</a></li>

			</ul>

			<div class="row">

				<!--Left Part Start -->
				<aside class="col-sm-4 col-md-3 content-aside" id="column-left">
					<div class="module product-simple">
						<h3 class="modtitle">
							<span>最新产品</span>
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
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
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

					<div class="product-view row">
						<c:forEach items="${GoodsInfoByGoodsIdList }"
							var="GoodsInfoByGoodsIdList" varStatus="num">
							<input type="hidden" value="${GoodsInfoByGoodsIdList.goodsId }"
								id="goodsId">
							<div class="left-content-product">
								<div
									class="content-product-left class-honizol col-md-5 col-sm-12 col-xs-12">
									<div class="large-image  ">
										<img itemprop="image" class="product-image-zoom"
											src="${pageContext.request.contextPath }/${GoodsInfoByGoodsIdList.goodsImg }"
											title="Chicken swinesha" alt="Chicken swinesha">
									</div>
									<a class="thumb-video pull-left"
										href="https://www.youtube.com/watch?v=HhabgvIIXik"><i
										class="fa fa-youtube-play"></i></a> <input type="hidden"
										id="GoodsMinImg"
										value="${GoodsInfoByGoodsIdList.goodsImgIntroduce }">
									<div id="GoodsImgMinView"
										class="yt-content-slider full_slider owl-drag" data-rtl="yes"
										data-autoplay="no" data-autoheight="no" data-delay="4"
										data-speed="0.6" data-margin="10" data-items_column00="4"
										data-items_column0="4" data-items_column1="3"
										data-items_column2="4" data-items_column3="1"
										data-items_column4="1" data-arrows="yes" data-pagination="no"
										data-lazyload="yes" data-loop="no" data-hoverpause="yes">
										<a data-index="0" class="img thumbnail "
											data-image="${pageContext.request.contextPath }/${GoodsInfoByGoodsIdList.goodsImg }"
											title="Chicken swinesha" style="width: 100%; height: 110%">
											<img
											src="${pageContext.request.contextPath }/${GoodsInfoByGoodsIdList.goodsImg }"
											title="Chicken swinesha" alt="Chicken swinesha"
											style="width: 120px; height: 110px">
										</a>
										<c:if
											test="${GoodsInfoByGoodsIdList.goodsVideoIntroduce!=null and GoodsInfoByGoodsIdList.goodsVideoIntroduce!='' }">
											<video width="150" height="170" controls
												style="margin-left: 10px; margin-top: -50px">
												<source
													src="${pageContext.request.contextPath }/${GoodsInfoByGoodsIdList.goodsVideoIntroduce }"
													type="video/mp4">
												<source src="movie.ogg" type="video/ogg">
											</video>
										</c:if>
									</div>

								</div>

								<div class="content-product-right col-md-7 col-sm-12 col-xs-12">
									<div class="title-product">
										<h1>${GoodsInfoByGoodsIdList.goodsName }</h1>
									</div>
									<!-- Review ---->
									<div class="box-review form-group">
										<div class="ratings">
											<div class="rating-box">
												<span class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i></span> <span
													class="fa fa-stack"><i
													class="fa fa-star-o fa-stack-1x"></i></span>
											</div>
										</div>

										<a class="reviews_button" href=""
											onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">0
											评论</a> | <a class="write_review_button" href=""
											onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">看评论</a>
									</div>

									<div class="product-label form-group">
										<div class="product_page_price price" itemprop="offerDetails"
											itemscope="" itemtype="http://data-vocabulary.org/Offer">
											<c:if test="${GoodsInfoByGoodsIdList.goodsDiscount!=1 }">
												<span class="price-new product-price">${GoodsInfoByGoodsIdList.goodsOriginalPrice*GoodsInfoByGoodsIdList.goodsDiscount }</span>&nbsp;
										<span class="price-old ">${GoodsInfoByGoodsIdList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
											<c:if test="${GoodsInfoByGoodsIdList.goodsDiscount==1 }">
												<span class="price-new product-price">${GoodsInfoByGoodsIdList.goodsOriginalPrice }</span>&nbsp;&nbsp;
									 </c:if>
										</div>
									</div>
									<h5>
										<a href="${pageContext.request.contextPath }/Main/ShowGoods.do?shopsId=${GoodsInfoByGoodsIdList.shopsId }"
											style="color: red">进入该店铺</a>
									</h5>
									<div id="product">
										<h4>请选择您的规格</h4>
										<div class="image_option_type form-group required">
											<label class="control-label">颜色</label> <input type="hidden"
												value="${GoodsInfoByGoodsIdList.goodsColor }"
												id="goodsColors">
											<ul class="product-options clearfix" id="goodsColor"
												style="margin-left: 30px">
											</ul>
										</div>

										<div class="box-checkbox form-group required">
											<label class="control-label">型号 / 尺码</label>
											<div id="input-option232">
												<div class="checkbox">
													<label for="checkbox_1" id="goodsModelTab"></label>
												</div>
												<input type="hidden"
													value="${GoodsInfoByGoodsIdList.goodsModel }"
													id="goodsModel">
											</div>
										</div>

										<div class="form-group box-info-product">
											<div class="option quantity">
												<div class="input-group quantity-control" unselectable="on"
													style="-webkit-user-select: none;">
													<label>数量</label> <input class="form-control" type="text"
														id="num" name="quantity" value="1"> <input
														type="hidden" name="product_id" value="50"> <span
														class="input-group-addon product_quantity_down">−</span> <span
														class="input-group-addon product_quantity_up">+</span>
												</div>
											</div>
											<div class="cart">
												<input type="button" data-toggle="tooltip" title=""
													value="添加到购物车" data-loading-text="Loading..."
													id="button-cart" class="btn btn-mega btn-lg"
													data-original-title="添加到购物车">
											</div>
											<div class="add-to-links wish_comp">
												<ul class="blank list-inline">
													<li class="wishlist"><a class="icon"
														data-toggle="tooltip" title="" onclick="wishlistAdd()"
														data-original-title="添加到愿望清单"><i class="fa fa-heart"></i>
													</a></li>
													<li class="compare"><a class="icon"
														data-toggle="tooltip" title=""
														onclick="compare.add('50');" data-original-title="分享"><i
															class="fa fa-exchange"></i> </a></li>
												</ul>
											</div>

										</div>

									</div>
									<!-- end box info product -->
								</div>
							</div>
					</div>
					<!-- Product Tabs -->
					<div class="producttab ">
						<div class="tabsslider  vertical-tabs col-xs-12">
							<ul class="nav nav-tabs col-lg-2 col-sm-3">
								<li class="active"><a data-toggle="tab" href="#tab-1">产品描述</a></li>
								<li class="item_nonactive"><a data-toggle="tab"
									href="#tab-review">评论(${GoodsInfoByGoodsIdList.goodsreview.size() }条)</a></li>
							</ul>
							<div class="tab-content col-lg-10 col-sm-9 col-xs-12">
								<div id="tab-1" class="tab-pane fade active in">
									<h1>产品描述:</h1>
									<h3 style="margin: 30px">${GoodsInfoByGoodsIdList.goodsTestIntroduce }</h3>
									<br> <input type="hidden" id="GoodsBigImg"
										value="${GoodsInfoByGoodsIdList.goodsImgIntroduce }">
									<ul id="GoodsImgView">
										<li><c:if
												test="${GoodsInfoByGoodsIdList.goodsVideoIntroduce!=null and  GoodsInfoByGoodsIdList.goodsVideoIntroduce!=''}">
												<div>
													<video width="100%" height="100%" controls>
														<source
															src="${pageContext.request.contextPath }/${GoodsInfoByGoodsIdList.goodsVideoIntroduce }"
															type="video/mp4">
														<source src="movie.ogg" type="video/ogg">
													</video>
												</div>
											</c:if></li>
									</ul>
								</div>
								<div id="tab-review" class="tab-pane fade">
									<form>
										<div id="review">
											<c:if test="${GoodsInfoByGoodsIdList.goodsreview.size()==0 }">
												<h3 style="margin: 30px">该商品暂无评论哦~</h3>
											</c:if>
											<c:if test="${GoodsInfoByGoodsIdList.goodsreview.size()>0 }">
												<c:forEach items="${GoodsInfoByGoodsIdList.goodsreview }"
													var="goodsreviewList" varStatus="indexs">
													<table class="table table-striped table-bordered">
														<tbody>
															<tr>
																<td style="width: 50%;"><strong
																	style="font-size: 15px">${goodsreviewList.userinfo.userName}</strong></td>
																<td class="text-right">${indexs.index+1 }楼</td>
															</tr>
															<tr>
																<td colspan="2">
																	<h4>${goodsreviewList.goodsReviewTest }</h4>
																	<div class="ratings">
																		<c:if test="${goodsreviewList.goodsReviewRated>=5 }">
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																		</c:if>
																		<c:if test="${goodsreviewList.goodsReviewRated==4 }">
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																		</c:if>
																		<c:if test="${goodsreviewList.goodsReviewRated==3 }">
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																		</c:if>
																		<c:if test="${goodsreviewList.goodsReviewRated==2 }">
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																		</c:if>
																		<c:if test="${goodsreviewList.goodsReviewRated==1 }">
																			<span class="fa fa-stack"><i
																				class="fa fa-star fa-stack-1x"></i><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																		</c:if>
																		<c:if test="${goodsreviewList.goodsReviewRated==0 }">
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																			<span class="fa fa-stack"><i
																				class="fa fa-star-o fa-stack-1x"></i></span>
																		</c:if>
																		<!-- <div class="rating-box"> //评价星级
																 <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
																<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span> 
															</div> -->
																	</div> <c:if
																		test="${goodsreviewList.goodsReviewImg!=null and goodsreviewList.goodsReviewImg!='' }">
																		<div style="margin-top: 15px">
																			<img
																				src="${pageContext.request.contextPath }/${goodsreviewList.goodsReviewImg }"
																				style="width: 200px; height: 150px">
																		</div>
																	</c:if> <c:if
																		test="${goodsreviewList.goodsReviewVideo!=null and goodsreviewList.goodsReviewVideo!=''}">
																		<div>
																			<video width="320" height="240" controls>
																				<source
																					src="${pageContext.request.contextPath }/${goodsreviewList.goodsReviewVideo }"
																					type="video/mp4">
																				<source src="movie.ogg" type="video/ogg">
																			</video>
																		</div>
																	</c:if>
																</td>
															</tr>
														</tbody>
													</table>
												</c:forEach>
											</c:if>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- //Product Tabs -->
				</div>
			</div>
		</div>
		<!--Middle Part End-->
	</div>
	</c:forEach>
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
		src="${pageContext.request.contextPath }/js/themejs/homepage.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/so_megamenu.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/addtocart.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/application.js"></script>
	<!-- 		 -->
	<script type="text/javascript">
		var s = document.getElementById("goodsModel").value;
		var split = s.split(",");
		var ModelTab = document.getElementById("goodsModelTab");
		var zhi = "<input type='radio' name='goodsModel' value="+split[0]+">"
				+ split[0] + "&nbsp&nbsp";
		for (var i = 1; i < split.length; i++) {
			zhi = zhi
					+ "<input type='radio' name='goodsModel' value="+split[i]+">"
					+ split[i] + "&nbsp&nbsp";
		}
		ModelTab.innerHTML = zhi;
	</script>
	<script type="text/javascript">
		var goodsColors = document.getElementById("goodsColors").value;
		var splits = goodsColors.split(",");
		var goodsColor = document.getElementById("goodsColor");
		var Color = "<li class='radio'><input type='radio' name='goodsColor' value="+splits[0]+">"
				+ splits[0] + "</li><br>";
		for (var i = 1; i < splits.length; i++) {
			Color = Color
					+ "<li class='radio'><input type='radio' name='goodsColor' value="+splits[i]+">"
					+ splits[i] + "</li><br>";
		}
		goodsColor.innerHTML = Color;
	</script>
	<script type="text/javascript">
		$("#button-cart")
				.click(
						function() {
							var goodsColor = document
									.getElementsByName("goodsColor");
							var goodsModel = document
									.getElementsByName("goodsModel");
							var num = document.getElementById("num").value;
							var goodsId = document.getElementById("goodsId").value;
							var color = null;
							var model = null;
							for (var i = 0; i < goodsColor.length; i++) {
								if (goodsColor[i].checked == true) {
									color = goodsColor[i].value;
								}
							}
							for (var i = 0; i < goodsModel.length; i++) {
								if (goodsModel[i].checked == true) {
									model = goodsModel[i].value;
								}
							}
							if (color == null || model == null || color == ''
									|| model == '' || num == 0 || num == null
									|| num == '') {
								alert("请选择你所需要的商品规格");
							} else {
								$
										.ajax({
											url : "${pageContext.request.contextPath }/Main/addShoppingCart.do",//请求的url地址
											// dataType:"json",   返回格式为json
											async : true,//请求是否异步，默认为异步，这也是ajax重要特性
											data : {
												"ShoppingCartModel" : model,
												"ShoppingCartColor" : color,
												"ShoppingCartNum" : num,
												"GoodsId" : goodsId
											}, //参数值
											type : "POST", //请求方式
											beforeSend : function() {
												//请求前
											},
											success : function(req) {
												//请求成功
												if (req > 0) {
													alert("成功添加至购物车！");
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
						});
		function wishlistAdd() {
			var goodsId = document.getElementById("goodsId").value;
			var goodsColor = document.getElementsByName("goodsColor");
			var goodsModel = document.getElementsByName("goodsModel");
			var color = null;
			var model = null;
			for (var i = 0; i < goodsColor.length; i++) {
				if (goodsColor[i].checked == true) {
					color = goodsColor[i].value;
				}
			}
			for (var i = 0; i < goodsModel.length; i++) {
				if (goodsModel[i].checked == true) {
					model = goodsModel[i].value;
				}
			}
			$
					.ajax({
						url : "${pageContext.request.contextPath }/Main/addUserGoods.do",//请求的url地址
						// dataType:"json",   返回格式为json
						async : true,//请求是否异步，默认为异步，这也是ajax重要特性
						data : {
							"GoodsId" : goodsId,
							"color" : color,
							"model" : model
						}, //参数值
						type : "POST", //请求方式
						beforeSend : function() {
							//请求前
						},
						success : function(req) {
							//请求成功
							if (req > 0) {
								alert("成功添加到愿望清单！");
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
	<script type="text/javascript">
		var GoodsBigImg = document.getElementById("GoodsBigImg").value;//获取大图地址
		var GoodsMinImg = document.getElementById("GoodsMinImg").value;//获取小图地址
		var BigImgs = GoodsBigImg.split(",");
		var MinImgs = GoodsMinImg.split(",");
		var bigimg = "";
		if (BigImgs.length == 1) {
			bigimg = "<li><img src='${pageContext.request.contextPath }/"
					+ BigImgs[0] + "' style='width: 100%; height: 100%'></li>"
		} else {
			for (var i = 0; i < BigImgs.length; i++) {
				if (i == 0) {
					bigimg = bigimg
							+ "<li><img src='${pageContext.request.contextPath }/"
							+ BigImgs[i]
							+ "' style='width: 100%; height: 100%'>"
				} else if (i == BigImgs.length - 1) {
					bigimg = bigimg
							+ "<img src='${pageContext.request.contextPath }/"
							+ BigImgs[i]
							+ "' style='width: 100%; height: 100%'></li>"
				} else {
					bigimg = bigimg
							+ "<img src='${pageContext.request.contextPath }/"
							+ BigImgs[i]
							+ "' style='width: 100%; height: 100%'>"
				}
			}
		}
		document.getElementById("GoodsImgView").innerHTML = bigimg;//产品图片介绍  大图		

		var minimg = "";
		if (MinImgs.length == 1) {
			minimg = "<a data-index='0' class='img thumbnail' data-image='${pageContext.request.contextPath }/"
					+ MinImgs[0]
					+ "' title='Chicken swinesha' style='margin-left: 7px; width: 100%; height: 100%'> <img src='${pageContext.request.contextPath }/"+MinImgs[0]+"' title='Chicken swinesha' alt='Chicken swinesha' style='width: 120px; height: 110px'></a>"
		} else {
			for (var i = 0; i < MinImgs.length; i++) {
				minimg = minimg
						+ "<a data-index='0' class='img thumbnail' data-image='${pageContext.request.contextPath }/"
						+ MinImgs[i]
						+ "' title='Chicken swinesha' style='margin-left: 7px; width: 100%; height: 100%'> <img src='${pageContext.request.contextPath }/"+MinImgs[i]+"' title='Chicken swinesha' alt='Chicken swinesha' style='width: 120px; height: 110px'></a>"
			}
		}
		document.getElementById("GoodsImgMinView").innerHTML = minimg;//产品图片介绍  小图
	</script>
</body>
</html>
