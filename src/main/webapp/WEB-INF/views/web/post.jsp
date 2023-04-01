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
        <div class="global-message info d-none"></div>
        <!-- Main Breadcrumb Start -->
        <div class="container">
            <div class="main--breadcrumb">
                <div class="container">
                    <ul class="breadcrumb">
                        <li><a href="/" class="btn-link"><i class="fa fm fa-home"></i>Trang Chủ</a></li>
                        <li><a href="javascript:;" class="btn-link">Công nghệ</a></li>
                        <li class="active"><span>${postDetail.title}</span></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Main Breadcrumb End -->

        <!-- Main Content Section Start -->
        <div class="main-content--section pbottom--30">
            <div class="container">
                <div class="row">
                    <!-- Main Content Start -->
                    <div class="main--content col-md-8" data-sticky-content="true">
                        <div class="sticky-content-inner">
                            <!-- Post Item Start -->
                            <div class="post--item post--single post--title-largest pd--30-0">
                                <div class="post--cats">
                                    <ul class="nav">
                                        <li><span><i class="fa fa-folder-open-o"></i></span></li>
                                         <c:forEach var="tag" items="${tagService.listTagbyPostID(postDetail.id)}">
                                            <li><a class="text capitalize"
                                                    href="">${tag.name}</a>
                                            </li>
                                         </c:forEach>
                                    </ul>
                                </div>

                                <div class="post--info">
                                    <ul class="nav meta">
                                        <li class="text capitalize"><a href="javascript:;">${postDetail.created_at}<a></li>
                                        <li><a href="#">${userService.getUserById(postDetail.user_id).name}</a></li>
                                        <li><span><i class="fa fm fa-eye"></i>${postDetail.views}</span></li>
                                        <li><a href="<c:url value='/${postDetail.slug}'/>#comments_all"><i class="fa fm fa-comments-o"></i>${commentService.getCommentPost(postDetail.id).size()}</a></li>
                                    </ul>

                                    <div class="title">
                                        <h2 class="post_title h4">${postDetail.title}</h2>
                                    </div>
                                </div>
                                <div class="post--body post--content">
                                    <p class="description">
                                        ${postDetail.body}
                                    </p>
                                </div>
                            </div>
                            <!-- Post Item End -->

                            <!-- Advertisement Start -->
                            <div class="ad--space pd--20-0-40">
                                <p class="author-info">Người viết: ${userService.getUserById(postDetail.user_id).name}</p>
                                <p class="post-time">Thời gian: ${postDetail.created_at}</p>
                            </div>
                            <!-- Advertisement End -->

                            <!-- Post Tags Start -->
                            <div class="post--tags">
                                <ul class="nav">
                                    <li><span><i class="fa fa-tags"></i> Từ khóa </span></li>
                                       <c:forEach var="tag" items="${tagService.listTagbyPostID(postDetail.id)}">
                                            <li><a  class="text capitalize"
                                                    href="javascript:;">${tag.name}</a>
                                            </li>
                                         </c:forEach>
                                </ul>
                            </div>
                            <!-- Post Tags End -->

                            <!-- Post Social Start -->
                            <div class="post--social pbottom--30">
                                <span class="title"><i class="fa fa-share-alt"></i> Chia sẻ </span>

                                <!-- Social Widget Start -->
                                <div class="social--widget style--4">
                                    <ul class="nav">
                                        <li><a href="javascript:"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="javascript:"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="javascript:"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="javascript:"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="javascript:"><i class="fa fa-rss"></i></a></li>
                                        <li><a href="javascript:"><i class="fa fa-youtube-play"></i></a></li>
                                    </ul>
                                </div>
                                <!-- Social Widget End -->
                            </div>
                            <!-- Post Social End -->


                            <!-- Comment List Start -->
                            <div id="comments_all" class="comment--list pd--30-0">
                                <!-- Post Items Title Start -->
                                <div class="post--items-title">
                                    <h2 class="h4"><span class="post_count_comment h4">${commentService.getCommentPost(postDetail.id).size()} </span> bình luận</h2>
                                    <i class="icon fa fa-comments-o"></i>
                                </div>
                                <!-- Post Items Title End -->

                                <ul class="comment--items nav">
                                   <c:forEach var="comment" items="${commentService.getCommentPost(postDetail.id)}">
                                    <li>
                                        <!-- Comment Item Start -->
                                        <div class="comment--item clearfix">
                                            <div class="comment--img float--left">
                                                 <img style="border-radius: 50%; margin: auto; background-size: cover ;  width: 68px; height: 68px;   background-image: url(<c:url value='${imageService.getConfigPathImgUser(comment.user_id)}'/>)" alt=""> 
                                            </div>
                                            <div class="comment--info">
                                                <div class="comment--header clearfix">
                                                    <p class="name">${userService.getUserById(comment.user_id).name}</p>
                                                    <p class="date">${comment.created_at}</p>
                                                    <a href="javascript:;" class="reply"><i class="fa fa-flag"></i></a>
                                                </div>
                                                <div class="comment--content">
                                                    <p>${comment.the_comment}</p>
                                                    <p class="star">
                                                        <span class="text-left"><a href="#" class="reply"><i
                                                                    class="icon-reply"></i>Trả lời</a></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Comment Item End -->
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <!-- Comment List End -->

                            <!-- Comment Form Start -->
                            <div class="comment--form pd--30-0">
                                <!-- Post Items Title Start -->
                                <div class="post--items-title">
                                    <h2 class="h4">Viết bình luận</h2>
                                    <i class="icon fa fa-pencil-square-o"></i>
                                </div>
                                <!-- Post Items Title End -->
                              
                                <div class="comment-respond">
                                    <x-blog.message :status="'success'" />
                                    <c:if test="${not empty UserLogin and not empty UserLogin.getName()}">
                                        <form onsubmit="return false;" autocomplete="off" method="POST">
                                            <div class="row form-group">
                                                <div class="col-md-12">
                                                    <textarea name="the_comment" id="message" cols="30" rows="5" class="form-control" placeholder="Đánh giá bài viết này"></textarea>
                                                </div>
                                            </div>
                                            <small style="color: red; font-size: 14px;" class="comment_error"> </small>
                                            <div class="form-group">
                                                <input id="input_comment" type="submit" value="Bình luận" class="send-comment-btn btn btn-primary">
                                            </div>
                                        </form>
                                    </c:if>

                                    <c:if test="${empty UserLogin}">
                                        <p class="h4">
                                            <a href="<c:url value='/dang-nhap'/>">Đăng nhập</a> hoặc
                                            <a href="<c:url value='/dang-ky'/>">Đăng ký</a> để bình luận bài viết
                                        </p>
                                    </c:if>
                                </div>
                            </div>
                            <!-- Comment Form End -->

                            <!-- Post Related Start -->
                            <div class="post--related ptop--30">
                                <!-- Post Items Title Start -->
                                <div class="post--items-title" data-ajax="tab">
                                    <h2 class="h4">Có thể bạn cũng thích</h2>
                                </div>
                                <!-- Post Items Title End -->

                                <!-- Post Items Start -->
                                <div class="post--items post--items-2" data-ajax-content="outer">
                                    <ul class="nav row" data-ajax-content="inner">
                                        <c:forEach var="post" items="${listPostTheSame}" varStatus="loop">
                                            <c:if test="${loop.index  <= 4}"> 
                                                <li class="col-sm-12 pbottom--30">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-3">
                                                        <div class="post--img">
                                                            <a href="<c:url value='/${post.slug}'/>"
                                                               class="thumb">
                                                                <img src="<c:url value='${imageService.getConfigPathImgPost(post.id)}'/>"
                                                                     alt="">
                                                            </a>

                                                            <div class="post--info">

                                                                <div class="title">
                                                                    <h3 class="h4">
                                                                        <a href="<c:url value='/${post.slug}'/>"
                                                                           class="btn-link">${post.title}</a>
                                                                    </h3>
                                                                    <p style="font-size:16px">
                                                                        <span>${post.excerpt}</span>
                                                                    </p>
                                                                </div>

                                                                <ul style="padding-top:10px" class="nav meta ">
                                                                    <li><a href="javascript:;">${userService.getUserById(post.user_id).name}</a>
                                                                    </li>
                                                                    <li><a href="javascript:;">${post.created_at}</a></li>
                                                                    <li><a href="<c:url value='/${post.slug}'/>#comments_all"><i
                                                                                class="fa fm fa-comments"></i>${commentService.getCommentPost(post.id).size()}</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>

                                    <!-- Preloader Start -->
                                    <div class="preloader bg--color-0--b" data-preloader="1">
                                        <div class="preloader--inner"></div>
                                    </div>
                                    <!-- Preloader End -->
                                </div>
                                <!-- Post Items End -->
                            </div>
                            <!-- Post Related End -->

                        </div>
                    </div>
                    <!-- Main Content End -->

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
             <script>
   
	$(document).on('click', '.send-comment-btn', (e) => {
		e.preventDefault();
		let $this = e.target;
		let the_comment =  $($this).parents("form").find("textarea[name='the_comment']").val();
		let post_title =  $('.post_title').text() ; 


		let count_comment =  $('.post_count_comment').text() ; 
        let ListComment = $('.comment--items');

                  
                    // Xử lý thêm comment vào bài viết tạm thời
                    count_comment = Number(count_comment) + 1;
                    $('.comment_error').text('');

                    $('.post_count_comment').text(count_comment);
                    const htmls  = (() =>{
                    return `
                                <li>
                                    <div class="comment--item clearfix">
                                        <div class="comment--img float--left">
                                            <img style="border-radius: 50%; margin: auto; background-size: cover ;  width: 68px; height: 68px;   background-image: url(<?php echo Handle::getUserPathImg($userPost["id"]) ?>)"  alt="">
                                        </div>
                                        <div class="comment--info">
                                            <div class="comment--header clearfix">
                                            <p class="name"><?php echo $userPost["name"] ?></p> 
                                                <p class="date">vừa xong</p>
                                                <a href="javascript:;" class="reply"><i class="fa fa-flag"></i></a>
                                            </div>
                                            <div class="comment--content">
                                                <p>Bài tiết này hay quá</p>
                                                <p class="star">
                                                    <span class="text-left"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                        `
                        });
                    ListComment.append(htmls);


					$('.global-message').addClass('alert alert-info');
					$('.global-message').fadeIn();
					// $('.global-message').text(data.message);
					$('.global-message').text("Bình luận bài viết thành công !");

					// clearData( $($this).parents("form"), [
					// 	'the_comment',
					// ]);

					setTimeout(() => {
						$(".global-message").fadeOut();
					}, 5000);

				// }else{
                //     $('.comment_error').text(data.errors);
				// }
			// }
		// })
	});
</script>

</html>