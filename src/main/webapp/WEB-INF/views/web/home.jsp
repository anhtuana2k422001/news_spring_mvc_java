<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
                                        <div class="col-xs-6 col-xss-12">
                                            <!-- Post Item Start -->
                                            <div class="post--item post--layout-1 post--title-large">
                                                <div class="post--img">
                                                    <a href="{{ route('posts.show', $posts_new[$i][0]) }}"
                                                       class="thumb"><img
                                                            src="template/web/storage/images/ihIHB7UhkbXmuiRvPFzdxEF6hmHI3avWEtZ0WPBj.jpg"
                                                            alt=""></a>
                                                    <a href="{{ route('categories.show', $posts_new[$i][0]->category) }}" class="cat">Công nghệ</a>

                                                    <a href="javascript:;" class="icon"><i class="fa fa-flash"></i></a>
                                                    <div class="post--info">
                                                        <ul class="nav meta">
                                                            <li><a href="javascript:;">Số lượng user: ${listUsers.size()}</a></li>
                                                            <li><a href="javascript:;">19/02/2023</a></li>
                                                        </ul>
                                                        <div class="title">
                                                            <h2 class="h4"><a href="{{ route('posts.show', $posts_new[$i][0]) }}" class="btn-link">Bậc thầy quan hệ của Microsoft</a>
                                                            </h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </div>
                                        <div class="col-xs-6 col-xss-12">
                                            <!-- Post Item Start -->
                                            <div class="post--item post--layout-1 post--title-large">
                                                <div class="post--img">
                                                    <a href="{{ route('posts.show', $posts_new[$i][0]) }}"
                                                       class="thumb"><img
                                                            src="template/web/storage/images/lnqFGxndAIxaWyeTILls4P1knlSMbXFx1DQkWPJn.jpg"
                                                            alt=""></a>
                                                    <a href="{{ route('categories.show', $posts_new[$i][0]->category) }}" class="cat">Công nghệ</a>

                                                    <a href="javascript:;" class="icon"><i class="fa fa-flash"></i></a>
                                                    <div class="post--info">
                                                        <ul class="nav meta">
                                                            <li><a href="javascript:;">Võ Anh Quân</a></li>
                                                            <li><a href="javascript:;">19/02/2023</a></li>
                                                        </ul>
                                                        <div class="title">
                                                            <h2 class="h4"><a href="{{ route('posts.show', $posts_new[$i][0]) }}" class="btn-link">Bếp từ Sakura với công nghệ HEATTECH, chinh phục mọi công thức, nấu món nào cũng ngon</a>
                                                            </h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </div>


                                        <div class="col-sm-12 hidden-sm hidden-xs">
                                            <!-- Post Item Start -->
                                            <div class="post--item post--layout-1 post--title-larger">
                                                <div class="post--img">
                                                    <a href="{{ route('posts.show', $posts_new[2][0]) }}"
                                                       class="thumb"><img
                                                            src="template/web/storage/images/8yXdkrA7omqqNJEqQzxTD3aVKAs08Xj2ZaFmEszw.jpg"
                                                            style="height:200px" alt=""></a>

                                                    <a href="{{ route('categories.show', $posts_new[2][0]->category) }}" class="cat">Kinh Doanh</a>

                                                    <a href="javascript:;" class="icon"><i class="fa fa-fire"></i></a>

                                                    <div class="post--info">
                                                        <ul class="nav meta">
                                                            <li><a href="javascript:;">Hồ Anh Tuấn</a></li>
                                                            <li><a href="javascript:;">19/01/2023</a></li>
                                                        </ul>

                                                        <div class="title">
                                                            <h2 class="h4"><a
                                                                    href="{{ route('posts.show', $posts_new[2][0]) }}"
                                                                    class="btn-link">Liên tục bốc hơi tài khoản: Nhà đầu tư chứng khoán nên làm gì lúc này?</a></h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </div>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <!-- Post Item Start -->
                                    <div class="post--item post--layout-1 post--title-larger">
                                        <div class="post--img">
                                            <a href="{{ route('posts.show', $posts_new[3][0]) }}"
                                               class="thumb"><img src="template/web/storage/images/j0xVrz1hu4da1PFr2C0Dx7GYSjEGtBKSytQ5bE5z.jpg" alt=""></a>

                                            <a href="{{ route('categories.show', $posts_new[3][0]->category ) }}" class="cat">Thế giới</a>

                                            <a href="javascript:;" class="icon"><i class="fa fa-flash"></i></a>

                                            <div class="post--info">
                                                <ul class="nav meta">
                                                    <li><a href="javascript:;">Nguyễn Hải Dương</a></li>
                                                    <li><a href="javascript:;">25/06/2022</a></li>
                                                </ul>

                                                <div class="title">
                                                    <h2 class="h4"><a
                                                            href="{{ route('posts.show', $posts_new[3][0]) }}"
                                                            class="btn-link">Nga chỉ trích EU trao tư cách ứng viên cho Ukraine</a>
                                                    </h2>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Post Item End -->
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
                                            <h2 class="h4">	Thế giới</h2>
                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row gutter--15" data-ajax-content="inner">


                                                <li class="col-xs-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home0[0]) }}"
                                                               class="thumb"><img src="template/web/storage/images/w9je6lri2JhyJbehSnsJInbpZXdZ2x3FPhv0Ya6A.jpg"
                                                                               alt=""></a>

                                                            <a href="javascript:;" class="icon"><i class="fa fa-flash"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;">19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home0[0]) }}"
                                                                            class="btn-link">Litva hạn chế chuyển hàng tới vùng lãnh thổ Nga</a>
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


                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->

                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home0[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/cNKgT2bNjMyVig3cdWXzeNJELQiNULeAW87lq1rw.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;">19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home0[$i]) }}"
                                                                            class="btn-link">Pháo phản lực của Đài Loan phát nổ khi đang tập trận</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>


                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->

                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home0[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/td4nIw1akuzOzXLqoXdTbO9XbStCYsujLCRxSooX.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;">19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home0[$i]) }}"
                                                                            class="btn-link">Máy bay hạ cánh khẩn vì cơ trưởng bị ốm, vào toilet không thấy ra</a>
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


                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->

                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home0[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/hAwO9oOhgtyZfceMf3cbLbmuTkylmfOQnBQNv5tk.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;">19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home0[$i]) }}"
                                                                            class="btn-link">Cam kết của ASEAN - Ấn Độ trong bối cảnh đầy rẫy bất đồng, tranh chấp</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>


                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->

                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home0[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/oz6iJq2DFChAEABM33jOHW7eXnp5S5z8JISV0FAj.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;">19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home0[$i]) }}"
                                                                            class="btn-link">Chủ tịch Tập Cận Bình: Trung Quốc thắng "áp đảo" cuộc chiến tham nhũng</a>
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
                                    <!-- World News End -->

                                    <!-- Technology Start -->
                                    <div class="col-md-6 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">	Xã hội</h2>

                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-3" data-ajax-content="outer">
                                            <ul class="nav" data-ajax-content="inner">

                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home1[0]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/K435OvnEgYaHEEymjATV2wiyeUmpnXi5dUQay8Tx.jpg"
                                                                    alt=""></a>

                                                            <a href="javascript:;" class="icon"><i class="fa fa-flash"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home1[0]) }}"
                                                                            class="btn-link">Tuần lễ "điểm nhấn" tại Festival Huế 2022 - Festival bốn mùa có gì đặc sắc?</a>
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
                                                            <a href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/ADnwzbokJ21UFudJTRZRstmplQMJDbUpDXdRvLQe.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                                            class="btn-link">Tân Cục phó Cục Cảnh sát điều tra tội phạm về ma túy là ai?</a>
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
                                                            <a href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/eM8t0zteS7bODFbgG3cPaUUWdPGCPbsd2QJrbHBM.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                                            class="btn-link">TP.HCM: Dân khổ sở vì công trình thoát nước đường Nguyễn Văn Công ì ạch</a>
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
                                                            <a href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/cMVHljf5uoyVS00BpL5a0MMOUvIKPWCbmeNMGyMq.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                                            class="btn-link">Hai bé trai bị đuối nước ở sông biên giới</a>
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
                                                            <a href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/ojbPhRkC28UIXqvBlk0rMMN1oVW6eQZWoJ6qHgDZ.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                                            class="btn-link">Chuyện nghề của những phóng viên điều tra</a>
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
                                                            <a href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/DxzwQNkVnfqaahqrY0w59gQkiSzMHSw20IAAsDgk.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home1[$i]) }}"
                                                                            class="btn-link">Những “kình ngư” giữ biển vùng Đông Bắc</a>
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
                                    <!-- Technology End -->

                                    <!-- Finance Start -->
                                    <div class="col-md-12 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">	Kinh tế</h2>

                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row" data-ajax-content="inner">
                                                <li class="col-md-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home2[0]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/vYamkhWLwV8sPBbkRfxoci7hxNELLyiAlXhP6NLh.jpg"
                                                                    alt=""></a>
                                                            <a href="{{ route('categories.show', $post_category_home2[0]->category) }}" class="cat">Kinh tế</a>
                                                            <a href="javascript:;" class="icon"><i class="fa fa-star-o"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home2[0]) }}"
                                                                            class="btn-link">EVN kiến nghị gỡ khó cho điện mặt trời mái nhà tự dùng</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->

                                                    <hr class="mar_bottom15 ">

                                                    <ul class="list_news_show_home">

                                                        <li class="boder_link_show_home">
                                                            <h3 class="h3"><a href="{{ route('posts.show', $post_category_home2[$i]) }}">Hơn 100 công ty châu Âu vẫn ở lại Nga</a></h3>
                                                        </li>




                                                        <li class="boder_link_show_home">
                                                            <h3 class="h3"><a href="{{ route('posts.show', $post_category_home2[$i]) }}">Chủ tịch Vietravel: Đổi mới toàn diện là con đường duy nhất sau dịch</a></h3>
                                                        </li>






                                                        <li>
                                                            <h3 class="h3"><a href="{{ route('posts.show', $post_category_home2[$i]) }}">EVN lo thiếu nước phát điện khi xả lũ ở Hoà Bình, Sơn La</a></h3>
                                                        </li>

                                                    </ul>

                                                </li>

                                                <li class="col-md-6">
                                                    <ul class="nav row">
                                                        <li class="col-xs-12 hidden-md hidden-lg">
                                                            <!-- Divider Start -->
                                                            <hr class="divider">
                                                            <!-- Divider End -->
                                                        </li>

                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="{{ route('posts.show', $post_category_home2[$i]) }}"
                                                                       class="thumb"><img 
                                                                            src="template/web/storage/images/0mFCJTvtFlYueaQYx0Zq8MYwMVzJbsiyeacLIYEu.jpg"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">

                                                                            <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                            <li><a href="javascript:;"> 19/02/2021</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="{{ route('posts.show', $post_category_home2[$i]) }}"
                                                                                    class="btn-link">Bitcoin mất mốc 20.000 USD</a></h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>


                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="{{ route('posts.show', $post_category_home2[$i]) }}"
                                                                       class="thumb"><img 
                                                                            src="template/web/storage/images/kxR6jk2v1irOkiOe8I6jadavJiEk5B6jPdEbyFcN.jpg"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">

                                                                            <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="{{ route('posts.show', $post_category_home2[$i]) }}"
                                                                                    class="btn-link">Các tỷ phú tiền số mất 80% tài sản</a></h3>
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

                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="{{ route('posts.show', $post_category_home2[$i]) }}"
                                                                       class="thumb"><img 
                                                                            src="template/web/storage/images/XkFwuu8I2VwtY8bFhpftHZ8QCIvd9tTVlnTSlKb9.jpg"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">

                                                                            <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="{{ route('posts.show', $post_category_home2[$i]) }}"
                                                                                    class="btn-link">Nửa năm toàn cầu chống chọi bão giá xăng dầu</a></h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>


                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="{{ route('posts.show', $post_category_home2[$i]) }}"
                                                                       class="thumb"><img 
                                                                            src="template/web/storage/images/XyzQga9r4Brw3u5Y0wvo8fqcyslGf9bP6XaXGbow.jpg"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">

                                                                            <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="{{ route('posts.show', $post_category_home2[$i]) }}"
                                                                                    class="btn-link">Hơn 100 công ty châu Âu vẫn ở lại Nga</a></h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>

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
                                            <h2 class="h4">	Sức Khỏe</h2>
                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row gutter--15" data-ajax-content="inner">
                                                <li class="col-xs-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home3[0]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/RSTjVOUA4rAqrBhb963fGMfnF4NuIMR0rKRVeRIC.jpg"
                                                                    alt=""></a>
                                                            <a href="{{ route('categories.show', $post_category_home3[0]->category) }}"
                                                               class="cat"> Sức Khỏe</a>
                                                            <a href="{{ route('categories.show', $post_category_home3[0]->category) }}" class="icon"><i class="fa fa-fire"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a href="{{ route('posts.show', $post_category_home3[0]) }}"
                                                                                      class="btn-link">Phương pháp bó bột ra đời mang lại niềm hi vọng lớn đối với những bệnh nhân điều trị gãy xương</a>
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
                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home3[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/nfd8cUebqpsQZQPYdcv2SRjIlmqz3IuiIO8ZqC74.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home3[$i]) }}"
                                                                            class="btn-link">7 phát minh y tế giúp nền y học có bước tiến vượt bậc</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home3[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/d99UPKIIDDrwZ6x1VSFZJ2nZ91NfPg4zbpaxwEMb.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home3[$i]) }}"
                                                                            class="btn-link">Những thực phẩm là "máy hút bụi" cho phổi, càng ăn càng lọc sạch phổi mỗi ngày</a>
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
                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home3[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/ZWiSDF8WzSViOQ2QuNf7CFZ5hCdl8phNFwuPdFhk.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home3[$i]) }}"
                                                                            class="btn-link">4 thức uống giải nhiệt mùa hè, giúp làn da tươi sáng</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home3[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/pEBtBGG5YRHWVhwcaGG04UaPzeSndcxgDVtAamnk.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home3[$i]) }}"
                                                                            class="btn-link">Hà Nội yêu cầu tiêm mũi 4 vắc-xin COVID-19 cho người dân</a>
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
                                    <!-- Politics End -->

                                    <!-- Sports Start -->
                                    <div class="col-md-6 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">	Giáo dục</h2>
                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-3" data-ajax-content="outer">
                                            <ul class="nav" data-ajax-content="inner">
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home4[0]) }}"
                                                               class="thumb"><img src="template/web/storage/images/ANQKKwbfUaUTZ9rjSkm5m0RE75bYMeCLbH40arNf.webp"
                                                                               alt=""></a>
                                                            <a href="{{ route('categories.show', $post_category_home4[0]->category) }}"
                                                               class="cat">Giáo dục</a>
                                                            <a href="{{ route('categories.show', $post_category_home4[0]->category) }}" class="icon"><i class="fa fa-eye"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home4[0]) }}"
                                                                            class="btn-link">Tra cứu điểm thi lớp 10 tỉnh Hải Phòng năm 2022 chính xác nhất</a>
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
                                                            <a href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/jS8jvjKOXExDPzmb7JFAy9n5HsoWq86cZrYDAOTe.webp"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                                            class="btn-link">Đáp án đề thi môn Toán vào lớp 10 Hà Nội năm 2022 cập nhật nhanh nhất</a></h3>
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
                                                            <a href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/OybvwWRS1UdWqp5ESsDj7Ng1z9dMhFKTP5h6OFKh.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                                            class="btn-link">Thi lớp 10 Hà Nội: Đề Toán "dễ thở", thí sinh phấn khởi sau môn thi cuối</a></h3>
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
                                                            <a href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/HiZEvFeRq4bmUXJRMqYJMvMx7qZuiJ5cn398puqY.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                                            class="btn-link">Khoảnh khắc ấm áp của nữ sinh bên cha trong ngày chụp ảnh kỷ yếu</a></h3>
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
                                                            <a href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/dhHrcTWAzvwBh5jtT3iGN5nzHgIpwCXZyJNygmRt.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                                            class="btn-link">Bộ ảnh kỷ yếu "hiếm có khó đạo nhái" của học sinh Nghệ An</a></h3>
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
                                                            <a href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/BcIbmerHIdenHLbiCrlEcWwg02rePjjWGGepP4Xb.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home4[$i]) }}"
                                                                            class="btn-link">Thí sinh chống nạng đi thi</a></h3>
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
                                    <!-- Sports End -->
                                </div>
                            </div>
                        </div>
                        <!-- Main Content End -->

                        <!-- Main Sidebar Start -->
                        <div class="main--sidebar col-md-4 col-sm-5 ptop--30 pbottom--30" data-sticky-content="true">
                            <div class="sticky-content-inner">
                                <!-- Widget Start -->
                                <div class="widget">
                                    <div class="widget--title">
                                        <h2 class="h4">Tin tức nổi bật</h2>
                                        <i class="icon fa fa-newspaper-o"></i>
                                    </div>

                                    <!-- List Widgets Start -->
                                    <div class="list--widget list--widget-1">
                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-3" data-ajax-content="outer">
                                            <ul class="nav" data-ajax-content="inner">
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-3">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $outstanding_post) }}"
                                                               class="thumb"><img width = "120"
                                                                               src="template/web/storage/images/vYamkhWLwV8sPBbkRfxoci7hxNELLyiAlXhP6NLh.jpg"
                                                                               alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Võ Anh Quân</a></li>
                                                                    <li><a  href="javascript:;"><i class="fa fm fa-comments"></i>19/06/2022</a></li>
                                                                    <li><span><i class="fa fm fa-eye"></i>2</span></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3  class="h4">
                                                                        <a href="{{ route('posts.show', $outstanding_post) }}" class="btn-link">EVN kiến nghị gỡ khó cho điện mặt trời mái nhà tự dùng</a>
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
                                                            <a href="{{ route('posts.show', $outstanding_post) }}"
                                                               class="thumb"><img width = "120"
                                                                               src="template/web/storage/images/IC7H9uXqbD0ON5Sk3yyGRgnCTq3C5tkms1tVMVVr.jpg"
                                                                               alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Hồ Anh Tuấn</a></li>
                                                                    <li><a  href="javascript:;"><i class="fa fm fa-comments"></i>01/03/2022</a></li>
                                                                    <li><span><i class="fa fm fa-eye"></i>0</span></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3  class="h4">
                                                                        <a href="{{ route('posts.show', $outstanding_post) }}" class="btn-link">Lào Cai: Quyết định xử phạt vi phạm hành chính là tài liệu mật?</a>
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
                                                            <a href="{{ route('posts.show', $outstanding_post) }}"
                                                               class="thumb"><img width = "120"
                                                                               src="template/web/storage/images/DIhmWONL3TbsF8MaAGkaoipR04qnnoESF2L3b2ZH.jpg"
                                                                               alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Nguyễn Hải Dương</a></li>
                                                                    <li><a  href="javascript:;"><i class="fa fm fa-comments"></i>19/06/2022</a></li>
                                                                    <li><span><i class="fa fm fa-eye"></i>0</span></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3  class="h4">
                                                                        <a href="{{ route('posts.show', $outstanding_post) }}" class="btn-link">Phim Em và Trịnh 'cháy vé'</a>
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
                                                            <a href="{{ route('posts.show', $outstanding_post) }}"
                                                               class="thumb"><img width = "120"
                                                                               src="template/web/storage/images/95JhFrywa4ckT9B2rY1ptUm4hFUIG5zgxnPZq5v2.jpg"
                                                                               alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Hồ Anh Tuấn</a></li>
                                                                    <li><a  href="javascript:;"><i class="fa fm fa-comments"></i>19/06/2022</a></li>
                                                                    <li><span><i class="fa fm fa-eye"></i>0</span></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3  class="h4">
                                                                        <a href="{{ route('posts.show', $outstanding_post) }}" class="btn-link">Siêu tàu bệnh viện của Hải quân Mỹ cập cảng Vũng Rô</a>
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
                                                            <a href="{{ route('posts.show', $outstanding_post) }}"
                                                               class="thumb"><img width = "120"
                                                                               src="template/web/storage/images/w9je6lri2JhyJbehSnsJInbpZXdZ2x3FPhv0Ya6A.jpg"
                                                                               alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Nguyễn Hải Dương</a></li>
                                                                    <li><a  href="javascript:;"><i class="fa fm fa-comments"></i>19/06/2022</a></li>
                                                                    <li><span><i class="fa fm fa-eye"></i>1</span></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3  class="h4">
                                                                        <a href="{{ route('posts.show', $outstanding_post) }}" class="btn-link">Litva hạn chế chuyển hàng tới vùng lãnh thổ Nga</a>
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
                                                            <a href="{{ route('posts.show', $outstanding_post) }}"
                                                               class="thumb"><img width = "120"
                                                                               src="template/web/storage/images/K435OvnEgYaHEEymjATV2wiyeUmpnXi5dUQay8Tx.jpg"
                                                                               alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Võ Anh Quân</a></li>
                                                                    <li><a  href="javascript:;"><i class="fa fm fa-comments"></i>19/06/2022</a></li>
                                                                    <li><span><i class="fa fm fa-eye"></i>0</span></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3  class="h4">
                                                                        <a href="{{ route('posts.show', $outstanding_post) }}" class="btn-link">Tuần lễ "điểm nhấn" tại Festival Huế 2022 - Festival bốn mùa có gì đặc sắc?</a>
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
                                                            <a href="{{ route('posts.show', $outstanding_post) }}"
                                                               class="thumb"><img width = "120"
                                                                               src="template/web/storage/images/0mFCJTvtFlYueaQYx0Zq8MYwMVzJbsiyeacLIYEu.jpg"
                                                                               alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;">Hồ Anh Tuấn</a></li>
                                                                    <li><a  href="javascript:;"><i class="fa fm fa-comments"></i>19/02/2021</a></li>
                                                                    <li><span><i class="fa fm fa-eye"></i>1</span></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3  class="h4">
                                                                        <a href="{{ route('posts.show', $outstanding_post) }}" class="btn-link">Bitcoin mất mốc 20.000 USD</a>
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
                            <h2 class="h4">	Thể thao</h2>
                        </div>
                        <!-- Post Items Title End -->

                        <!-- Post Items Start -->
                        <div class="post--items post--items-4" data-ajax-content="outer">
                            <ul class="nav row" data-ajax-content="inner">
                                <li class="col-md-8">
                                    <!-- Post Item Start -->
                                    <div class="post--item post--layout-1 post--type-video post--title-large">
                                        <div class="post--img">
                                            <a href="{{ route('posts.show', $post_category_home5[0]) }}" class="thumb"><img
                                                    src="template/web/storage/images/ukrau6VC2emM2Vxgv63aEZV8jDoiwBETzOG0i54s.jpg" alt=""></a>
                                            <a href="{{ route('categories.show', $post_category_home5[0]->category) }}" class="cat">Thể thao</a>
                                            <a href="{{ route('categories.show', $post_category_home5[0]->category) }}" class="icon"><i class="fa fa-eye"></i></a>

                                            <div class="post--info">
                                                <ul class="nav meta">
                                                    <li><a href="javascript:;">Võ Anh Quân</a></li>
                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                </ul>

                                                <div class="title">
                                                    <h2 class="h4"><a
                                                            href="{{ route('posts.show', $post_category_home5[0]) }}"
                                                            class="btn-link">Varane sẵn sàng cho khởi đầu mới cùng Ten Hag</a></h2>
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

                                        <li>
                                            <!-- Post Item Start -->
                                            <div class="post--item post--type-audio post--layout-3">
                                                <div class="post--img">
                                                    <a href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                       class="thumb"><img
                                                            src="template/web/storage/images/lKx8of3bY89GZzexjglpq3Z9mclbywymJzdeQjJw.jpg"
                                                            alt=""></a>

                                                    <div class="post--info">
                                                        <ul class="nav meta">
                                                            <li><a href="javascript:;">Võ Anh Quân</a></li>
                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                        </ul>

                                                        <div class="title">
                                                            <h3 class="h4"><a
                                                                    href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                                    class="btn-link">Tiền vệ Arsenal bị điều tra vì hành vi cá cược</a></h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                        <li>
                                            <!-- Post Item Start -->
                                            <div class="post--item post--type-audio post--layout-3">
                                                <div class="post--img">
                                                    <a href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                       class="thumb"><img
                                                            src="template/web/storage/images/zaCRnIVOSschnfBuPa1uDjHgwL0go7E4v582a4qd.jpg"
                                                            alt=""></a>

                                                    <div class="post--info">
                                                        <ul class="nav meta">
                                                            <li><a href="javascript:;">Nguyễn Hải Dương</a></li>
                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                        </ul>

                                                        <div class="title">
                                                            <h3 class="h4"><a
                                                                    href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                                    class="btn-link">Kết quả Pháp vs Croatia: Benzema không cứu nổi Les Bleus</a></h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                        <li>
                                            <!-- Post Item Start -->
                                            <div class="post--item post--type-audio post--layout-3">
                                                <div class="post--img">
                                                    <a href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                       class="thumb"><img
                                                            src="template/web/storage/images/NWj0AgawLesblPRQUV1DX3EJX3uWtZLV7Tz8ia3N.jpg"
                                                            alt=""></a>

                                                    <div class="post--info">
                                                        <ul class="nav meta">
                                                            <li><a href="javascript:;">Hồ Anh Tuấn</a></li>
                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                        </ul>

                                                        <div class="title">
                                                            <h3 class="h4"><a
                                                                    href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                                    class="btn-link">Australia trở thành đội thứ 31 giành vé tham dự VCK World Cup 2022</a></h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                        <li>
                                            <!-- Post Item Start -->
                                            <div class="post--item post--type-audio post--layout-3">
                                                <div class="post--img">
                                                    <a href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                       class="thumb"><img
                                                            src="template/web/storage/images/uCE13wU6EYJGRBlIlLYT3PgdWIRmgArPbUMkVILi.jpg"
                                                            alt=""></a>

                                                    <div class="post--info">
                                                        <ul class="nav meta">
                                                            <li><a href="javascript:;">Võ Anh Quân</a></li>
                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                        </ul>

                                                        <div class="title">
                                                            <h3 class="h4"><a
                                                                    href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                                    class="btn-link">Play-off liên lục địa World Cup 2022 đá mấy lượt?</a></h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>
                                        <li>
                                            <!-- Post Item Start -->
                                            <div class="post--item post--type-audio post--layout-3">
                                                <div class="post--img">
                                                    <a href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                       class="thumb"><img
                                                            src="template/web/storage/images/LHkszXcQLMKEsIi3KuTH9dO1xUNcQeoNpyLd6Ker.jpg"
                                                            alt=""></a>

                                                    <div class="post--info">
                                                        <ul class="nav meta">
                                                            <li><a href="javascript:;">Hồ Anh Tuấn</a></li>
                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                        </ul>

                                                        <div class="title">
                                                            <h3 class="h4"><a
                                                                    href="{{ route('posts.show', $post_category_home5[$i]) }}"
                                                                    class="btn-link">Hằng Nga, Thanh Minh rút khỏi giải MMA Lion Championship 2022</a></h3>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Post Item End -->
                                        </li>

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
                                            <h2 class="h4">	Giải trí</h2>


                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-3" data-ajax-content="outer">
                                            <ul class="nav" data-ajax-content="inner">
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home6[0]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/DIhmWONL3TbsF8MaAGkaoipR04qnnoESF2L3b2ZH.jpg" alt=""></a>
                                                            <a href="{{ route('categories.show', $post_category_home6[0]->category) }}"
                                                               class="cat">	Giải trí</a>
                                                            <a href="{{ route('categories.show', $post_category_home6[0]->category) }}" class="icon"><i class="fa fa-star-o"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home6[0]) }}"
                                                                            class="btn-link">Phim Em và Trịnh 'cháy vé'</a></h3>
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
                                                            <a href="{{ route('posts.show', $post_category_home6[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/IvuS7adl0Z2PI6OJjI8C9grGNtXGlKZ5uuouEH8a.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home6[$i]) }}"
                                                                            class="btn-link">Hà Hồ - Kim Lý tái hiện MV 'Cả một trời thương nhớ'</a></h3>
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
                                                            <a href="{{ route('posts.show', $post_category_home6[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/kxFzXXMQ1a2xJpP9VRyBwfIM41fPdksFoKD7fnU3.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home6[$i]) }}"
                                                                            class="btn-link">Quan họ Bắc Ninh thay lời tạm biệt SEA Games 31</a></h3>
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
                                                            <a href="{{ route('posts.show', $post_category_home6[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/k7ncLZmDsw9wteNba1EaSc0r2RKaHBhsz7DC00ab.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home6[$i]) }}"
                                                                            class="btn-link">Vinhomes tổ chức cuộc thi vũ đạo trực tuyến</a></h3>
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
                                                            <a href="{{ route('posts.show', $post_category_home6[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/cuebPppShH3QPRzoQwHjO3MiI7HIbAkFZBtpT4fa.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home6[$i]) }}"
                                                                            class="btn-link">Chùa Nghệ sĩ đổi tên thành Nghĩa trang nghệ sĩ</a></h3>
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
                                    <!-- Health and fitness End -->

                                    <!-- Lifestyle Start -->
                                    <div class="col-md-6 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">Pháp luật</h2>


                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row gutter--15" data-ajax-content="inner">

                                                <li class="col-xs-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home7[0]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/UxO913lBt67DduUoD7Wx4MMrCTcTGDmmsC90cBW9.jpg"
                                                                    alt=""></a>
                                                            <a href="{{ route('categories.show', $post_category_home7[0]->category) }}"
                                                               class="cat">Pháp luật</a>
                                                            <a href="{{ route('categories.show', $post_category_home7[0]->category) }}" class="icon"><i class="fa fa-heart-o"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home7[0]) }}"
                                                                            class="btn-link">Nhóm tội phạm 'căm ghét người giàu' gây rúng động Hàn Quốc</a>
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
                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home7[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/HBRMTjLCTUNxODleyOckFyiwIAfNCHbEuEwqu5YK.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home7[$i]) }}"
                                                                            class="btn-link">Thảm án dưới tay nhóm giang hồ tuổi đôi mươi</a></h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home7[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/e75VxQvZ3tAqgaLIu9RQJrGVPli8B4qxHopKEjID.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home7[$i]) }}"
                                                                            class="btn-link">Vụ mất tích bí ẩn của MC xinh đẹp trước giờ lên sóng</a></h3>
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
                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home7[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/lX8bkSSGPXKZd50uOQfOArEa7PwZAT7eN9ohMh8j.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home7[$i]) }}"
                                                                            class="btn-link">Kỳ án 'phóng viên sát thủ'</a></h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                <li class="col-xs-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home7[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/ZGLgUUOoaWM95k3yW4pbQHXokQhKfqWjVvejSoaB.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home7[$i]) }}"
                                                                            class="btn-link">'Cát tặc' ở Sài Gòn bị vây bắt</a></h3>
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
                                    <!-- Lifestyle End -->

                                    <div class="col-md-12 ptop--30 pbottom--30">
                                        <!-- Post Items Title Start -->
                                        <div class="post--items-title" data-ajax="tab">
                                            <h2 class="h4">Công nghệ</h2>

                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-2" data-ajax-content="outer">
                                            <ul class="nav row" data-ajax-content="inner">
                                                <li class="col-md-6">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-2">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home8[0]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/UxO913lBt67DduUoD7Wx4MMrCTcTGDmmsC90cBW9.jpg" alt="">
                                                            </a>
                                                            <a href="{{ route('categories.show', $post_category_home8[0]->category) }}" class="cat">Công nghệ</a>
                                                            <a href="{{ route('categories.show', $post_category_home8[0]->category) }}" class="icon"><i class="fa fa-star-o"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h3 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home8[0]) }}"
                                                                            class="btn-link">Nhóm tội phạm 'căm ghét người giàu' gây rúng động Hàn Quốc</a>
                                                                    </h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->

                                                    <hr class="mar_bottom15 ">

                                                    <ul class="list_news_show_home">
                                                        <li class="boder_link_show_home">
                                                            <h3 class="h3"><a
                                                                    href="{{ route('posts.show', $post_category_home8[$i]) }}">Máy tính bảng Samsung Galaxy Tab A(6) 7inch tại Việt Nam</a></h3>
                                                        </li>

                                                        <li class="boder_link_show_home">
                                                            <h3 class="h3"><a
                                                                    href="{{ route('posts.show', $post_category_home8[$i]) }}">Bình nước thông minh - Sản phẩm công nghệ bảo vệ sức khoẻ</a></h3>
                                                        </li>


                                                        <li>
                                                            <h3 class="h3"><a
                                                                    href="{{ route('posts.show', $post_category_home8[$i]) }}">Lenovo tung loạt laptop Yoga mới chạy vi xử lý Intel thế hệ 12</a></h3>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="col-md-6">
                                                    <ul class="nav row">
                                                        <li class="col-xs-12 hidden-md hidden-lg">
                                                            <!-- Divider Start -->
                                                            <hr class="divider">
                                                            <!-- Divider End -->
                                                        </li>
                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="{{ route('posts.show', $post_category_home8[$i]) }}"
                                                                       class="thumb"><img
                                                                            src="template/web/storage/images/yP9kwrMG2M5cHqtvklEIjvk7YekdGNyryhibSyMH.jpg"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">
                                                                            <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="{{ route('posts.show', $post_category_home8[$i]) }}"
                                                                                    class="btn-link">Có gì ở Anker Soundcore R100 TWS - Tai nghe không dây cực hot hiện nay?</a></h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>

                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="{{ route('posts.show', $post_category_home8[$i]) }}"
                                                                       class="thumb"><img
                                                                            src="template/web/storage/images/DvdZV7RfZbSIhSkJQUUsUojQkBcD1ke24Mpmbwqf.jpg"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">
                                                                            <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="{{ route('posts.show', $post_category_home8[$i]) }}"
                                                                                    class="btn-link">Galaxy Tab S8 Series mở sân chơi ảnh “Thách Thức Sắc Đêm” dành riêng cho giới trẻ thỏa sức sáng tạo</a></h3>
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
                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="{{ route('posts.show', $post_category_home8[$i]) }}"
                                                                       class="thumb"><img
                                                                            src="template/web/storage/images/awmJrx9B1uZ8601khZrAqkLGOpBQwbf66szyddxK.jpg"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">
                                                                            <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="{{ route('posts.show', $post_category_home8[$i]) }}"
                                                                                    class="btn-link">Máy tính bảng Samsung Galaxy Tab A(6) 7inch tại Việt Nam</a></h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>

                                                        <li class="col-xs-6">
                                                            <!-- Post Item Start -->
                                                            <div class="post--item post--layout-2">
                                                                <div class="post--img">
                                                                    <a href="{{ route('posts.show', $post_category_home8[$i]) }}"
                                                                       class="thumb"><img
                                                                            src="template/web/storage/images/UxQ3GhwpqPf82gc2zjnPsTFslMqlF0347616XJMT.jpg"
                                                                            alt=""></a>

                                                                    <div class="post--info">
                                                                        <ul class="nav meta">
                                                                            <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                            <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                        </ul>

                                                                        <div class="title">
                                                                            <h3 class="h4"><a
                                                                                    href="{{ route('posts.show', $post_category_home8[$i]) }}"
                                                                                    class="btn-link">Bình nước thông minh - Sản phẩm công nghệ bảo vệ sức khoẻ</a></h3>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Post Item End -->
                                                        </li>


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
                                            <h2 class="h4">Khoa học</h2>

                                        </div>
                                        <!-- Post Items Title End -->

                                        <!-- Post Items Start -->
                                        <div class="post--items post--items-1" data-ajax-content="outer">
                                            <ul class="nav row gutter--15" data-ajax-content="inner">
                                                <li class="col-md-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1 post--title-large">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home9[0]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/jIU5kfQHRQDqfO03XLFIfehLMqqlNFoM9ezOPuGY.jpg"
                                                                    alt=""></a>
                                                            <a href="{{ route('categories.show', $post_category_home9[0]->category) }}"
                                                               class="cat">Khoa học</a>
                                                            <a href="{{ route('categories.show', $post_category_home9[0]->category) }}" class="icon"><i class="fa fa-eye"></i></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title text-xxs-ellipsis">
                                                                    <h2 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home9[0]) }}"
                                                                            class="btn-link">Phát hiện hố đen khổng lồ nuốt chửng các tiểu hành tinh sau vài giây</a></h2>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>


                                                <li class="col-md-4 col-xs-6 col-xxs-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home9[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/3lpEw7jwpvpxAru8Q9YWtxxptLA2gYWQaOruEpjF.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Hồ Anh Tuấn</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h2 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home9[$i]) }}"
                                                                            class="btn-link">NASA công bố cuộc tập trận 18 quốc gia chống "sát thủ ngoài hành tinh"</a></h2>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>

                                                <li class="col-md-4 col-xs-6 col-xxs-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home9[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/hsJArjpyMNOcqNzyfcNF0mBJc3nWBM0yQqRZeWFO.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Nguyễn Hải Dương</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h2 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home9[$i]) }}"
                                                                            class="btn-link">Phát hiện tín hiệu vô tuyến bí ẩn từ hành tinh giống Trái Đất</a></h2>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>

                                                <li class="col-md-4 col-xs-6 col-xxs-12">
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-1">
                                                        <div class="post--img">
                                                            <a href="{{ route('posts.show', $post_category_home9[$i]) }}"
                                                               class="thumb"><img
                                                                    src="template/web/storage/images/dW0Ywt718urnIRHgXl7y5r6FoenHIWPxBNVailKa.jpg"
                                                                    alt=""></a>

                                                            <div class="post--info">
                                                                <ul class="nav meta">
                                                                    <li><a href="javascript:;"> Võ Anh Quân</a></li>
                                                                    <li><a href="javascript:;"> 19/06/2022</a></li>
                                                                </ul>

                                                                <div class="title">
                                                                    <h2 class="h4"><a
                                                                            href="{{ route('posts.show', $post_category_home9[$i]) }}"
                                                                            class="btn-link">'Bè bong bóng' có thể giúp Trái Đất hạ nhiệt</a></h2>
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
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-3">
                                                        <div class="post--img">
                                                            <span class="thumb">
                                                                <img style="margin: auto; background-size: cover ;  width: 60px; height: 60px;   background-image: url(template/web/storage/images/aSzqRAOQOoZI8KU5fVdnracF6kctLMGsLFFmqW5o.jpg)"  alt="">
                                                            </span>

                                                            <div class="post--info">
                                                                <div class="title">
                                                                    <h3 class="h4"><a href="{{ route('posts.show', $top_commnent->post ) }}">Hay quá ad ơi</a> </h3>
                                                                </div>

                                                                <ul class="nav meta">
                                                                    <li><span> Nguyễn Hải Dương																</span></li>
                                                                    <li><span>22/02/2023</span></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-3">
                                                        <div class="post--img">
                                                            <span class="thumb">
                                                                <img style="margin: auto; background-size: cover ;  width: 60px; height: 60px;   background-image: url(template/web/storage/images/zwgkagCp3hSEGCFVFFtYQPyOCnasz0L7dDUM8uQV.jpg)"  alt="">
                                                            </span>

                                                            <div class="post--info">
                                                                <div class="title">
                                                                    <h3 class="h4"><a href="{{ route('posts.show', $top_commnent->post ) }}">Mong đại dịch sớm qua mau</a> </h3>
                                                                </div>

                                                                <ul class="nav meta">
                                                                    <li><span> Hồ Thị Lam																</span></li>
                                                                    <li><span>22/02/2023</span></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-3">
                                                        <div class="post--img">
                                                            <span class="thumb">
                                                                <img style="margin: auto; background-size: cover ;  width: 60px; height: 60px;   background-image: url(template/web/storage/images/bxraHew1fv64V4CqN9R10auogSiv6le3vHuEjUDT.jpg)"  alt="">
                                                            </span>

                                                            <div class="post--info">
                                                                <div class="title">
                                                                    <h3 class="h4"><a href="{{ route('posts.show', $top_commnent->post ) }}">Thật hối hận vì không xem bài viết sớm hơn. Thanks ad vì bài viết quá hữu ích</a> </h3>
                                                                </div>

                                                                <ul class="nav meta">
                                                                    <li><span> Võ Lê Ngân Hà																</span></li>
                                                                    <li><span>19/02/2023</span></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-3">
                                                        <div class="post--img">
                                                            <span class="thumb">
                                                                <img style="margin: auto; background-size: cover ;  width: 60px; height: 60px;   background-image: url(template/web/storage/images/Ezghous9cn2wILye4p5MfZxWigJoYZ3Z3oIeE6QF.jpg)"  alt="">
                                                            </span>

                                                            <div class="post--info">
                                                                <div class="title">
                                                                    <h3 class="h4"><a href="{{ route('posts.show', $top_commnent->post ) }}">Bài viết hay quá ad ơi</a> </h3>
                                                                </div>

                                                                <ul class="nav meta">
                                                                    <li><span> Lê Thị Tâm																</span></li>
                                                                    <li><span>23/06/2022</span></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Post Item End -->
                                                </li>
                                                <li>
                                                    <!-- Post Item Start -->
                                                    <div class="post--item post--layout-3">
                                                        <div class="post--img">
                                                            <span class="thumb">
                                                                <img style="margin: auto; background-size: cover ;  width: 60px; height: 60px;   background-image: url(template/web/storage/images/P1qPvZUxODUvssHkSkDKkcfvoli5wufvXYFVCH9h.jpg)"  alt="">
                                                            </span>

                                                            <div class="post--info">
                                                                <div class="title">
                                                                    <h3 class="h4"><a href="{{ route('posts.show', $top_commnent->post ) }}">Bài viết thật hữu ích. Thank ad</a> </h3>
                                                                </div>

                                                                <ul class="nav meta">
                                                                    <li><span> Võ Anh Quân																</span></li>
                                                                    <li><span>19/06/2022</span></li>
                                                                </ul>
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

                            </div>
                        </div> <!-- Main Sidebar End -->
                    </div>

                </div>
            </div>
            <!-- Main Content Section End -->

        </div> 

    </body>
</html>