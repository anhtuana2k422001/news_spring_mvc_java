<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Website Tin Tức</title>
    </head>
    <body>
        <!-- Code Content  -->
        <div class="wrapper">
            <!-- Main Content Section Start -->
            <div class="main-content--section pbottom--30">
                <div class="container">
                    <!-- Main Content Start -->
                    <div class="main--content">
                        <!-- Post Items Start -->
                        <div class="post--items post--items-1 pd--30-0">
                            <div class="row gutter--15">
                                <div class="col-md-6">
                                    <div class="row gutter--15">
                                        <c:forEach items="${listNewPostHome}" var="post" varStatus="loop">
                                            <c:if test="${loop.index < 2}">
                                                <div class="col-xs-6 col-xss-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1 post--title-large">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${post.slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='/template/web/storage/${imageService.getPathImgPost(post.id).path}'/>"
                                                                    alt=""></a>
                                                            <a href="javascript:;" class="cat">${categoryService.getNameCategoryById(post.category_id)}</a>

                                                            <a href="javascript:;" class="icon"><i class="fa fa-flash"></i></a>
                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${post.created_at}</a></li>
                                                                </ul>
                                                                <div class="title">
                                                                    <h2 class="h4"><a href="<c:url value='/${post.slug}'/>" class="btn-link">${post.title}</a>
                                                                    </h2>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </div>
                                            </c:if>
                                         </c:forEach>

                                        <c:forEach items="${listNewPostHome}" var="post" varStatus="loop">
                                            <c:if test="${loop.index == 2}">
                                                <div class="col-sm-12 hidden-sm hidden-xs">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1 post--title-larger">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${post.slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='/template/web/storage/${imageService.getPathImgPost(post.id).path}'/>"
                                                                    style="height:200px" alt=""></a>

                                                            <a href="javascript:;" class="cat">${categoryService.getNameCategoryById(post.category_id)}</a>

                                                            <a href="javascript:;" class="icon"><i class="fa fa-fire"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${post.created_at}</a></li>
                                                                </ul>
                                                                 <p class="excerpt">${post.excerpt}</p>
                                                                <div class="title">
                                                                    <h2 class="h4"><a
                                                                            href="<c:url value='/${post.slug}'/>"
                                                                            class="btn-link">${post.title}</a></h2>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </div>
                                            </c:if>
                                        </c:forEach>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                 <c:forEach items="${listNewPostHome}" var="post" varStatus="loop">
                                    <c:if test="${loop.index == 3}">
                                    <!-- Post Item Start -->
                                        <div class="post--item post--layout-1 post--title-larger">
                                            <div class="post--img">
                                                    <a href="<c:url value='/${post.slug}'/>"
                                                   class="thumb"><img src="<c:url value='/template/web/storage/${imageService.getPathImgPost(post.id).path}'/>" alt=""></a>

                                                <a href="javascript:;" class="cat">${categoryService.getNameCategoryById(post.category_id)}</a>

                                                <a href="javascript:;" class="icon"><i class="fa fa-flash"></i></a>

                                                <div class="post--info">
                                                    <ul class="nav meta">
                                                        <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                        <li><a href="javascript:;">${post.created_at}</a></li>
                                                    </ul>
                                                      <p class="excerpt">${post.excerpt}</p>
                                                    <div class="title">
                                                        <h2 class="h4"><a
                                                                href="<c:url value='/${post.slug}'/>"
                                                                class="btn-link">${post.title}</a>
                                                        </h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <!-- Post Item End -->
                                    </c:if>
                                </c:forEach>
                                </div>

                            </div>
                        </div>
                        <!-- Post Items End -->
                    </div>
                    <!-- Main Content End -->


                    <div class="row">
                        <!-- Main Content Start -->
                        <div class="main--content col-md-8 col-sm-7" data-sticky-content="true">
                            <div class="sticky-content-inner">
                                <div class="row">
                                    <!-- World News Start -->
                                    <div class="col-md-6 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">${nameCate01}</h2>
                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row gutter--15" data-ajax-content="inner">


                                                <li class="col-xs-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${postService.listPostCategory(idCate01).get(0).slug}'/>"
                                                               class="thumb"><img src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate01).get(0).id)}'/>"
                                                                               alt=""></a>

                                                            <a href="javascript:;" class="icon"><i class="fa fa-flash"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate01).get(0).user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate01).get(0).created_at}</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="<c:url value='/${postService.listPostCategory(idCate01).get(0).slug}'/>"
                                                                            class="btn-link">${postService.listPostCategory(idCate01).get(0).title}</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                
                                               

                                                <li class="col-xs-12">
                                                    <!-- Divider Start -->
                                                    <hr class="divider">
                                                    <!-- Divider End -->
                                                </li>
                                                <!-- Đóng hàm if -->

                                                <c:forEach var="post" items="${postService.listPostCategory(idCate01)}" varStatus="loop">
                                                    <c:if test="${ 1 <= loop.index  &&  loop.index  <= 4}">
                                                    <li class="col-xs-6">
                                                    <!-- Post Item Start -->
                                                        <div class="post--item post--layout-2">
                                                            <div class="post--img">
                                                                <a href="<c:url value='/${post.slug}'/>"
                                                                   class="thumb"><img
                                                                        src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                        alt=""></a>

                                                                <div class="post--info">
                                                                    <ul class="nav meta">
                                                                       <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                       <li><a href="javascript:;">${post.created_at}</a></li>
                                                                    </ul>

                                                                    <div class="title">
                                                                        <h3 class="h4"><a
                                                                                href="<c:url value='/${post.slug}'/>"
                                                                                class="btn-link">${post.title}</a>
                                                                        </h3>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    
                                                    <!-- Post Item End -->
                                                     </li>
                                                    </c:if>
                                                     <c:if test="${loop.index  == 2}">
                                                        <li class="col-xs-12">
                                                               <hr class="divider">
                                                        </li>
                                                    </c:if>
                                                <!-- Đóng hàm if -->
                                                </c:forEach>
                                            
                                            </ul>

                                        </div>
                                        <!-- Post Items End -->
                                    </div>
                                    <!-- World News End -->

                                    <!-- Technology Start -->
                                    <div class="col-md-6 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">${nameCate02}</h2>

                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-3" data-ajax-content="outer">
                                            <ul class="nav" data-ajax-content="inner">

                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${postService.listPostCategory(idCate02).get(0).slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate02).get(0).id)}'/>"
                                                                    alt=""></a>

                                                            <a href="javascript:;" class="icon"><i class="fa fa-flash"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                   <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate02).get(0).user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate02).get(0).created_at}</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="<c:url value='/${postService.listPostCategory(idCate02).get(0).slug}'/>"
                                                                            class="btn-link">${postService.listPostCategory(idCate02).get(0).title}</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                
                                                <c:forEach var="post" items="${postService.listPostCategory(idCate02)}" varStatus="loop">
                                                       <c:if test="${ 1 <= loop.index  &&  loop.index  <= 5}"> 
                                                    <li>
                                                        <!-- Post Item Start -->
                                                        <div class="post--item post--layout-3">
                                                            <div class="post--img">
                                                                <a href="<c:url value='/${post.slug}'/>"
                                                                   class="thumb"><img
                                                                        src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                        alt=""></a>

                                                                <div class="post--info">
                                                                    <ul class="nav meta">
                                                                        <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                        <li><a href="javascript:;"> ${post.created_at}</a></li>
                                                                    </ul>

                                                                    <div class="title">
                                                                        <h3 class="h4"><a
                                                                                href="<c:url value='/${post.slug}'/>"
                                                                                class="btn-link">${post.title}</a>
                                                                        </h3>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- Post Item End -->
                                                    </li>
                                             
                                                    </c:if>
                                             </c:forEach>
                                            </ul>


                                        </div>
                                        <!-- Post Items End -->
                                    </div>
                                    <!-- Technology End -->

                                    <!-- Finance Start -->
                                    <div class="col-md-12 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">${nameCate03}</h2>

                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row" data-ajax-content="inner">
                                                <li class="col-md-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${postService.listPostCategory(idCate03).get(0).slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate03).get(0).id)}'/>"
                                                                    alt=""></a>
                                                            <a href="javascript:;" class="cat">Kinh tế</a>
                                                            <a href="javascript:;" class="icon"><i class="fa fa-star-o"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate03).get(0).user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate03).get(0).created_at}</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="<c:url value='/${postService.listPostCategory(idCate03).get(0).slug}'/>"
                                                                            class="btn-link">${postService.listPostCategory(idCate03).get(0).title}</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->

                                                    <hr class="mar_bottom15 ">

                                                    <ul class="list_news_show_home">
                                                        <c:forEach var="post" items="${postService.listPostCategory(idCate03)}" varStatus="loop">
                                                           <c:if test="${ 1 <= loop.index  &&  loop.index  <= 3}"> 
                                                            <li class="boder_link_show_home">
                                                                <h3 class="h3"><a href="<c:url value='/${post.slug}'/>">${post.title}</a></h3>
                                                            </li>
                                                            </c:if>
                                                        </c:forEach>

                                                    </ul>

                                                </li>

                                                <li class="col-md-6">
                                                    <ul class="nav row">
                                                        <li class="col-xs-12 hidden-md hidden-lg">
                                                            <!-- Divider Start -->
                                                            <hr class="divider">
                                                            <!-- Divider End -->
                                                        </li>


                                                        <c:forEach var="post" items="${postService.listPostCategory(idCate03)}" varStatus="loop">
                                                            <c:if test="${ 4 <= loop.index  &&  loop.index  <= 7}"> 
                                                                <li class="col-xs-6">
                                                                    <!-- Post Item Start -->
                                                                    <div class="post--item post--layout-2">
                                                                        <div class="post--img">
                                                                            <a href="<c:url value='/${post.slug}'/>"
                                                                               class="thumb"><img 
                                                                                    src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                                    alt=""></a>

                                                                            <div class="post--info">
                                                                                <ul class="nav meta">

                                                                                    <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                                    <li><a href="javascript:;">${post.created_at}</a></li>
                                                                                </ul>

                                                                                <div class="title">
                                                                                    <h3 class="h4"><a
                                                                                            href="<c:url value='/${post.slug}'/>"
                                                                                            class="btn-link">${post.title}</a></h3>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- Post Item End -->
                                                                </li>

                                                                <c:if test="${loop.index  == 5}">
                                                                    <li class="col-xs-12">
                                                                        <!-- Divider Start -->
                                                                        <hr class="divider">
                                                                        <!-- Divider End -->
                                                                    </li>
                                                                </c:if>

                                                            </c:if>
                                                        </c:forEach>
                                                                    
                                                    </ul>
                                                </li>
                                            </ul>


                                        </div>
                                        <!-- Post Items End -->
                                    </div>
                                    <!-- Finance End -->

                                    <!-- Politics Start -->
                                    <div class="col-md-6 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">${nameCate04}</h2>
                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row gutter--15" data-ajax-content="inner">
                                                <li class="col-xs-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${postService.listPostCategory(idCate04).get(0).slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate04).get(0).id)}'/>"
                                                                    alt=""></a>
                                                            <a href="javascript:;"
                                                               class="cat"> ${nameCate04}</a>
                                                            <a href="javascript:;" class="icon"><i class="fa fa-fire"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate04).get(0).user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate04).get(0).created_at}</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a href="<c:url value='/${postService.listPostCategory(idCate04).get(0).slug}'/>"
                                                                                      class="btn-link">${postService.listPostCategory(idCate04).get(0).title}</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>

                                                <li class="col-xs-12">
                                                    <!-- Divider Start -->
                                                    <hr class="divider">
                                                    <!-- Divider End -->
                                                </li>
                                                <c:forEach var="post" items="${postService.listPostCategory(idCate04)}" varStatus="loop">
                                                    <c:if test="${ 1 <= loop.index  &&  loop.index  <= 4}"> 
                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="<c:url value='/${post.slug}'/>"
                                                                       class="thumb"><img
                                                                            src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">
                                                                            <li><a href="javascript:;"> ${userService.getUserById(post.user_id).name}</a></li>
                                                                            <li><a href="javascript:;"> ${post.created_at}</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="<c:url value='/${post.slug}'/>"
                                                                                    class="btn-link">${post.title}</a>
                                                                            </h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>

                                                        <c:if test="${loop.index  == 2}">\
                                                            <li class="col-xs-12">
                                                                <!-- Divider Start -->
                                                                <hr class="divider">
                                                                <!-- Divider End -->
                                                            </li>
                                                        </c:if>


                                                    </c:if>
                                                </c:forEach>
                                            
                                            </ul>


                                        </div>
                                        <!-- Post Items End -->
                                    </div>
                                    <!-- Politics End -->

                                    <!-- Sports Start -->
                                    <div class="col-md-6 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">${nameCate05}</h2>
                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-3" data-ajax-content="outer">
                                            <ul class="nav" data-ajax-content="inner">
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${postService.listPostCategory(idCate05).get(0).slug}'/>"
                                                               class="thumb"><img src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate05).get(0).id)}'/>"
                                                                               alt=""></a>
                                                            <a href="javascript:;"
                                                               class="cat">${nameCate05}</a>
                                                            <a href="javascript:;" class="icon"><i class="fa fa-eye"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate05).get(0).user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate05).get(0).created_at}</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="<c:url value='/${postService.listPostCategory(idCate05).get(0).slug}'/>"
                                                                            class="btn-link">${postService.listPostCategory(idCate05).get(0).title}</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                
                                                <c:forEach var="post" items="${postService.listPostCategory(idCate05)}" varStatus="loop">
                                                    <c:if test="${ 1 <= loop.index  &&  loop.index  <= 5}"> 
                                                        <li>
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-3">
                                                                <div class="post--img">
                                                                    <a href="<c:url value='/${post.slug}'/>"
                                                                       class="thumb"><img
                                                                            src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">
                                                                            <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                            <li><a href="javascript:;">${post.created_at}</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="<c:url value='/${post.slug}'/>"
                                                                                    class="btn-link">${post.title}</a></h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>
                                                    </c:if>
                                                </c:forEach>  

                                            </ul>

                                        </div>
                                        <!-- Post Items End -->
                                    </div>
                                    <!-- Sports End -->
                                </div>
                            </div>
                        </div>
                        <!-- Main Content End -->

                        <!-- Main Sidebar Start -->
                        <div class="main--sidebar col-md-4 col-sm-5 ptop--30 pbottom--30" data-sticky-content="true">
                            <div class="sticky-content-inner">
                                    
                                <!-- Widget Start -->
                                    <%@ include file="/common/web/slide/outstanding_posts.jsp"%>
                                <!-- Widget End -->
                                    <%@ include file="/common/web/slide/banner.jsp"%>

                                <!-- Bắt đầu Từ khóa -->
                                <div class="widget">
                                    <div class="widget--title  " data-ajax="tab">
                                        <h2 class="h4">Từ khóa</h2>
                                    </div>
                                    <div class="list--widget list--widget-1" data-ajax-content="outer">
                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-3">
                                            <ul style="padding:20px" class="nav sidebar" data-ajax-content="inner">
                                                <div class="side">
                                                    <div class="block-26">
                                                        <ul>
                                                            <li><a href="">IT</a></li>
                                                            <li><a href="">hUTECH</a></li>
                                                            <li><a href="">oPenday</a></li>
                                                            <li><a href="">Ukraine</a></li>
                                                            <li><a href="">Nga</a></li>
                                                            <li><a href="">chiến sự Nga Ukraine</a></li>
                                                            <li><a href="">xe-oto</a></li>
                                                            <li><a href="">toyota</a></li>
                                                            <li><a href="">crown</a></li>
                                                            <li><a href="">bí quyết hạnh phúc</a></li>
                                                            <li><a href="">hôn nhân</a></li>
                                                            <li><a href="">niềm tin sai nhầm</a></li>
                                                            <li><a href="">MIT</a></li>
                                                            <li><a href="">biến đổi khí hậu</a></li>
                                                            <li><a href="">ấm lên toàn cầu</a></li>
                                                            <li><a href="">biến đổi khí hậu</a></li>
                                                            <li><a href="">Trung Quốc</a></li>
                                                            <li><a href="">lũ lụt Trung Quốc</a></li>
                                                            <li><a href="">Quảng Ninh</a></li>
                                                            <li><a href="">bé trai đuối nước</a></li>
                                                            <li><a href="">sông biên giới</a></li>
                                                            <li><a href="">Đồng Nai</a></li>
                                                            <li><a href="">hỏa hoạn</a></li>
                                                            <li><a href="">cháy container</a></li>
                                                            <li><a href="">Triều Tiên</a></li>
                                                            <li><a href="">covid-19</a></li>
                                                            <li><a href="">dịch đường ruột cấp</a></li>
                                                            <li><a href="">italy</a></li>
                                                            <li><a href="">cuộc sống đó đây</a></li>
                                                            <li><a href="">cầu hôn siêu thị</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- Kết thúc từ khóa -->

                                <!-- Widget Start -->
                                <div class="widget">
                                    <!-- Ad Widget Start -->
                                    <div class="ad--widget--banner">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <a
                                                    href="https://mwc.com.vn/products/giay-sandal-nu-mwc-nusd--2887?c=N%C3%82U">
                                                    <img src="template/web/public/kcnew/frontend/img/ads-img/banner_quangcao1.png" alt="">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Ad Widget End -->
                                </div>
                                <!-- Widget End -->

                                <!-- Widget Start -->
                                <div class="widget">
                                    <div class="widget--title">
                                        <h2 class="h4">Kết nối với chúng tôi</h2>
                                        <i class="icon fa fa-share-alt"></i>
                                    </div>

                                    <!-- Social Widget Start -->
                                    <div class="social--widget style--2">
                                        <ul class="nav row gutter--20">
                                            <li class="col-md-12 facebook">
                                                <a href="https://www.facebook.com/people/Anh-Tuan/100007007238964">
                                                    <span class="icon">
                                                        <i class="fa fa-facebook"></i>
                                                        <span>Share</span>
                                                    </span>

                                                    <span class="text">
                                                        <span>Facebook</span>
                                                        <span>3.12 k</span>
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="col-md-12 twitter">
                                                <a href="https://www.facebook.com/people/Anh-Tuan/100007007238964">
                                                    <span class="icon">
                                                        <i class="fa fa-twitter"></i>
                                                        <span>Tweet</span>
                                                    </span>

                                                    <span class="text">
                                                        <span>Twitter</span>
                                                        <span>869</span>
                                                    </span>
                                                </a>
                                            </li>

                                            <li class="col-md-12 google-plus">
                                                <a href="https://www.facebook.com/people/Anh-Tuan/100007007238964">
                                                    <span class="icon">
                                                        <i class="fa fa-google-plus"></i>
                                                        <span>Share</span>
                                                    </span>

                                                    <span class="text">
                                                        <span>Google+</span>
                                                        <span>639</span>
                                                    </span>
                                                </a>
                                            </li>


                                        </ul>
                                    </div>
                                    <!-- Social Widget End -->
                                </div>
                                <!-- Widget End -->

                                <!-- Widget Start -->
                                <div class="widget">
                                    <div class="widget--title">
                                        <h2 class="h4">Quảng cáo</h2>
                                        <i class="icon fa fa-bullhorn"></i>
                                    </div>

                                    <!-- Ad Widget Start -->
                                    <div class="ad--widget--banner">
                                        <a href="https://mwc.com.vn/products/giay-sandal-nu-mwc-nusd--2887?c=N%C3%82U">
                                            <img src="template/web/public/kcnew/frontend/img/ads-img/banner_quangcao.png" alt="">
                                        </a>
                                    </div>
                                    <!-- Ad Widget End -->
                                </div>
                                <!-- Widget End -->
                            </div>
                        </div>
                        <!-- Main Sidebar End -->
                    </div>

                    <!-- Main Content Start -->
                    <div class="main--content pd--30-0">
                        <!-- Post Items Title Start -->
                        <div class="post--items-title" data-ajax="tab">
                            <h2 class="h4">${nameCate06}</h2>
                        </div>
                        <!-- Post Items Title End -->

                        <!-- Post Items Start -->
                        <div class="post--items post--items-4" data-ajax-content="outer">
                            <ul class="nav row" data-ajax-content="inner">
                                <li class="col-md-8">
                                    <!-- Post Item Start -->
                                    <div class="post--item post--layout-1 post--type-video post--title-large">
                                        <div class="post--img">
                                            <a href="<c:url value='/${postService.listPostCategory(idCate06).get(0).slug}'/>" class="thumb"><img
                                                    src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate06).get(0).id)}'/>" alt=""></a>
                                            <a href="javascript:;" class="cat">${nameCate06}</a>
                                            <a href="javascript:;" class="icon"><i class="fa fa-eye"></i></a>

                                            <div class="post--info">
                                                <ul class="nav meta">
                                                    <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate06).get(0).user_id).name}</a></li>
                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate06).get(0).created_at}</a></li>
                                                </ul>

                                                <div class="title">
                                                    <h2 class="h4"><a
                                                            href="<c:url value='/${postService.listPostCategory(idCate06).get(0).slug}'/>"
                                                            class="btn-link">${postService.listPostCategory(idCate06).get(0).title}</a></h2>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Post Item End -->

                                    <!-- Divider Start -->
                                    <hr class="divider hidden-md hidden-lg">
                                    <!-- Divider End -->
                                </li>
                                <li class="col-md-4">
                                    <ul class="nav">

                                        <c:forEach var="post" items="${postService.listPostCategory(idCate06)}" varStatus="loop">
                                            <c:if test="${ 1 <= loop.index  &&  loop.index  <= 5}"> 
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--type-audio post--layout-3">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${post.slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${post.created_at}</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="<c:url value='/${post.slug}'/>"
                                                                            class="btn-link">${post.title}</a></h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>

                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </ul>


                        </div>
                        <!-- Post Items End -->
                    </div>
                    <!-- Main Content End -->

                    <!-- Advertisement Start -->
                    <div class="ad--space pd--30-0">
                        <a href="https://burine.vn/">
                            <img src="template/web/public/kcnew/frontend/img/ads-img/970x90_banner_burine.png" alt="" class="center-block">
                        </a>
                    </div>
                    <!-- Advertisement End -->

                    <div class="row">
                        <!-- Main Content Start -->
                        <div class="main--content col-md-8 col-sm-7" data-sticky-content="true">
                            <div class="sticky-content-inner">
                                <div class="row">
                                    <!-- Health and fitness Start -->
                                    <div class="col-md-6 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">${nameCate07}</h2>


                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-3" data-ajax-content="outer">
                                            <ul class="nav" data-ajax-content="inner">
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${postService.listPostCategory(idCate07).get(0).slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate07).get(0).id)}'/>" alt=""></a>
                                                            <a href="javascript:;"
                                                               class="cat">${nameCate07}</a>
                                                            <a href="javascript:;" class="icon"><i class="fa fa-star-o"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate07).get(0).user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate07).get(0).created_at}</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="<c:url value='/${postService.listPostCategory(idCate07).get(0).slug}'/>"
                                                                            class="btn-link">${postService.listPostCategory(idCate07).get(0).title}</a></h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                
                                                <c:forEach var="post" items="${postService.listPostCategory(idCate07)}" varStatus="loop">
                                                    <c:if test="${ 1 <= loop.index  &&  loop.index  <= 4}"> 
                                                        <li>
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-3">
                                                                <div class="post--img">
                                                                    <a href="<c:url value='/${post.slug}'/>"
                                                                       class="thumb"><img
                                                                            src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">
                                                                            <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                            <li><a href="javascript:;">${post.created_at}</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="<c:url value='/${post.slug}'/>"
                                                                                    class="btn-link">${post.title}</a></h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>
                                                    </c:if>
                                                </c:forEach>


                                            </ul>


                                        </div>
                                        <!-- Post Items End -->
                                    </div>
                                    <!-- Health and fitness End -->

                                    <!-- Lifestyle Start -->
                                    <div class="col-md-6 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">${nameCate08}</h2>


                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row gutter--15" data-ajax-content="inner">

                                                <li class="col-xs-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${postService.listPostCategory(idCate08).get(0).slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate08).get(0).id)}'/>"
                                                                    alt=""></a>
                                                            <a href="javascript:;"
                                                               class="cat">${nameCate08}</a>
                                                            <a href="javascript:;" class="icon"><i class="fa fa-heart-o"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate08).get(0).user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate08).get(0).created_at}</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="<c:url value='/${postService.listPostCategory(idCate08).get(0).slug}'/>"
                                                                            class="btn-link">${postService.listPostCategory(idCate08).get(0).title}</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->

                                                </li>
                                                <li class="col-xs-12">
                                                    <!-- Divider Start -->
                                                    <hr class="divider">
                                                    <!-- Divider End -->
                                                </li>

                                                <c:forEach var="post" items="${postService.listPostCategory(idCate08)}" varStatus="loop">
                                                    <c:if test="${ 1 <= loop.index  &&  loop.index  <= 4}"> 
                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="<c:url value='/${post.slug}'/>"
                                                                       class="thumb"><img
                                                                            src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">
                                                                            <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                            <li><a href="javascript:;">${post.created_at}</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="<c:url value='/${post.slug}'/>"
                                                                                    class="btn-link">${post.title}</a></h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>
                                                        <c:if test="${loop.index  == 2}">\
                                                            <li class="col-xs-12">
                                                                <!-- Divider Start -->
                                                                <hr class="divider">
                                                                <!-- Divider End -->
                                                            </li>
                                                        </c:if>


                                                    </c:if>
                                                </c:forEach>

                                            </ul>

                                        </div>
                                        <!-- Post Items End -->
                                    </div>
                                    <!-- Lifestyle End -->

                                    <div class="col-md-12 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">${nameCate09}</h2>

                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row" data-ajax-content="inner">
                                                <li class="col-md-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${postService.listPostCategory(idCate09).get(0).slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate09).get(0).id)}'/>" alt="">
                                                            </a>
                                                            <a href="javascript:;" class="cat">${nameCate09}</a>
                                                            <a href="javascript:;" class="icon"><i class="fa fa-star-o"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate09).get(0).user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate09).get(0).created_at}</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="<c:url value='/${postService.listPostCategory(idCate09).get(0).slug}'/>"
                                                                            class="btn-link">${postService.listPostCategory(idCate09).get(0).title}</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->

                                                    <hr class="mar_bottom15 ">

                                                    <ul class="list_news_show_home">
                                                        <c:forEach var="post" items="${postService.listPostCategory(idCate09)}" varStatus="loop">
                                                            <c:if test="${ 1 <= loop.index  &&  loop.index  <= 3}"> 
                                                                <li class="boder_link_show_home">
                                                                    <h3 class="h3"><a
                                                                            href="<c:url value='/${post.slug}'/>">${post.title}</a></h3>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                    </ul>
                                                </li>
                                                
                                                <li class="col-md-6">
                                                    <ul class="nav row">
                                                        <li class="col-xs-12 hidden-md hidden-lg">
                                                            <!-- Divider Start -->
                                                            <hr class="divider">
                                                            <!-- Divider End -->
                                                        </li>
                                                        
                                                        <c:forEach var="post" items="${postService.listPostCategory(idCate09)}" varStatus="loop">
                                                            <c:if test="${ 4 <= loop.index  &&  loop.index  <= 7}"> 
                                                                <li class="col-xs-6">
                                                                    <!-- Post Item Start -->
                                                                    <div class="post--item post--layout-2">
                                                                        <div class="post--img">
                                                                            <a href="<c:url value='/${post.slug}'/>"
                                                                               class="thumb"><img
                                                                                    src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                                    alt=""></a>

                                                                            <div class="post--info">
                                                                                <ul class="nav meta">
                                                                                    <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                                    <li><a href="javascript:;">${post.created_at}</a></li>
                                                                                </ul>

                                                                                <div class="title">
                                                                                    <h3 class="h4"><a
                                                                                            href="<c:url value='/${post.slug}'/>"
                                                                                            class="btn-link">${post.title}</a></h3>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- Post Item End -->
                                                                </li>
                                                                <c:if test="${loop.index  == 5}">
                                                                    <li class="col-xs-12">
                                                                        <!-- Divider Start -->
                                                                        <hr class="divider">
                                                                        <!-- Divider End -->
                                                                    </li>

                                                                </c:if>
                                                            </c:if>
                                                        </c:forEach>


                                                    </ul>
                                                </li>
                                            </ul>


                                        </div>
                                        <!-- Post Items End -->
                                    </div>

                                    <!-- Photo Gallery Start -->
                                    <div class="col-md-12 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">${nameCate10}</h2>

                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-1" data-ajax-content="outer">
                                            <ul class="nav row gutter--15" data-ajax-content="inner">
                                                <li class="col-md-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1 post--title-large">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${postService.listPostCategory(idCate10).get(0).slug}'/>"
                                                               class="thumb"><img
                                                                    src="<c:url value='${imageService.getConfigPathImgPost(postService.listPostCategory(idCate10).get(0).id)}'/>"
                                                                    alt=""></a>
                                                            <a href="javascript:;"
                                                               class="cat">${nameCate10}</a>
                                                            <a href="javascript:;" class="icon"><i class="fa fa-eye"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">${userService.getUserById(postService.listPostCategory(idCate10).get(0).user_id).name}</a></li>
                                                                    <li><a href="javascript:;">${postService.listPostCategory(idCate10).get(0).created_at}</a></li>
                                                                </ul>

                                                                <div class="title text-xxs-ellipsis">
                                                                    <h2 class="h4"><a
                                                                            href="<c:url value='/${postService.listPostCategory(idCate10).get(0).slug}'/>"
                                                                            class="btn-link">${postService.listPostCategory(idCate10).get(0).title}</a></h2>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>

                                                <c:forEach var="post" items="${postService.listPostCategory(idCate10)}" varStatus="loop">
                                                    <c:if test="${ 1 <= loop.index  &&  loop.index  <= 3}"> 
                                                        <li class="col-md-4 col-xs-6 col-xxs-12">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-1">
                                                                <div class="post--img">
                                                                    <a href="<c:url value='/${post.slug}'/>"
                                                                       class="thumb"><img
                                                                            src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">
                                                                            <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a></li>
                                                                            <li><a href="javascript:;">${post.created_at}</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h2 class="h4"><a
                                                                                    href="<c:url value='/${post.slug}'/>"
                                                                                    class="btn-link">${post.title}</a></h2>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>
                                                    </c:if>
                                                </c:forEach>
    
                                            </ul>

                                        </div>
                                        <!-- Post Items End -->
                                    </div>
                                    <!-- Photo Gallery End -->
                                </div>
                            </div>
                        </div>
                        <!-- Main Content End -->

                        <!-- Main Sidebar Start -->
                        <div class="main--sidebar col-md-4 col-sm-5 ptop--30 pbottom--30" data-sticky-content="true">
                            <div class="sticky-content-inner">
                                <!-- Widget Start -->
                                <div class="widget">
                                    <div class="widget--title" data-ajax="tab">
                                        <h2 class="h4">Bình chọn</h2>

                                        <div class="nav">
                                            <a href="javascript:;" class="prev btn-link" data-ajax-action="load_prev_poll_widget">
                                                <i class="fa fa-long-arrow-left"></i>
                                            </a>

                                            <span class="divider">/</span>

                                            <a href="javascript:;" class="next btn-link" data-ajax-action="load_next_poll_widget">
                                                <i class="fa fa-long-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>

                                    <!-- Poll Widget Start -->
                                    <div class="poll--widget" data-ajax-content="outer">
                                        <ul class="nav" data-ajax-content="inner">
                                            <li class="title">
                                                <h3 class="h4">
                                                    Theo bạn thì giải đội bóng nào sẽ vô địch WoldCup 2022 ?</h3>
                                            </li>

                                            <li class="options">
                                                <form action="javascript:;">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" name="option-1">
                                                            <img src="template/web/public/kcnew/frontend/img/Flag_barzill.PNG" alt="Flag_barzill" srcset="">
                                                            <span>Brasil</span>
                                                        </label>

                                                        <p>55%<span style="width: 55%;"></span></p>
                                                    </div>

                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" name="option-2">
                                                            <img src="template/web/public/kcnew/frontend/img/Flag_Agrennal.PNG" alt="Flag_Agrennal" srcset="">
                                                            <span>Argentina</span>
                                                        </label>

                                                        <p>28%<span style="width: 28%;"></span></p>
                                                    </div>

                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" name="option-2">
                                                            <img src="template/web/public/kcnew/frontend/img/Flag_tay_ban_nha.PNG" alt="Flag_tay_ban_nha" srcset="">
                                                            <span>Tây Ban Nha</span>
                                                        </label>

                                                        <p>12%<span style="width: 12%;"></span></p>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" name="option-2">
                                                            <img src="template/web/public/kcnew/frontend/img/Flag_bo-dao-nha.PNG" alt="Flag_bo-dao-nha" srcset="">
                                                            <span>Bồ Đào Nha</span>
                                                        </label>

                                                        <p>05%<span style="width: 05%;"></span></p>
                                                    </div>

                                                    <button type="submit" class="btn btn-primary">Vote Ngay</button>
                                                </form>
                                            </li>
                                        </ul>

                                        <!-- Preloader Start -->
                                        <div class="preloader bg--color-0--b" data-preloader="1">
                                            <div class="preloader--inner"></div>
                                        </div>
                                        <!-- Preloader End -->
                                    </div>
                                    <!-- Poll Widget End -->
                                </div>
                                <!-- Widget End -->

                                <!-- Widget Start -->
                                <div class="widget">
                                    <div class="widget--title" data-ajax="tab">
                                        <h2 class="h4">Ý KIẾN NGƯỜI ĐỌC</h2>
                                    </div>

                                    <!-- List Widgets Start -->
                                    <div class="list--widget list--widget-2" data-ajax-content="outer">
                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-3">
                                            <ul class="nav" data-ajax-content="inner">
                                                <c:forEach var="comment" items="${listCommentHome}" varStatus="loop">
                                                    <c:if test="${loop.index  < 5}"> 
                                                        <li>
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-3">
                                                                <div class="post--img">
                                                                    <span class="thumb">
                                                                        <img style="margin: auto; background-size: cover ;  width: 60px; height: 60px;   background-image: url(<c:url value='${imageService.getConfigPathImgUser(comment.user_id)}'/>)"  alt="">
                                                                    </span>

                                                                    <div class="post--info">
                                                                        <div class="title">
                                                                            <h3 class="h4"><a href="<c:url value='${postService.getPostById(comment.post_id).slug}#comments_all'/>">${comment.the_comment}</a> </h3>
                                                                        </div>

                                                                        <ul class="nav meta">
                                                                            <li><span>  ${userService.getUserById(comment.user_id).name}</span></li>
                                                                            <li><span>${comment.created_at}</span></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>

                                                    </c:if>
                                                </c:forEach>

                                            </ul>


                                        </div>
                                        <!-- Post Items End -->
                                    </div>
                                    <!-- List Widgets End -->
                                </div>
                                <!-- Widget End -->

                            </div>
                        </div> <!-- Main Sidebar End -->
                    </div>

                </div>
            </div>
            <!-- Main Content Section End -->

        </div> 

    </body>
</html>