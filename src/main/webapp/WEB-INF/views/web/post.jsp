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
                        <li class="active"><span>Bếp từ Sakura với công nghệ HEATTECH, chinh phục mọi công thức, nấu món
                                nào cũng ngon</span></li>
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
                                                href="{{ route('tags.show',  $post->tags[$i]) }}">Bếp từ Sakura </a>
                                        </li>
                                        <li><a class="text capitalize"
                                                href="{{ route('tags.show',  $post->tags[$i]) }}">HEATTECH</a></li>
                                    </ul>
                                </div>

                                <div class="post--info">
                                    <ul class="nav meta">
                                        <li class="text capitalize"><a href="#">19/02/2023<a></li>
                                        <li><a href="#">Võ Anh Quân</a></li>
                                        <li><span><i class="fa fm fa-eye"></i>1</span></li>
                                        <li><a href="#comments_all"><i class="fa fm fa-comments-o"></i>2</a></li>
                                    </ul>

                                    <div class="title">
                                        <h2 class="post_title h4">Bếp từ Sakura với công nghệ HEATTECH, chinh phục mọi
                                            công thức, nấu món nào cũng ngon</h2>
                                    </div>
                                </div>
                                <div class="post--body post--content">
                                    <p class="description">
                                    <p>Sau thời gian d&agrave;i c&ugrave;ng nhau gi&atilde;n c&aacute;ch, nấu nướng tại
                                        gia dường như dần trở th&agrave;nh một th&uacute; vui, một th&oacute;i quen mới
                                        của mọi người. Tuy nhi&ecirc;n, việc nấu nướng thật nhanh v&agrave; thật ngon
                                        vẫn c&ograve;n gặp nhiều trở ngại. Bếp c&oacute; v&ugrave;ng nấu kh&ocirc;ng đủ
                                        lớn ngăn cản c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh trổ
                                        t&agrave;i với c&aacute;c m&oacute;n cần chảo to như c&aacute; chi&ecirc;n
                                        x&ugrave; v&agrave;ng gi&ograve;n. V&agrave; c&oacute; khi bếp kh&ocirc;ng đủ
                                        c&ocirc;ng suất khiến cho dĩa rau luộc kh&ocirc;ng giữ được m&agrave;u sắc xanh
                                        tươi do đun l&acirc;u tr&ecirc;n bếp.</p>
                                    <p>Để g&oacute;p phần tạo n&ecirc;n những bữa cơm gia đ&igrave;nh vừa ngon miệng vừa
                                        ngon mắt, Sakura - chuy&ecirc;n gia về c&ocirc;ng nghệ gia nhiệt - giới thiệu
                                        hai mẫu bếp từ đ&ocirc;i SE-1270B v&agrave; bếp điện từ SE-3260B với c&ocirc;ng
                                        nghệ HEATTECH đột ph&aacute;. C&ocirc;ng nghệ mới từ Sakura đem đến bốn
                                        t&iacute;nh năng vượt trội: HEAT PRO, HEAT MAX, HEAT AI, HEAT GUARD gi&uacute;p
                                        chinh phục mọi c&ocirc;ng thức nấu nướng v&agrave; tiết kiệm thời gian
                                        v&agrave;o bếp với tinh thần &ldquo;Nấu ăn thật nhanh - M&oacute;n n&agrave;o
                                        cũng ngon!&rdquo;.</p>
                                    <p align="center"><img class="news-image initial loaded"
                                            src="https://icdn.24h.com.vn/upload/2-2022/images/2022-06-14/22-1655188683-734-width660height371.jpg"
                                            alt="Bếp từ Sakura với c&ocirc;ng nghệ HEATTECH, chinh phục mọi c&ocirc;ng thức, nấu m&oacute;n n&agrave;o cũng ngon - 1"
                                            data-was-processed="true"></p>
                                    <p><strong>HEAT PRO - m&acirc;m nhi&ecirc;̣t lớn, gia nhi&ecirc;̣t li&ecirc;n
                                            tục</strong></p>
                                    <p>V&ugrave;ng nấu tr&ecirc;n bếp kh&ocirc;ng đủ lớn khiến ch&uacute;ng ta loay
                                        hoay kh&ocirc;ng biết phải l&agrave;m thế n&agrave;o để chế biến m&oacute;n
                                        c&aacute; chi&ecirc;n x&ugrave; v&agrave;ng gi&ograve;n hay hầm một nồi
                                        b&ograve; kho mềm thịt thơm ngon cho cả gia đ&igrave;nh. Nhưng với t&iacute;nh
                                        năng HEAT PRO đem đến m&acirc;m nhiệt lớn hơn 36%, tạo v&ugrave;ng nấu thật sự
                                        rộng r&atilde;i, tiện dụng cho nhiều k&iacute;ch thước nồi, cho cả nh&agrave;
                                        thỏa sức nấu m&oacute;n ngon, chinh phục mọi c&ocirc;ng thức nấu nướng.</p>
                                    <p>V&agrave; từ gi&acirc;y ph&uacute;t n&agrave;y, các món ăn c&acirc;̀n
                                        n&ocirc;̀i chảo kích thước lớn kh&ocirc;ng những được ch&ecirc;́
                                        bi&ecirc;́n trọn vẹn mà còn chín đ&ecirc;̀u, trọn vị ngon nhờ c&ocirc;ng
                                        ngh&ecirc;̣ gia nhi&ecirc;̣t li&ecirc;n tục, nhi&ecirc;̣t lượng được duy trì
                                        &ocirc;̉n định, đồng đều với m&ocirc;̃i mức nhi&ecirc;̣t.</p>
                                    <p align="center"><img class="news-image initial loaded"
                                            src="https://icdn.24h.com.vn/upload/2-2022/images/2022-06-14/33-1655188683-115-width660height348.jpg"
                                            alt="Bếp từ Sakura với c&ocirc;ng nghệ HEATTECH, chinh phục mọi c&ocirc;ng thức, nấu m&oacute;n n&agrave;o cũng ngon - 2"
                                            data-original="https://icdn.24h.com.vn/upload/2-2022/images/2022-06-14/33-1655188683-115-width660height348.jpg"
                                            data-was-processed="true"></p>
                                    <p><strong>HEAT MAX - gia nhi&ecirc;̣t nhanh</strong></p>
                                    <p>Đ&ocirc;̣t phá thứ hai, HEAT MAX giúp gia nhi&ecirc;̣t nhanh chóng,
                                        c&ocirc;ng su&acirc;́t đ&acirc;̀u ra tăng 30% so với c&ocirc;ng su&acirc;́t
                                        định mức của b&ecirc;́p, gi&uacute;p đẩy nhanh qu&aacute; tr&igrave;nh nấu
                                        nướng từ đ&oacute; ti&ecirc;́t ki&ecirc;̣m được thời gian n&acirc;́u ăn của
                                        người sử dụng. Những món xào hay luộc c&acirc;̀n được ch&ecirc;́ bi&ecirc;́n
                                        ở nhi&ecirc;̣t đ&ocirc;̣ cao trong thời gian ngắn sẽ kh&ocirc;ng còn là
                                        bài toán khó. N&acirc;́u ăn th&acirc;̣t nhanh, món nào cũng ngon v&agrave;
                                        vẹn nguy&ecirc;n giá trị dinh dưỡng.</p>
                                    <p align="center"><img class="news-image loaded"
                                            src="https://icdn.24h.com.vn/upload/2-2022/images/2022-06-14/44-1655188683-540-width660height306.jpg"
                                            alt="Bếp từ Sakura với c&ocirc;ng nghệ HEATTECH, chinh phục mọi c&ocirc;ng thức, nấu m&oacute;n n&agrave;o cũng ngon - 3"
                                            data-original="https://icdn.24h.com.vn/upload/2-2022/images/2022-06-14/44-1655188683-540-width660height306.jpg"
                                            data-was-processed="true"></p>
                                    <p><strong>HEAT AI - 5 mức ki&ecirc;̉m soát duy trì nhi&ecirc;̣t &ocirc;̉n định
                                            và hẹn giờ th&ocirc;ng minh</strong></p>
                                    <p>Kh&ocirc;ng chỉ n&acirc;́u ăn nhanh d&ecirc;̃ dàng mà ch&uacute;ng ta
                                        c&ograve;n c&oacute; thể tối ưu thời gian v&agrave;o bếp nhờ đ&ocirc;̣t phá
                                        thứ ba HEAT AI. Với 5 mức ki&ecirc;̉m soát duy trì nhi&ecirc;̣t &ocirc;̉n
                                        định cùng ch&ecirc;́ đ&ocirc;̣ hẹn giờ và tắt b&ecirc;́p th&ocirc;ng minh,
                                        người sử dụng có th&ecirc;̉ đặt thời lượng và mức nhi&ecirc;̣t đ&ocirc;̣
                                        phù hợp cho c&aacute;c v&ugrave;ng nấu ri&ecirc;ng biệt. Chế độ nấu tự động sẽ
                                        gi&uacute;p bạn c&oacute; th&ecirc;m nhiều thời gian để sắp xếp việc bếp
                                        n&uacute;c, lau dọn b&agrave;n bếp hay chuẩn bị nguy&ecirc;n liệu cho c&aacute;c
                                        m&oacute;n ăn tiếp theo. Vi&ecirc;̣c duy trì nhi&ecirc;̣t đ&ocirc;̣ ở mức đã
                                        cài đặt trong thời gian định sẵn sẽ được HEAT AI ki&ecirc;̉m soát
                                        th&ocirc;ng minh và giúp món ăn chín đ&ecirc;̀u. B&acirc;̣t mí là HEAT AI
                                        còn gi&uacute;p người sử dụng n&acirc;́u cơm chỉ với m&ocirc;̣t nút
                                        b&acirc;́m.</p>
                                    <p align="center"><img class="news-image loaded"
                                            src="https://icdn.24h.com.vn/upload/2-2022/images/2022-06-14/55-1655188683-406-width660height348.jpg"
                                            alt="Bếp từ Sakura với c&ocirc;ng nghệ HEATTECH, chinh phục mọi c&ocirc;ng thức, nấu m&oacute;n n&agrave;o cũng ngon - 4"
                                            data-original="https://icdn.24h.com.vn/upload/2-2022/images/2022-06-14/55-1655188683-406-width660height348.jpg"
                                            data-was-processed="true"></p>
                                    <p><strong>HEAT GUARD - tăng cường 9 tính năng an toàn</strong></p>
                                    <p>Bếp an to&agrave;n l&agrave; bếp cho bạn y&ecirc;n t&acirc;m đầy hứng khởi để chế
                                        biến nhiều m&oacute;n ngon. Hi&ecirc;̉u đi&ecirc;̀u đó, Sakura đã tăng cường
                                        với 9 tính năng an toàn cùng đ&ocirc;̣t phá HEAT GUARD cho trải nghiệm nấu
                                        ăn lu&ocirc;n y&ecirc;n t&acirc;m kh&aacute;c biệt.</p>
                                    <p>B&ecirc;n cạnh các ti&ecirc;u chu&acirc;̉n an toàn quen thu&ocirc;̣c:
                                        h&ecirc;̣ th&ocirc;́ng bảo v&ecirc;̣ khi quá nhi&ecirc;̣t, tự đ&ocirc;̣ng
                                        tắt khi kh&ocirc;ng có n&ocirc;̀i, cảnh báo dư nhi&ecirc;̣t vùng
                                        n&acirc;́u, khoá an toàn, nh&acirc;̣n di&ecirc;̣n n&ocirc;̀i n&acirc;́u thích
                                        hợp, IGBT v&agrave; chứng nh&acirc;̣n EMC, HEAT GUARD giới thi&ecirc;̣u
                                        th&ecirc;m 2 tính năng: ch&ocirc;́ng tràn &amp; tạm dừng/ ti&ecirc;́p tục.
                                        Bạn kh&ocirc;ng chỉ nấu nướng dễ d&agrave;ng hiệu quả, m&agrave; bếp c&ograve;n
                                        mang lại khả năng vận h&agrave;nh ổn định gi&uacute;p bạn y&ecirc;n t&acirc;m
                                        tuyệt đối khi sử dụng v&agrave; nhất l&agrave; đối với gia đ&igrave;nh c&oacute;
                                        trẻ nhỏ.</p>
                                    <p>Với t&iacute;nh năng ch&ocirc;́ng tràn, b&ecirc;́p sẽ tự đ&ocirc;̣ng tắt khi
                                        có thức ăn tràn vào khu vực bảng đi&ecirc;̀u khi&ecirc;̉n, hạn ch&ecirc;́
                                        được những n&ocirc;̃i lo khi n&acirc;́u b&ecirc;́p. B&ecirc;n cạnh đó, bạn
                                        c&ograve;n c&oacute; thể tạm dừng nấu ăn để l&agrave;m việc kh&aacute;c, rồi
                                        tiếp tục quay lại nấu với mức nhiệt đang d&ugrave;ng trước đ&oacute; với
                                        t&iacute;nh năng tạm dừng/ ti&ecirc;́p tục.</p>
                                    <p align="center"><img class="news-image loaded"
                                            src="https://icdn.24h.com.vn/upload/2-2022/images/2022-06-14/66-1655188683-738-width660height413.jpg"
                                            alt="Bếp từ Sakura với c&ocirc;ng nghệ HEATTECH, chinh phục mọi c&ocirc;ng thức, nấu m&oacute;n n&agrave;o cũng ngon - 5"
                                            data-original="https://icdn.24h.com.vn/upload/2-2022/images/2022-06-14/66-1655188683-738-width660height413.jpg"
                                            data-was-processed="true"></p>
                                    <p>Với c&ocirc;ng nghệ HEATTECH đột ph&aacute; 4 t&iacute;nh năng vượt trội: HEAT
                                        PRO, HEAT MAX, HEAT AI, HEAT GUARD, mọi c&ocirc;ng thức m&oacute;n ngon đều
                                        c&oacute; thể dễ d&agrave;ng bị chinh phục. Những bữa cơm gia đ&igrave;nh từ nay
                                        sẽ th&ecirc;m phần đa dạng với nhiều m&oacute;n ngon hấp dẫn v&agrave;
                                        gi&agrave;u dinh dưỡng, chinh phục mọi con đường dẫn đến tr&aacute;i tim của
                                        người bạn y&ecirc;u thương từ thị gi&aacute;c cho đến vị gi&aacute;c. Đồng thời,
                                        c&ocirc;ng nghệ HEATTECH c&ograve;n gi&uacute;p r&uacute;t ngắn thời gian chuẩn
                                        bị bữa ăn, g&oacute;p th&ecirc;m quỹ thời gian vun đắp hạnh ph&uacute;c
                                        y&ecirc;u thương trong mỗi gia đ&igrave;nh.</p>
                                    </p>
                                </div>
                            </div>
                            <!-- Post Item End -->

                            <!-- Advertisement Start -->
                            <div class="ad--space pd--20-0-40">
                                <p class="author-info">Người viết: Võ Anh Quân</p>
                                <p class="post-time">Thời gian: 19/02/2023</p>
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
                                                <a class="outstandPosts" href="#"
                                                    data-ajax-action="load_widget_hot_news">Tin nóng</a>
                                            </li>
                                            <li>
                                                <a class="outstandPosts" href=""
                                                    data-ajax-action="load_widget_trendy_news">Xu hướng</a>
                                            </li>
                                            <li>
                                                <a class="outstandPosts" href=""
                                                    data-ajax-action="load_widget_most_watched">Xem nhiều nhất</a>
                                            </li>
                                        </ul>
                                    </div>

                                    <!-- Post Items Start -->
                                    <div class="post--items post--items-3" data-ajax-content="outer">
                                        <ul class="nav listPost" data-ajax-content="inner">
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-3">
                                                    <div class="post--img">
                                                        <a href="/post.php?slug=bac-thay-quan-he-cua-microsoft"
                                                            class="thumb"><img
                                                                src="../storage/images/ihIHB7UhkbXmuiRvPFzdxEF6hmHI3avWEtZ0WPBj.jpg"
                                                                alt=""></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="javascript:;">19/02/2023</a></li>
                                                                <li><a href="javascript:;"><i
                                                                            class="fa fm fa-comments"></i>1</a></li>
                                                                <li><span><i class="fa fm fa-eye"></i>3</span></li>
                                                            </ul>

                                                            <div class="title">
                                                                <h3 class="h4"><a
                                                                        href="/post.php?slug=bac-thay-quan-he-cua-microsoft"
                                                                        class="btn-link">Bậc thầy quan hệ của
                                                                        Microsoft</a>
                                                                </h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-3">
                                                    <div class="post--img">
                                                        <a href="/post.php?slug=bep-tu-sakura-voi-cong-nghe-heattech-chinh-phuc-moi-cong-thuc-nau-mon-nao-cung-ngon"
                                                            class="thumb"><img
                                                                src="../storage/images/lnqFGxndAIxaWyeTILls4P1knlSMbXFx1DQkWPJn.jpg"
                                                                alt=""></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="javascript:;">19/02/2023</a></li>
                                                                <li><a href="javascript:;"><i
                                                                            class="fa fm fa-comments"></i>2</a></li>
                                                                <li><span><i class="fa fm fa-eye"></i>1</span></li>
                                                            </ul>

                                                            <div class="title">
                                                                <h3 class="h4"><a
                                                                        href="/post.php?slug=bep-tu-sakura-voi-cong-nghe-heattech-chinh-phuc-moi-cong-thuc-nau-mon-nao-cung-ngon"
                                                                        class="btn-link">Bếp từ Sakura với công nghệ
                                                                        HEATTECH, chinh phục mọi công thức, nấu món nào
                                                                        cũng ngon</a>
                                                                </h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-3">
                                                    <div class="post--img">
                                                        <a href="/post.php?slug=lien-tuc-boc-hoi-tai-khoan-nha-dau-tu-chung-khoan-nen-lam-gi-luc-nay"
                                                            class="thumb"><img
                                                                src="../storage/images/8yXdkrA7omqqNJEqQzxTD3aVKAs08Xj2ZaFmEszw.jpg"
                                                                alt=""></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="javascript:;">19/01/2023</a></li>
                                                                <li><a href="javascript:;"><i
                                                                            class="fa fm fa-comments"></i>0</a></li>
                                                                <li><span><i class="fa fm fa-eye"></i>0</span></li>
                                                            </ul>

                                                            <div class="title">
                                                                <h3 class="h4"><a
                                                                        href="/post.php?slug=lien-tuc-boc-hoi-tai-khoan-nha-dau-tu-chung-khoan-nen-lam-gi-luc-nay"
                                                                        class="btn-link">Liên tục bốc hơi tài khoản: Nhà
                                                                        đầu tư chứng khoán nên làm gì lúc này?</a>
                                                                </h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-3">
                                                    <div class="post--img">
                                                        <a href="/post.php?slug=nga-chi-trich-eu-trao-tu-cach-ung-vien-cho-ukraine"
                                                            class="thumb"><img
                                                                src="../storage/images/j0xVrz1hu4da1PFr2C0Dx7GYSjEGtBKSytQ5bE5z.jpg"
                                                                alt=""></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="javascript:;">25/06/2022</a></li>
                                                                <li><a href="javascript:;"><i
                                                                            class="fa fm fa-comments"></i>0</a></li>
                                                                <li><span><i class="fa fm fa-eye"></i>0</span></li>
                                                            </ul>

                                                            <div class="title">
                                                                <h3 class="h4"><a
                                                                        href="/post.php?slug=nga-chi-trich-eu-trao-tu-cach-ung-vien-cho-ukraine"
                                                                        class="btn-link">Nga chỉ trích EU trao tư cách
                                                                        ứng viên cho Ukraine</a>
                                                                </h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                            <li>
                                                <!-- Post Item Start -->
                                                <div class="post--item post--layout-3">
                                                    <div class="post--img">
                                                        <a href="/post.php?slug=viet-nam---campuchia-moi-quan-he-mai-mai-xanh-tuoi-doi-doi-ben-vung"
                                                            class="thumb"><img
                                                                src="../storage/images/uCcSZ9ACliTxhIMgYldOkzwBO537K49Yt1IG3vFk.jpg"
                                                                alt=""></a>
                                                        <div class="post--info">
                                                            <ul class="nav meta">
                                                                <li><a href="javascript:;">25/06/2022</a></li>
                                                                <li><a href="javascript:;"><i
                                                                            class="fa fm fa-comments"></i>0</a></li>
                                                                <li><span><i class="fa fm fa-eye"></i>0</span></li>
                                                            </ul>

                                                            <div class="title">
                                                                <h3 class="h4"><a
                                                                        href="/post.php?slug=viet-nam---campuchia-moi-quan-he-mai-mai-xanh-tuoi-doi-doi-ben-vung"
                                                                        class="btn-link">Việt Nam - Campuchia: Mối quan
                                                                        hệ mãi mãi xanh tươi, đời đời bền vững</a>
                                                                </h3>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Post Item End -->
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- Post Items End -->
                                </div>
                                <!-- List Widgets End -->
                            </div>
                            <!-- Widget End -->

                            <!-- Widget Start -->
                            <x-blog.side-vote />
                            <!-- Widget End -->

                            <!-- Widget Start -->
                            <x-blog.side-ad_banner />
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