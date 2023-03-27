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
                        <li class="active"><span>${categoryName}</span></li>
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
                        <div class="sticky-content-inner">
                            <div class="post--item post--single post--title-largest pd--30-0">
                                <c:if test="${listPostCate.size() == 0}">
                                    <p class="lead">Không có bài viết nào!</p>
                                 </c:if>
                           

                                <c:forEach items="${listPostCate}" var="post">
                                <div class="block-21 d-flex animate-box post">
                                    <a href="" class="blog-img" style="background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwYnWwwcztKk1YJjFGLQ1HFyArgFX6dRgDuw&usqp=CAU);"></a>
                                    <div class="text">
                                        <h3 class="heading"><a href="<?php echo $post["slug"]?>"><? echo $post["title"]?></a></h3>
                                        <p class="excerpt">${post.title}</p>
                                        </p>
                                        <div class="meta">
                                            <div><a class="date" href="javascript:;"><span class="icon-calendar"></span>${post.created_at}</a></div>
                                            <div><a href="javascript:;"><span class="icon-user2"></span><? echo Post::getNameAuthor($post["user_id"])?></a></div>
                                            <div class="comments-count"><a href="<? echo $post["slug"]?>#comments_all"><span class="icon-chat"></span><? echo COUNT(Comment::getCommentPost($post["id"])) ?></a></div>
                                            <div><a href="javascript:;"><span><i class="fa fm fa-eye"></i></span>${post.views}</a></div>
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
                            <!--<?php include_once("./main_layout/slide_post/outstanding_posts.php"); ?>--> 
                            <!-- Widget End -->

                            <!-- Widget Start -->
                            <!--<?php include_once("./main_layout/slide_post/vote.php"); ?>--> 
                            <!-- Widget End -->

                            <!-- Widget Start -->
                            <!--<?php include_once("./main_layout/slide_post/banner.php"); ?>--> 
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