<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>商城</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pignose css -->
<link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />


<!-- //pignose css -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- cart -->
	<script src="js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<script src="js/jquery.easing.min.js"></script>

</head>
<body>

<!--header-bot -->
<div class="header-bot">
	<div class="container">
		<div class="col-md-3 header-left">
			<h1><a href="index.html"><img src="images/logo3.jpg"></a></h1>
		</div>
		<div class="col-md-6 header-middle">
			<form action="queryBooksByName.action">
				<div class="search">
					<input name="bname" type="search" value="查找" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '查找';}"
					 required="">
				</div>
				
				<div class="sear-sub">
					<input type="submit" value=" ">
				</div>
				<div class="clearfix"></div>
			</form>
		</div>
		<div class="col-md-3 header-right footer-bottom">
					<ul>
						<c:if test="${user!=null}">
							<div style="width:130px;height:33px;position:relative;float:left;margin-top:5px;margin-left:10px">
							
								<li style="float: left">
								欢迎：${user.uname}<a href="logout.action">注销</a>
								</li>

							</div>
						
						</c:if>
						<c:if test="${user==null}">
							<li>
								<a href="login.jsp" class="use1" >
								</a>
							</li>
						</c:if>
					</ul>
				</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header-bot -->

<!-- banner -->
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						 aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav menu__list">
							<li class="active menu__item menu__item--current"><a class="menu__link" href="first.jsp">主页 <span class="sr-only">(current)</span></a></li>
							<li class="dropdown menu__item">
								<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">图书分类<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<div>
										<div class="col-sm-10 multi-gd-img">
											<ul class="multi-column-dropdown">
												<li><a href="queryBooksByType.action?btname=.">所有分类</a></li>
												
												<c:forEach items="${queryBookType}" var="bt">
													<li><a href="queryBooksByType.action?btname=${bt.btname}">${bt.btname}</a></li>
												</c:forEach>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<li class=" menu__item"><a class="menu__link" href="queryOrder.action">查看订单</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="top_nav_right">
			<div class="cart box_1">
				<a href="queryShoppingCarts.action">
					<h3>
						<div class="total">
							<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
							</div>
					</h3>
				</a>
				<p><a href="queryShoppingCarts.action" class="simpleCart_empty">购物车</a></p>

			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //banner-top -->


<!-- 图片轮播 -->
<!-- banner -->
<div class="banner-grid">
	<div id="visual">
		<div class="slide-visual">
			<!-- Slide Image Area (1000 x 424) -->
			<ul class="slide-group">
				<li><img class="img-responsive" src="images/show/ba1.jpg" alt="Dummy Image" /></li>
				<li><img class="img-responsive" src="images/show/ba2.jpg" alt="Dummy Image" /></li>
				<li><img class="img-responsive" src="images/show/ba3.jpg" alt="Dummy Image" /></li>
				<li><img class="img-responsive" src="images/show/ba4.jpg" alt="Dummy Image" /></li>
			</ul>

			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<script type="text/javascript" src="js/pignose.layerslider.js"></script>
	<script type="text/javascript">
		//<![CDATA[
		$(window).load(function() {
			$('#visual').pignoseLayerSlider({
				play: '.btn-play',
				pause: '.btn-pause',
				next: '.btn-next',
				prev: '.btn-prev'
			});
		});
		//]]>
	</script>

</div>
<!-- //banner -->


<div class="product-easy">
	<div class="container">
		<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		<script type="text/javascript">
							$(document).ready(function () {
								$('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion           
									width: 'auto', //auto or any width like 600px
									fit: true   // 100% fit in a container
								});
							});
							
		</script>
		<div class="sap_tabs">
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>最热图书</span></li> 
					<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>最新图书</span></li> 
				</ul>				  	 
				
				<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
					
						<c:forEach items="${queryHottestBooks}" var="hottestBook">
							<div class="col-md-3 product-men yes-marg">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="${hottestBook.bimage}" alt="" class="pro-image-front">
										<img src="${hottestBook.bimage}" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
												
													<a href="bookDetail.action?bid=${hottestBook.bid}" class="link-product-add-cart">查看详情</a>
												</div>
											</div>
											<span class="product-new-top">Hot</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="bookDetail.action?bid=${hottestBook.bid}">${hottestBook.bname}</a></h4>
										<div class="info-product-price">
											<span class="item_price">${hottestBook.bprice}</span>
										</div>
											
										<a onclick="addcart(${hottestBook.bid})" class="item_add single-item hvr-outline-out button2">加入购物车</a>									
									</div>
								</div>
							</div>
						</c:forEach>
						<script type="text/javascript">
							function addcart(bid){
								window.location.href='addCart.action?uname=zhangsan'+'&bid='+bid+'&cnumber=1';
							}
						</script>
						<div class="clearfix"></div>
					</div>
					
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
						<c:forEach items="${queryLatestBooks}" var="latestBook">
							<div class="col-md-3 product-men yes-marg">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="${latestBook.bimage}" alt="" class="pro-image-front">
										<img src="${latestBook.bimage}" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="bookDetail.action?bid=${latestBook.bid}" class="link-product-add-cart">查看详情</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="bookDetail.action?bid=${latestBook.bid}">${latestBook.bname}</a></h4>
										<div class="info-product-price">
											<span class="item_price">${latestBook.bprice}</span>
										</div>
										<a onclick="addcart(${latestBook.bid})" class="item_add single-item hvr-outline-out button2">加入购物车</a>									
									</div>
								</div>
							</div>
						</c:forEach>
						
						<div class="clearfix"></div>						
					</div>
					
						
				</div>	
			</div>
		</div>
	</div>
</div>

</body>
</html>
