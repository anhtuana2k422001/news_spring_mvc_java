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
                                        <li><a class="text capitalize"
                                                href="">Chưa có ... </a>
                                        </li>
                                        <li><a class="text capitalize"
                                                href="">Chưa có ...</a></li>
                                    </ul>
                                </div>

                                <div class="post--info">
                                    <ul class="nav meta">
                                        <li class="text capitalize"><a href="javascript:;">${postDetail.created_at}<a></li>
                                        <li><a href="#">${userService.getUserById(postDetail.user_id).name}</a></li>
                                        <li><span><i class="fa fm fa-eye"></i>${postDetail.views}</span></li>
                                        <li><a href="#comments_all"><i class="fa fm fa-comments-o"></i>${commentService.getCommentPost(postDetail.id).size()}</a></li>
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
                                    <li><a class="text capitalize" href="{{ route('tags.show',  $post->tags[$i]) }}">Bếp
                                            từ Sakura </a></li>
                                    <li><a class="text capitalize"
                                            href="{{ route('tags.show',  $post->tags[$i]) }}">HEATTECH</a></li>
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
                                    <h2 class="h4"><span class="post_count_comment h4">2 </span> bình luận</h2>
                                    <i class="icon fa fa-comments-o"></i>
                                </div>
                                <!-- Post Items Title End -->

                                <ul class="comment--items nav">
                                    <li>
                                        <!-- Comment Item Start -->
                                        <div class="comment--item clearfix">
                                            <div class="comment--img float--left">
                                                <!-- <img style="border-radius: 50%; margin: auto; background-size: cover ;  width: 68px; height: 68px;   background-image: url({{ $comment->user->image ?  asset('storage/' . $comment->user->image->path) : asset('storage/placeholders/user_placeholder.jpg') }})" alt=""> -->
                                            </div>
                                            <div class="comment--info">
                                                <div class="comment--header clearfix">
                                                    <p class="name">Phạm Duy Khánh</p>
                                                    <p class="date">19/06/2022</p>
                                                    <a href="javascript:;" class="reply"><i class="fa fa-flag"></i></a>
                                                </div>
                                                <div class="comment--content">
                                                    <p>Sản phẩm thật tốt rất nên dùng</p>
                                                    <p class="star">
                                                        <span class="text-left"><a href="#" class="reply"><i
                                                                    class="icon-reply"></i>Trả lời</a></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Comment Item End -->
                                    </li>
                                    <li>
                                        <!-- Comment Item Start -->
                                        <div class="comment--item clearfix">
                                            <div class="comment--img float--left">
                                                <!-- <img style="border-radius: 50%; margin: auto; background-size: cover ;  width: 68px; height: 68px;   background-image: url({{ $comment->user->image ?  asset('storage/' . $comment->user->image->path) : asset('storage/placeholders/user_placeholder.jpg') }})" alt=""> -->
                                            </div>
                                            <div class="comment--info">
                                                <div class="comment--header clearfix">
                                                    <p class="name">Trần Gia Huy</p>
                                                    <p class="date">19/06/2022</p>
                                                    <a href="javascript:;" class="reply"><i class="fa fa-flag"></i></a>
                                                </div>
                                                <div class="comment--content">
                                                    <p>Thật tuyệt vời khi được sử dụng sản phẩm này</p>
                                                    <p class="star">
                                                        <span class="text-left"><a href="#" class="reply"><i
                                                                    class="icon-reply"></i>Trả lời</a></span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Comment Item End -->
                                    </li>
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

                                    <p class="h4">
                                        <a href="/login.php">Đăng nhập</a> hoặc
                                        <a href="/login.php#toregister">Đăng ký</a> để bình luận bài viết
                                    </p>

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
                                        <li class="col-sm-12 pbottom--30">
                                            <!-- Post Item Start -->
                                            <div class="post--item post--layout-3">
                                                <div class="post--img">
                                                    <a href="/post.php?slug=bac-thay-quan-he-cua-microsoft"
                                                        class="thumb">
                                                        <img src="../storage/images/ihIHB7UhkbXmuiRvPFzdxEF6hmHI3avWEtZ0WPBj.jpg"
                                                            alt="">
                                                    </a>

                                                    <div class="post--info">

                                                        <div class="title">
                                                            <h3 class="h4">
                                                                <a href="/post.php?slug=bac-thay-quan-he-cua-microsoft"
                                                                    class="btn-link">Bậc thầy quan hệ của Microsoft</a>
                                                            </h3>
                                                            <p style="font-size:16px">
                                                                <span>Từ một biểu tượng của độc quyền thập niên 90, hình
                                                                    ảnh Microsoft ngày càng đẹp hơn trong mắt nhà quản
                                                                    lý.</span>
                                                            </p>
                                                        </div>

                                                        <ul style="padding-top:10px" class="nav meta ">
                                                            <li><a href="javascript:;">Hồ Anh Tuấn</a>
                                                            </li>
                                                            <li><a href="javascript:;">19/02/2023</a></li>
                                                            <li><a href="javascript:;"><i
                                                                        class="fa fm fa-comments"></i>1</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                        <li class="col-sm-12 pbottom--30">
                                            <!-- Post Item Start -->
                                            <div class="post--item post--layout-3">
                                                <div class="post--img">
                                                    <a href="/post.php?slug=co-gi-o-anker-soundcore-r100-tws---tai-nghe-khong-day-cuc-hot-hien-nay"
                                                        class="thumb">
                                                        <img src="../storage/images/yP9kwrMG2M5cHqtvklEIjvk7YekdGNyryhibSyMH.jpg"
                                                            alt="">
                                                    </a>

                                                    <div class="post--info">

                                                        <div class="title">
                                                            <h3 class="h4">
                                                                <a href="/post.php?slug=co-gi-o-anker-soundcore-r100-tws---tai-nghe-khong-day-cuc-hot-hien-nay"
                                                                    class="btn-link">Có gì ở Anker Soundcore R100 TWS -
                                                                    Tai nghe không dây cực hot hiện nay?</a>
                                                            </h3>
                                                            <p style="font-size:16px">
                                                                <span>Tai nghe R100 TWS mang tới trải nghiệm nghe hoàn
                                                                    toàn mới với thiết kế đơn giản, âm thanh chân
                                                                    thực.</span>
                                                            </p>
                                                        </div>

                                                        <ul style="padding-top:10px" class="nav meta ">
                                                            <li><a href="javascript:;">Hồ Anh Tuấn</a>
                                                            </li>
                                                            <li><a href="javascript:;">19/06/2022</a></li>
                                                            <li><a href="javascript:;"><i
                                                                        class="fa fm fa-comments"></i>0</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                        <li class="col-sm-12 pbottom--30">
                                            <!-- Post Item Start -->
                                            <div class="post--item post--layout-3">
                                                <div class="post--img">
                                                    <a href="/post.php?slug=galaxy-tab-s8-series-mo-san-choi-anh-thach-thuc-sac-dem-danh-rieng-cho-gioi-tre-thoa-suc-sang-tao"
                                                        class="thumb">
                                                        <img src="../storage/images/DvdZV7RfZbSIhSkJQUUsUojQkBcD1ke24Mpmbwqf.jpg"
                                                            alt="">
                                                    </a>

                                                    <div class="post--info">

                                                        <div class="title">
                                                            <h3 class="h4">
                                                                <a href="/post.php?slug=galaxy-tab-s8-series-mo-san-choi-anh-thach-thuc-sac-dem-danh-rieng-cho-gioi-tre-thoa-suc-sang-tao"
                                                                    class="btn-link">Galaxy Tab S8 Series mở sân chơi
                                                                    ảnh “Thách Thức Sắc Đêm” dành riêng cho giới trẻ
                                                                    thỏa sức sáng tạo</a>
                                                            </h3>
                                                            <p style="font-size:16px">
                                                                <span>Cuộc thi “Thách Thức Sắc Đêm” thể hiện tinh thần
                                                                    dám thử thách, phá vỡ rào cản, sáng tạo nét riêng,
                                                                    giúp giới trẻ ghi dấu ấn trên hành trình khám phá
                                                                    cuộc sống.</span>
                                                            </p>
                                                        </div>

                                                        <ul style="padding-top:10px" class="nav meta ">
                                                            <li><a href="javascript:;">Hồ Anh Tuấn</a>
                                                            </li>
                                                            <li><a href="javascript:;">19/06/2022</a></li>
                                                            <li><a href="javascript:;"><i
                                                                        class="fa fm fa-comments"></i>1</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                        <li class="col-sm-12 pbottom--30">
                                            <!-- Post Item Start -->
                                            <div class="post--item post--layout-3">
                                                <div class="post--img">
                                                    <a href="/post.php?slug=may-tinh-bang-samsung-galaxy-tab-a6-7inch-tai-viet-nam"
                                                        class="thumb">
                                                        <img src="../storage/images/awmJrx9B1uZ8601khZrAqkLGOpBQwbf66szyddxK.jpg"
                                                            alt="">
                                                    </a>

                                                    <div class="post--info">

                                                        <div class="title">
                                                            <h3 class="h4">
                                                                <a href="/post.php?slug=may-tinh-bang-samsung-galaxy-tab-a6-7inch-tai-viet-nam"
                                                                    class="btn-link">Máy tính bảng Samsung Galaxy Tab
                                                                    A(6) 7inch tại Việt Nam</a>
                                                            </h3>
                                                            <p style="font-size:16px">
                                                                <span>Nâng tầm trải nghiệm giải trí cho giới trẻ và
                                                                    người dùng phổ thông</span>
                                                            </p>
                                                        </div>

                                                        <ul style="padding-top:10px" class="nav meta ">
                                                            <li><a href="javascript:;">Hồ Anh Tuấn</a>
                                                            </li>
                                                            <li><a href="javascript:;">19/06/2022</a></li>
                                                            <li><a href="javascript:;"><i
                                                                        class="fa fm fa-comments"></i>0</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                        <li class="col-sm-12 pbottom--30">
                                            <!-- Post Item Start -->
                                            <div class="post--item post--layout-3">
                                                <div class="post--img">
                                                    <a href="/post.php?slug=binh-nuoc-thong-minh---san-pham-cong-nghe-bao-ve-suc-khoe"
                                                        class="thumb">
                                                        <img src="../storage/images/UxQ3GhwpqPf82gc2zjnPsTFslMqlF0347616XJMT.jpg"
                                                            alt="">
                                                    </a>

                                                    <div class="post--info">

                                                        <div class="title">
                                                            <h3 class="h4">
                                                                <a href="/post.php?slug=binh-nuoc-thong-minh---san-pham-cong-nghe-bao-ve-suc-khoe"
                                                                    class="btn-link">Bình nước thông minh - Sản phẩm
                                                                    công nghệ bảo vệ sức khoẻ</a>
                                                            </h3>
                                                            <p style="font-size:16px">
                                                                <span>Bình nước thông minh - Sản phẩm công nghệ bảo vệ
                                                                    sức khoẻ</span>
                                                            </p>
                                                        </div>

                                                        <ul style="padding-top:10px" class="nav meta ">
                                                            <li><a href="javascript:;">Hồ Anh Tuấn</a>
                                                            </li>
                                                            <li><a href="javascript:;">19/06/2022</a></li>
                                                            <li><a href="javascript:;"><i
                                                                        class="fa fm fa-comments"></i>0</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>

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
</html>