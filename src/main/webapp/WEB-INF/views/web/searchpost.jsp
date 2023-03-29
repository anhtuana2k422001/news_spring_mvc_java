<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bài viết</title>
    </head>
    <body>
        <div class="wrapper">

        <!-- Main Breadcrumb Start -->
        <div class="container">
            <div class="main--breadcrumb">
                <div class="container">
                    <ul class="breadcrumb">
                        <li><a href="javascript:;" class="btn-link"><i class="fa fm fa-home"></i>Trang Chủ</a></li>
                        <li class="active"><span>Kết quả tìm kiếm</span></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Main Breadcrumb End -->

        <!-- Main Content Section Start -->
        <div class="main-content--section pbottom--30">
            <div class="container">
                <div class="row">
                    <div class="main--content col-md-8" data-sticky-content="true">
                        <div class="post--items-title" data-ajax="tab">
                            <h2 class="h4">${listPostSreach.size()} kết quả tìm kiếm: <span style="color: black; background-color: #f7f201;" class="h4">${keySearch}</span> trong 0.003 giây </h2>
                                       
                        </div>
                        <div class="sticky-content-inner">
                            <div class="post--item post--single post--title-largest pd--30-0">
                                <c:if test="${listPostSreach.size() == 0}">
                                    <p class="lead">Không tìm thấy bài viết nào</p>
                                 </c:if>
                           
                                <c:forEach items="${listPostSreach}" var="post">
                                <div class="block-21 d-flex animate-box post">
                                    <a href="<c:url value='/${post.slug}'/>" class="blog-img" style="background-image: url(<c:url value='/template/web/storage/${imageService.getPathImgPost(post.id).path}'/>);"></a>
                                    <div class="text">
                                        <h3 class="heading"><a href="<c:url value='/${post.slug}'/>">${post.title}</a></h3>
                                        <p class="excerpt">${post.excerpt}</p>
                                        </p>
                                        <div class="meta">
                                            <div><a class="date" href="javascript:;"><span class="icon-calendar"></span> ${post.created_at}</a></div>
                                            <div><a href="javascript:;"><span class="icon-user2"></span> ${userService.getUserById(post.user_id).name}</a></div>
                                            <div class="comments-count"><a href="#comments_all"><span class="icon-chat"></span> Bình luận: ${commentService.getCommentPost(post.id).size()}</a></div>
                                            <div><a href="javascript:;"><span><i class="fa fm fa-eye"></i></span> Lượt xem: ${post.views}</a></div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                                
                                <!-- phân trang -->
                                <!-- {{$posts->links() }} -->
                            </div>
                        </div>
                    </div>
                    <!-- SIDEBAR: start -->
                    <!-- Main Sidebar Start -->
                    <div class="main--sidebar col-md-4 ptop--30 pbottom--30" data-sticky-content="true">
                        <div class="sticky-content-inner">

                            <!-- Widget Start -->
                           	<%@ include file="/common/web/slide/outstanding_posts.jsp"%>
                            <!-- Widget End -->

                            <!-- Widget Start -->
                           	<%@ include file="/common/web/slide/banner.jsp"%>
                            <!-- Widget End -->

                            <!-- Widget Start -->
                          	<%@ include file="/common/web/slide/vote.jsp"%>
                            <!-- Widget End -->
                        </div>
                    </div>
                    <!-- Main Sidebar End -->
                </div>
            </div>
        </div>

        <!-- Main Content Section End -->
    </div>   
    </body>
</html>