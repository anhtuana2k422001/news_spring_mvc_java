<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Website Tin Tức</title>

<!-- Import CSS  -->
<%@ include file="/common/web/css.jsp"%>

</head>

<body class="boxed"
	data-bg-img="template/web/public/kcnew/frontend/img/bg_website.PNG">

	<!-- Import header  -->
	<%@ include file="/common/web/header.jsp"%>
	<dec:body />
	<!-- Import header  -->
	<%@ include file="/common/web/footer.jsp"%>

	<!-- Import JS  -->
	<%@ include file="/common/web/js.jsp"%>

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
        const htmls = (() => {
            return `
                   <li>
                       <div class="comment--item clearfix">
                           <div class="comment--img float--left">
                               <img style="border-radius: 50%; margin: auto; background-size: cover ;  width: 68px; height: 68px;   background-image: url(<c:url value='${imageService.getConfigPathImgUser(postDetail.user_id)}'/>)"  alt="">
                           </div>
                           <div class="comment--info">
                               <div class="comment--header clearfix">
                               <p class="name"><?php echo $userPost["name"] ?></p> 
                                   <p class="date">vừa xong</p>
                                   <a href="javascript:;" class="reply"><i class="fa fa-flag"></i></a>
                               </div>
                               <div class="comment--content">
                                   <p>${the_comment}</p>
                                   <p class="star">
                                       <span class="text-left"><a href="#" class="reply"><i class="icon-reply"></i></a></span>
                                   </p>
                               </div>
                           </div>
                       </div>
                   </li>
           `;
        });
        ListComment.append(htmls);
        $('.global-message').addClass('alert alert-info');
        $('.global-message').fadeIn();
        // $('.global-message').text(data.message);
        $('.global-message').text("Bình luận bài viết thành công !");


        setTimeout(() => {
            $(".global-message").fadeOut();
        }, 5000);

    });
</script>

</html>