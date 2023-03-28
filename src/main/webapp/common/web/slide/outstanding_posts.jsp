<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Widget Start -->
<div class="widget">
    <div class="widget--title">
        <h2 class="h4">Tin tức nổi bật</h2>
        <i class="icon fa fa-newspaper-o"></i>
    </div>

    <!-- List Widgets Start -->
    <div class="list--widget list--widget-1">
        <div class="list--widget-nav" data-ajax="tab">
            <ul class="nav nav-justified">
                <li class="active">
                    <a class="outstandPosts" href="#" data-ajax-action="load_widget_hot_news">Tin nóng</a>
                </li>
                <li >
                    <a class="outstandPosts" href="" data-ajax-action="load_widget_trendy_news">Xu hướng</a>
                </li>
                <li>
                    <a class="outstandPosts" href="" data-ajax-action="load_widget_most_watched">Xem nhiều nhất</a>
                </li>
            </ul>
        </div>

        <!-- Post Items Start -->
        <div class="post--items post--items-3" data-ajax-content="outer">
            <ul class="nav listPost" data-ajax-content="inner">
                 <c:forEach var="post" items="${listNewPost}">    
                    <li>
                        <!-- Post Item Start -->
                        <div class="post--item post--layout-3">
                            <div class="post--img">
                                <a href="<c:url value='/${post.slug}'/>" class="thumb"><img src="../template/web/storage/${imageService.getPathImgPost(post.id).path}" alt=""></a>
                                <div class="post--info">
                                    <ul class="nav meta">
                                        <li><a href="javascript:;">${post.created_at}</a></li>
                                        <li><a href="javascript:;"><i class="fa fm fa-comments"></i> ${commentService.getCommentPost(post.id).size()}</a></li>
                                        <li><span><i class="fa fm fa-eye"></i> ${post.views}</span></li>
                                    </ul>

                                    <div class="title">
                                        <h3 class="h4"><a href="<c:url value='/${post.slug}'/>" class="btn-link">${post.title}</a>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                 </c:forEach>
            </ul>

        </div>
        <!-- Post Items End -->
    </div>
    <!-- List Widgets End -->
</div>
<!-- Widget End -->