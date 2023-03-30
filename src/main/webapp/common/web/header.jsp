<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!-- Import Header -->
<header class="header--section header--style-3">
	<!-- Header Topbar Start -->
	<div class="header--topbar  bg--color-1">

		<div class="container">
			<div class="float--left float--xs-none text-xs-center">
				<!-- Header Topbar Info Start -->
				<ul class="header--topbar-info nav">
					<li><a href=""> <!-- <img style="border-radius: 12px; height: 40px;" src="./public/kcnew/frontend/img/image_logo.png" alt="logo"> -->
					</a></li>
					<li><i class="fa fm fa-map-marker"></i>Hồ Chí Minh</li>
					<li><i class="fa fm fa-mixcloud"></i>28<sup>0</sup> C</li>
					<li style="text-transform: capitalize"><i
						class="fa fm fa-calendar"></i>Hôm nay (Thứ Hai, Ngày 06 Tháng 03
						Năm 2023)</li>
				</ul>
				<!-- Header Topbar Info End -->
			</div>

			<div class="float--right float--xs-none text-xs-center">
				<!-- Header Topbar Action Start -->
				<ul class="header--topbar-action nav">
					<!-- @guest -->
					<li class="btn-cta">
                                                       <c:if test="${not empty UserLogin and not empty UserLogin.getName()}">
                                                            <a href="javascript:;"> <i class="fa fm fa-user-o"></i><span>${UserLogin.getName()}</span>   </a>
                                                      </c:if>
                                                      
                                                      <c:if test="${empty UserLogin}">
                                                          <a href="<c:url value='/dang-nhap' />" > <i class="fa fm fa-user-o"></i><span>Đăng nhập</span></a>
                                                      </c:if>
                                         
                                        </li>
					<!-- @endguest -->

					<!-- @auth -->
					<li class="has-dropdown">
                                            <c:if test="${not empty UserLogin and not empty UserLogin.getName()}">
                                                    <a data-toggle="dropdown"
                                                        class="dropdown-toggle" href="#"> 
                                                                 <span class="caret"></span>
                                                    </a>
                                                    <ul class="dropdown-menu">
                                                            <!-- @if(auth()->user()->role->name !== 'user') -->
                                                            <li><a href="">Admin - Dashbroad</a></li>
                                                            <!-- @endif -->
                                                            <li><a href="">Tài khoản của tôi</a></li>
                                                            <li>
                                                                <c:url var="logoutUrl" value="/dang-xuat" />
                                                                <a href="${logoutUrl}">Đăng xuất 
                                                                    <i class="fa fm fa-arrow-circle-right"></i>
                                                                </a>
                                                            </li>
                                                    </ul>
                                            </c:if>
                                        </li>
					<!-- @endauth -->

				</ul>
				<!-- Header Topbar Action End -->

				<!-- Header Topbar Social Start -->
				<ul class="header--topbar-social nav hidden-sm hidden-xxs">
					<li><a
						href="https://www.facebook.com/people/Anh-Tuan/100007007238964"><i
							class="fa fa-facebook"></i></a></li>
					<li><a
						href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
							class="fa fa-twitter"></i></a></li>
					<li><a
						href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
							class="fa fa-google-plus"></i></a></li>
					<li><a
						href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
							class="fa fa-rss"></i></a></li>
					<li><a
						href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
							class="fa fa-youtube-play"></i></a></li>
				</ul>
				<!-- Header Topbar Social End -->
			</div>
		</div>
	</div>
	<!-- Header Topbar End -->

	<!-- Header Navbar Start -->
	<div class="header--navbar navbar bd--color-1 bg--color-0"
		data-trigger="sticky">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#headerNav"
					aria-expanded="false" aria-controls="headerNav">
					<span class="sr-only">Toggle Navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>

			<div id="headerNav" class="navbar-collapse collapse float--left">
				<!-- Header Menu Links Start -->
				<ul class="header--menu-links nav navbar-nav"
					data-trigger="hoverIntent">
					<li><a href="<c:url value='/trang-chu' />" > <i
							class="icon_home fa fa-home"></i>
					</a></li>
                                        <c:forEach var="category" items="${listCategory}" varStatus="loop">
                                            <c:if test="${loop.index < 11 && category.name ne 'Chưa phân loại'}">
                                                  <li><a href="<c:url value='/chuyen-muc/${category.slug}'/>" >${category.name}</a></li>
                                            </c:if>
                                        </c:forEach>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Trang<i class="fa flm fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value='/gioi-thieu'/>">Giới thiệu</a></li>
							<li><a href="<c:url value='/lien-he'/>">Liên hệ</a></li>
						</ul></li>
					<li><a href="<c:url value='/tat-ca-chuyen-muc' />" > <span
							style="color: #ccc; margin-right: 10px;">Tất cả</span> <img
							width="17" class="icon-menu"
							src="https://static.vnncdn.net/v1/icon/menu-center.svg">
					</a></li>
				</ul>
				<!-- Header Menu Links End -->
			</div>

                       <!--  Tìm kiếm -->
                        <form method="POST" action="<c:url value='/tim-kiem'/>" class="header--search-form float--right" data-form="validate">
				<input type="search" name="search" placeholder="Tim kiếm..."
					class="header--search-control form-control" required>

				<button type="submit" class="header--search-btn btn">
					<i class="header--search-icon fa fa-search"></i>
				</button>
			</form>
		</div>
	</div>
	<!-- Header Navbar End -->
</header>
<!-- Header Section End -->
<div id="page" class="wrapper">
	<!-- Posts Filter Bar Start -->
	<div class="posts--filter-bar style--3 hidden-xs">
		<div class="container">
			<ul class="nav">
				<li><a href="<c:url value='/tin-tuc-moi-nhat' />"> <i class="fa fa-star-o"></i>
						<span>Tin tức mới nhất</span>
				</a></li>

				<li><a href="<c:url value='/tin-nong' />"> <i class="fa fa-fire"></i>
						<span>Tin nóng</span>
				</a></li>
				<li><a href="<c:url value='/xem-nhieu-nhat' />"> <i class="fa fa-eye"></i>
						<span>Xem nhiều nhất</span>
				</a></li>
			</ul>
		</div>
	</div>

	<!-- News Ticker Start -->
	<div class="news--ticker">
		<div class="container">
			<div class="title">
				<h2>Tin mới cập nhật</h2>
			</div>

			<div class="news-updates--list" data-marquee="true">
				<ul class="nav">
                                    <c:forEach var="post" items="${listNewPostNav}" >
					<li>
						<h3 class='h3'>
							<a href="<c:url value='/${post.slug}'/>">${post.title}</a>
						</h3>
					</li>
                                    </c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
