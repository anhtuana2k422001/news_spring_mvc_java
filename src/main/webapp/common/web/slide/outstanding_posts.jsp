<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
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
                 <c:forEach var="postDetail" items="${listNewPost}">    
                    <li>
                        <!-- Post Item Start -->
                        <div class="post--item post--layout-3">
                            <div class="post--img">
                                <a href="<c:url value='/${postDetail.slug}'/>" class="thumb"><img src="<c:url value='/template/web/storage/${imageService.getPathImgPost(postDetail.id).path}'/>" alt=""></a>
                                <div class="post--info">
                                    <ul class="nav meta">
                                        <li><a href="javascript:;">${postDetail.created_at}</a></li>
                                        <li><a href="javascript:;"><i class="fa fm fa-comments"></i> ${commentService.getCommentPost(postDetail.id).size()}</a></li>
                                        <li><span><i class="fa fm fa-eye"></i> ${postDetail.views}</span></li>
                                    </ul>

                                    <div class="title">
                                        <h3 class="h4"><a href="<c:url value='/${postDetail.slug}'/>" class="btn-link">${postDetail.title}</a>
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