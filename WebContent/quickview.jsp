<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>查看商品部分信息</title>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-2.2.4.min.js"></script>
</head>

<body class="res layout-subpage">
	<div id="wrapper" class="wrapper-full ">
		<!-- Main Container  -->
		<div class="main-container container">
			<div class="row">
				<!--Middle Part Start-->
				<div id="content" class="col-md-12 col-sm-12">
					<c:forEach items="${GoodsInfoByGoodsIdList }"
						var="GoodsInfoByGoodsIdList">
						<input type="hidden" value="${GoodsByGoodsTimeList.goodsId }" id="goodsId">
						<div class="product-view row quickview-w">
							<div class="left-content-product">
								<div
									class="content-product-left class-honizol col-md-5 col-sm-12 col-xs-12">
									<div class="large-image  ">
										<img itemprop="image" class="product-image-zoom"
											src="${pageContext.request.contextPath }/${GoodsInfoByGoodsIdList.goodsImg }"
											title="Chicken swinesha" alt="Chicken swinesha"
											style="width: 100%; height: 100%">
									</div>
									<a class="thumb-video pull-left"
										href="https://www.youtube.com/watch?v=HhabgvIIXik"><i
										class="fa fa-youtube-play"></i></a>

									<div id="imgdiv"
										class="yt-content-slider full_slider owl-drag" data-rtl="yes"
										data-autoplay="no" data-autoheight="no" data-delay="4"
										data-speed="0.6" data-margin="10" data-items_column0="4"
										data-items_column1="3" data-items_column2="4"
										data-items_column3="1" data-items_column4="1"
										data-arrows="yes" data-pagination="no" data-lazyload="yes"
										data-loop="no" data-hoverpause="yes">
										<input type="hidden" value="${GoodsInfoByGoodsIdList.goodsImgIntroduce }" id="ImgView">
										<a data-index="0" class="img thumbnail "
											data-image="${pageContext.request.contextPath }/${GoodsInfoByGoodsIdList.goodsImg }"
											title="Chicken swinesha"> <img
											src="${pageContext.request.contextPath }/${GoodsInfoByGoodsIdList.goodsImg }"
											title="Chicken swinesha" alt="Chicken swinesha"
											style="width: 1000px; height: 120px">
										</a>
									</div>
								</div>

								<div class="content-product-right col-md-7 col-sm-12 col-xs-12">
									<div class="title-product">
										<h1>${GoodsInfoByGoodsIdList.goodsName }</h1>
									</div>
									<div class="product-label form-group">
										<div class="product_page_price price" itemprop="offerDetails"
											itemscope="" itemtype="http://data-vocabulary.org/Offer">
											<c:if test="${GoodsInfoByGoodsIdList.goodsDiscount!=0 }">
												<span class="price-new product-price">${GoodsInfoByGoodsIdList.goodsOriginalPrice*GoodsInfoByGoodsIdList.goodsDiscount }</span>&nbsp;
																	<span class="price-old ">${GoodsInfoByGoodsIdList.goodsOriginalPrice }</span>&nbsp;&nbsp;
																</c:if>
											<c:if test="${GoodsInfoByGoodsIdList.goodsDiscount==0 }">
												<span class="price-new product-price">${GoodsInfoByGoodsIdList.goodsOriginalPrice }</span>&nbsp;&nbsp;
																</c:if>
										</div>
									</div>
									<h5><a href="${GoodsInfoByGoodsIdList.shopsId }" style="color: red">进入该店铺</a></h5>
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
									</div>
									<!-- end box info product -->

								</div>

							</div>
						</div>
					</c:forEach>
					<script type="text/javascript">
						var cart = {
							'add' : function(product_id, quantity) {
								parent.addProductNotice(
												'Product added to Cart',
												'<img src="image/demo/shop/product/e11.jpg" alt="">',
												'<h3><a href="#">Apple Cinema 30"</a> added to <a href="#">shopping cart</a>!</h3>',
												'success');
							}
						}
					</script>
				</div>


			</div>
			<!--Middle Part End-->
		</div>
		<!-- //Main Container -->




		<style type="text/css">
#wrapper {
	box-shadow: none;
}

#wrapper
>
*


:not

 

(
.main-container

 

){
display


:

 

none


;
}
#content {
	margin: 0
}

.container {
	width: 100%;
}

.product-info .product-view, .left-content-product, .box-info-product {
	margin: 0;
}

.left-content-product .content-product-right .box-info-product .cart input
	{
	padding: 12px 16px;
}

.left-content-product .content-product-right .box-info-product .add-to-links
	{
	width: auto;
	float: none;
	margin-top: 0px;
	clear: none;
}

.add-to-links ul li {
	margin: 0;
}
</style>
	</div>

	<!-- Include Libs & Plugins
	============================================ -->
	<!-- Placed at the end of the document so the pages load faster -->
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

	<!-- script -->
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
		$("#button-cart").click(function() {
			var goodsColor = document.getElementsByName("goodsColor");
			var goodsModel = document.getElementsByName("goodsModel");
			var num = document.getElementById("num").value;
			var goodsId = document.getElementById("goodsId").value;
			alert(goodsColor[0].value);
			alert(goodsModel[0].value);
			var color = null;
			var model = null;
			for (var i = 0; i < goodsColor.length; i++) {
				if (goodsColor[i].checked == true) {
					color = goodsColor[0].value;
				}
				if (goodsModel[i].checked == true) {
					model = goodsModel[0].value;
				}
			}
			alert(color);
			alert(model);
			if(color==null||model==null||color==''||model==''||num==0||num==null||num==''){
				alert("请选择你所需要的商品规格");
			}else{
				$.ajax({
					    url:"${pageContext.request.contextPath }/Main/addShoppingCart.do",//请求的url地址
					   // dataType:"json",   返回格式为json
					    async:true,//请求是否异步，默认为异步，这也是ajax重要特性
					    data:{"ShoppingCartModel":model,"ShoppingCartColor":color,"ShoppingCartNum":num,"GoodsId":goodsId},    //参数值
					    type:"POST",   //请求方式
					    beforeSend:function(){
						//请求前
					    },
					    success:function(req){
						//请求成功
						if(req>0){						 
							alert("成功添加至购物车！");
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
		});
	</script>
	<script type="text/javascript">
	
	var imgView = document.getElementById("ImgView").value;
	var img = imgView.split(",");
	var z="";
	if(img.length<=1){
		z = "<a data-index='0' class='img thumbnail' data-image='${pageContext.request.contextPath }/"+img[0]+"' title='Chicken swinesha'> <img src='${pageContext.request.contextPath }/"+img[0]+"' title='Chicken swinesha' alt='Chicken swinesha' style='width: 1000px; height: 120px'></a>"
	}else{
		for(var i=0;i<img.length;i++){
			z = "<a data-index='0' class='img thumbnail' data-image='${pageContext.request.contextPath }/"+img[i]+"' title='Chicken swinesha'> <img src='${pageContext.request.contextPath }/"+img[i]+"' title='Chicken swinesha' alt='Chicken swinesha' style='width: 1000px; height: 120px'></a>"
		}
	}
	document.getElementById("imgdiv").innerHTML = z;
	</script>
</body>

</html>
