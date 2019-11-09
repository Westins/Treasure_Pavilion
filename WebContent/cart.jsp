<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>我的购物车</title>
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
<!-- 弹窗插件 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/style.css" />
<!--  -->
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
				<li><a href="#">购物车</a></li>
			</ul>

			<div class="row">
				<!--Middle Part Start-->
				<div id="content" class="col-sm-12">
					<h2 class="title">购物车</h2>
					<div class="table-responsive form-group">
						<table class="table table-bordered">
							<thead>
								<tr>
									<td class="text-center"><input type="checkbox"
										id="checkAll" style="width: 20px; height: 20px">全选</td>
									<td class="text-center">商品图</td>
									<td class="text-left">所属商铺</td>
									<td class="text-left">商品名</td>
									<td class="text-left">型号 / 尺码</td>
									<td class="text-right">颜色</td>
									<td class="text-left">数量</td>
									<td class="text-right">折后价</td>
									<td class="text-right">总价</td>
									<td class="text-right">操作</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ShoppingcartList }" var="ShoppingcartList"
									varStatus="num">
									<tr>
										<!-- 商品图 -->
										<td class="text-center"><input type="checkbox"
											name="checkbox" style="width: 20px; height: 20px"
											value="${ShoppingcartList.shoppingCartld }"
											onclick="onCheckBox()"></td>
										<td class="text-center"><a
											href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${ShoppingcartList.goods.goodsId }">
												<img style="width: 110px; height: 90px"
												src="${pageContext.request.contextPath }/${ShoppingcartList.goods.goodsImg }"
												alt="Aspire Ultrabook Laptop"
												title="Aspire Ultrabook Laptop" class="img-thumbnail" />
										</a></td>
										<td class="text-left"><a href="product.html">${ShoppingcartList.goods.shops.shopsName }</a><br />
										<td class="text-left"><a
											href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsIdBig.do?GoodsId=${ShoppingcartList.goods.goodsId }">${ShoppingcartList.goods.goodsName }</a><br />
										</td>
										<td class="text-left">${ShoppingcartList.shoppingCartModel }</td>
										<td class="text-right"><a>${ShoppingcartList.shoppingCartColor }</a><br />
										</td>
										<td class="text-left" width="200px">
											<div class="input-group btn-block quantity">
												<input type="text"
													value="${ShoppingcartList.shoppingCartNum }"
													onblur="updateNum(${ShoppingcartList.shoppingCartld },this)"
													size="1" class="form-control" name="GoodsNum" /> <span
													class="input-group-btn"> <<!-- button type="submit" data-toggle="tooltip" title="Update"
														class="btn btn-primary">
														<i class="fa fa-clone"></i>
													</button> -->

												</span>
											</div> <c:if test="${ShoppingcartList.goods.goodsDiscount!=0 }">
												<td class="text-right" name="MinMoney">${ShoppingcartList.goods.goodsOriginalPrice*ShoppingcartList.goods.goodsDiscount }</td>
												<td class="text-right" name="MaxMoney">${ShoppingcartList.goods.goodsOriginalPrice*ShoppingcartList.goods.goodsDiscount*ShoppingcartList.shoppingCartNum }</td>
											</c:if> <c:if test="${ShoppingcartList.goods.goodsDiscount==0 }">
												<td class="text-right" name="MinMoney">${ShoppingcartList.goods.goodsOriginalPrice }</td>
												<td class="text-right" name="MaxMoney">${ShoppingcartList.goods.goodsOriginalPrice*ShoppingcartList.shoppingCartNum }</td>
											</c:if>
										<td class="text-center">
											<button type="button" data-toggle="tooltip" title="移除"
												class="btn btn-danger"
												onClick="deleteShoppingcartGoods('${ShoppingcartList.shoppingCartld }')">
												<i class="fa fa-times-circle"></i>
											</button>
										</td>
								</c:forEach>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-sm-4 col-sm-offset-8">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td class="text-right"><strong>购物车中商品数量:</strong></td>
										<td class="text-right" id="shopsNum"></td>
									</tr>
									<tr>
										<td class="text-right"><strong>购物车中商品总金额:</strong></td>
										<td class="text-right" id="shopsSumMoney"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-sm-4 col-sm-offset-8">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td class="text-right"><strong>您选中的商品数量:</strong></td>
										<td class="text-right" id="num"></td>
									</tr>
									<tr>
										<td class="text-right"><strong>您选中的商品总金额:</strong></td>
										<td class="text-right" id="Max"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<h3 class="subtitle no-margin">接下来你需要选择收货地址</h3>
					<p>Next you need to select the harvest address</p>
					<div class="panel-group" id="accordion">
						<!--  选择优惠劵代码 -->
						<!--<div class="panel panel-default">
                         <div class="panel-heading">
					<h4 class="panel-title">
						<a href="#collapse-coupon" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" aria-expanded="true">Use Coupon Code 
							
							<i class="fa fa-caret-down"></i>
						</a>
					</h4>
				</div>
                        <div id="collapse-coupon" class="panel-collapse collapse in" aria-expanded="true">
                            <div class="panel-body">
                                <label class="col-sm-2 control-label" for="input-coupon">Enter your coupon here</label>
                                <div class="input-group">
                                    <input type="text" name="coupon" value="" placeholder="Enter your coupon here"
                                           id="input-coupon" class="form-control">
                                    <span class="input-group-btn"><input type="button" value="Apply Coupon"
                                                                         id="button-coupon"
                                                                         data-loading-text="Loading..."
                                                                         class="btn btn-primary"></span>
                                </div>
                            </div>
                        </div>
                    </div>-->
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#collapse-shipping" class="accordion-toggle collapsed"
										data-toggle="collapse" data-parent="#accordion"
										aria-expanded="false">收货地址 <i class="fa fa-caret-down"></i>
									</a>
								</h4>
							</div>
							<div class="panel-body">
								<p>在此你可以选择、修改你的收货地址</p>
								<c:if test="${UserAddressList.size()>0 }">
									<div class="form-horizontal">
										<div class="form-group required">
											<label class="col-sm-2 control-label" for="input-country">收货地址:</label>
											<div class="col-sm-10">
												<select name="country_id" id="address" class="form-control">
													<c:forEach items="${UserAddressList }"
														var="UserAddressList">
														<option value="${UserAddressList.address }"
															value="${UserAddressList.address }">${UserAddressList.address }</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group required">
											<label class="col-sm-2 control-label" for="consignee">收货人:</label>
											<div class="col-sm-10">
												<select name="zone_id" id="consignee" class="form-control">
													<c:forEach items="${UserAddressList }"
														var="UserAddressList">
														<option value="${UserAddressList.consignee }"
															value="${UserAddressList.consignee }">${UserAddressList.consignee }</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group required">
											<label class="col-sm-2 control-label" for="input-postcode">收货人电话:</label>
											<div class="col-sm-10">
												<select name="zone_id" id="phone" class="form-control">
													<c:forEach items="${UserAddressList }"
														var="UserAddressList">
														<option value="${UserAddressList.phone }"
															value="${UserAddressList.phone }">${UserAddressList.phone }</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
								</c:if>
								<a href="javascript:;" class="tiyan"><h2>添加常用地址</h2></a>
							</div>
						</div>



						<div class="buttons">
							<div class="pull-left">
								<a href="${pageContext.request.contextPath }/index.jsp"
									class="btn btn-primary">继续购物</a>
							</div>
							<div class="pull-right">
								<a onclick="goOrder()" class="btn btn-primary">去下单</a>
							</div>
						</div>
					</div>
					<!--Middle Part End -->
				</div>
			</div>
			<div class="tan">
				<div class="box">
					<div class="form">
						<span class="close">✖</span>
						<h3>添加常用地址</h3>
						<form onSubmit="return false;">
							<input type="text" name="name" id="name" placeholder="请输入收货人昵称" />
							<input type="text" name="password" id="passw"
								placeholder="请输入收货人手机号码" />
							<div class="valicode">
								<input type="text" name="valicode" id="valicode"
									placeholder="请输入收货地址" />
							</div>
							<div class="error"></div>
							<input type="submit" id="Submit" value="立即添加" onclick="">
						</form>
					</div>
				</div>
			</div>
			<!-- //Main Container -->

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
		<!-- --------------------- -->
		<script type="text/javascript">
		sun();
		 function sun() {
			var MinMoney = document.getElementsByName("MinMoney");
			var MaxMoney = document.getElementsByName("MaxMoney");
			var GoodsNum = document.getElementsByName("GoodsNum");
			
			for(var i=0;i<MaxMoney.length;i++){
				MaxMoney[i].innerHTML=Number(MinMoney[i].innerHTML)* Number(GoodsNum[i].value);
			}
			
			var sumNum = GoodsNum[0].value;
			var sumMoney = MaxMoney[0].innerHTML;
			
			
				for(var i=1;i<MaxMoney.length;i++){					
					sumMoney =Number(sumMoney) + Number(MaxMoney[i].innerHTML);					
				}
				for(var i=1;i<GoodsNum.length;i++){
					sumNum = Number(sumNum) + Number(GoodsNum[i].value);					
				}
				var num = document.getElementById("shopsNum");  //总商品数量
				var Max =  document.getElementById("shopsSumMoney"); //总金额
				
				num.innerHTML = sumNum;
				Max.innerHTML = sumMoney;
		}
		function onCheckBox() {
			var checkbox = document.getElementsByName("checkbox");
			var MinMoney = document.getElementsByName("MinMoney");//商品单价
			var MaxMoney = document.getElementsByName("MaxMoney");//商品总价
			var GoodsNum = document.getElementsByName("GoodsNum");//商品数量
			var checkAll = document.getElementById("checkAll");
			var checkMaxMoney = 0;
			var checkGoodsNum = 0;
			var index=0;
			for(var i=0;i<checkbox.length;i++){
				if(checkbox[i].checked == true){
					checkMaxMoney = Number(checkMaxMoney) + Number(MaxMoney[i].innerHTML);
					checkGoodsNum = Number(checkGoodsNum) + Number(GoodsNum[i].value);
					index++;
				}
			}
			if(index==checkbox.length){
				checkAll.checked = true;
			}else{
				checkAll.checked = false;
			}
			var num = document.getElementById("num");  //总商品数量
			var Max =  document.getElementById("Max"); //总金额
			
			num.innerHTML = checkGoodsNum;
			Max.innerHTML = checkMaxMoney;
		}
		function allCheck() {
			var checkAll = document.getElementById("checkAll");
			 if($('#checkAll').is(':checked')) {
				 onCheckBox();
				  }else{
					  onCheckBox();
				  }
		}
		function updateNum(shoppingCartld,input) {
			/*
			shoppingCartld 购物车ID 
			goodsNum  修改之后的数量
			*/
			var goodsNum = $(input).val();
			$.ajax({
				    url:"${pageContext.request.contextPath }/Main/updateShoppingCartGoodsNum.do",    //请求的url地址
				   // dataType:"json",   返回格式为json
				    async:true,//请求是否异步，默认为异步，这也是ajax重要特性
				    data:{"shoppingCartld":shoppingCartld,"goodsNum":goodsNum},    //参数值
				    type:"POST",   //请求方式
				    beforeSend:function(){
					//请求前
				    },
				    success:function(req){
					//请求成功
				        sun();
				    },
				    complete:function(){
				        //请求完成的处理
				    },
				    error:function(){
				        //请求出错处理
				    }
				});
		}
		$("#checkAll").click(function() {
			var checkbox = document.getElementsByName("checkbox");
			for(var i=0;i<checkbox.length;i++){
				checkbox[i].checked=checkAll.checked;
				}
			allCheck();
		});
		function deleteShoppingcartGoods(id) {
			$.ajax({
				    url:"${pageContext.request.contextPath }/Main/deleteShoppingCartByCartId.do",    //请求的url地址
				   // dataType:"json",   返回格式为json
				    async:true,//请求是否异步，默认为异步，这也是ajax重要特性
				    data:{"shoppingCartld":id},    //参数值
				    type:"POST",   //请求方式
				    beforeSend:function(){
					//请求前
				    },
				    success:function(req){
					//请求成功
				    location.reload()
				    },
				    complete:function(){
				        //请求完成的处理
				    },
				    error:function(){
				        //请求出错处理
				    }
				}); 
		}
		function goOrder() {
			var checkbox = document.getElementsByName("checkbox");
			var address = $("#address").val()
			var consignee = $("#consignee").val()
			var phone = $("#phone").val()	
			var count = 0;
			var orderShopppingCartId = 0;
		    for (var i = 0; i < checkbox.length; i++) { 
		                if(checkbox[i].checked == true){
		                	orderShopppingCartId = orderShopppingCartId+","+checkbox[i].value;
		                    count++; 
		                }
		            }  
		    if(address==null||consignee==null||phone==null){
		    	alert("请保证收货信息完整或者添加收货地址！")
		    }else if( count == 0 ){
		        alert("请选择需要下单的商品！")
		    }else{$.post("${pageContext.request.contextPath }/Main/CunOrder.do",{"orderShopppingCartId":orderShopppingCartId,"address":address,"consignee":consignee,"phone":phone},function(data){
		    		location.href="checkout.jsp";
			    });
		    }
		}
		</script>

		<!-- 添加常用地址 -->
		<script type="text/javascript">

			$(function() {
				//弹窗
				$('.tiyan').click(function() {
					$('.tan').show();
				})
				//关闭
				$('.close').click(function() {
					$('.tan').hide();
				})
				//触焦变色
				$("input").focus(function() {
					$(this).removeClass('red');
				});
				//失去焦点验证当前表单

				$("#name").blur(function() {					
					var errtxt = "",
						name = $('#name').val();
					if(name == "") {
						errtxt = "请输入收货人姓名";
						$('#name').addClass('red');
					}else{
						errtxt = "";
						$('#name').removeClass('red');
					}
					//错误提示消息，有错误则显示，没错误就隐藏
					showmsg(errtxt);
				})
				$("#passw").blur(function() {
					var emailreg = /^1(3|4|5|7|8)\d{9}$/;
					var errtxt = "",
						passw = $('#passw').val();
					if(passw == "") {
						errtxt = "请输入收货人手机号码";
						$('#passw').addClass('red');
					}else if((!emailreg.test(passw))) {
						errtxt = "请输入正确的手机号码";
						$('#passw').addClass('red');
					}else{
						errtxt = "";
						$('#passw').removeClass('red');
					}
					//错误提示消息，有错误则显示，没错误就隐藏
					showmsg(errtxt);
				})
				$("#valicode").blur(function() {
					var errtxt = "",
						valicode = $('#valicode').val();
					if(valicode == "") {
						errtxt = "请输入收货地址";
						$('#valicode').addClass('red');
					}else{
						errtxt = "";
						$('#valicode').removeClass('red');
					}
					//错误提示消息，有错误则显示，没错误就隐藏
					showmsg(errtxt);
				})
				//验证
				$('#Submit').click(function() {
					var emailreg = /^1(3|4|5|7|8)\d{9}$/;
					var thisid = "",
						errtxt = "";
					$('input').removeClass('red');
					var name = $('input[name=name]').val(),
						passw = $('input[name=password]').val(),
						valicode = $('input[name=valicode]').val();

					if(name == "") {
						errtxt = "收货人姓名不能为空";
						thisid = "name";
					}else if(passw == "") {
						errtxt = "收货人电话号码不能为空";
						thisid = "passw";
					}else if((!emailreg.test(passw))) {
						errtxt = "请输入正确的手机号码";
						$('#passw').addClass('red');
					} else if(valicode == "") {
						errtxt = "收货地址不能为空";
						thisid = "valicode";
					}else if(errtxt==null||errtxt==""){
						$.ajax({
							    url:"${pageContext.request.contextPath }/Main/addUserAdddressByUserId.do",    //请求的url地址
							   // dataType:"json",   返回格式为json
							    async:true,//请求是否异步，默认为异步，这也是ajax重要特性
							    data:{"name":name,"phone":passw,"address":valicode},    //参数值
							    type:"POST",   //请求方式
							    beforeSend:function(){
								//请求前
							    },
							    success:function(req){
								//请求成功
								if(req>0){
									alert("添加成功！"); 
									location.reload()									
								   }
							    },
							    complete:function(){
							        //请求完成的处理
							    },
							    error:function(){
							        //请求出错处理
							    }
							}); 						
					} 
					//错误提示消息，有错误则显示，没错误就隐藏
					showmsg(errtxt);
					//错误边框变红
					thisid ? $('input').removeClass('red').parents('form').find('#' + thisid).focus().addClass('red') : $('#' + thisid).removeClass('red');
				})
				function showmsg(errtxt) {
					errtxt ? $('.error').show().text(errtxt) : $('.error').hide();
				}
			})
			
			</script>
		<!-- 添加常用地址 -->
</body>
</html>
