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

            <div class="colorlib-contact">
            <div class="container">
                <div class="row row-pb-md">
                    <div class="col-md-12 animate-box">
                        <h2>Thông Tin Liên Hệ</h2>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="contact-info-wrap-flex">
                                    <div class="con-info">
                                        <p><span><i class="icon-location-2"></i></span> E1, Khu Công Nghệ Cao, <br>Hiệp Phú, TP. Thủ Đức</p>
                                    </div>
                                    <div class="con-info">
                                        <p><span><i class="icon-phone3"></i></span> <a href="tel://1234567920">(+84) 392 766 630</a></p>
                                    </div>
                                    <div class="con-info">
                                        <p><span><i class="icon-paperplane"></i></span> <a href="mailto:hutechnews@gmail.com">anhtuana2k422001@gmail.com</a></p>
                                    </div>
                                    <div class="con-info">
                                        <p><span><i class="icon-globe"></i></span> <a href="https://hoanhtuan.name.vn">hoanhtuan.nam.vn</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h2>Liên hệ với chúng tôi</h2>
                    </div>

                    <!-- <x-blog.message :status="'success'" /> -->

                    <div class="col-md-6">
                        <!-- <form onsubmit="return false;" autocomplete="off" method="POST" action="{{ route('contact.store')}}"> -->
                        <form onsubmit="return false;" autocomplete="off" method="POST" >
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <input value='' placeholder="Họ của bạn" name="first_name"/>
                                    <small class="error text-danger first_name"></small>
                                </div>
                                <div class="col-md-6">
                                    <input value=''  placeholder="Tên của bạn"  name="last_name"/>
                                    <small class="error text-danger last_name"></small>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <input value=''  type="email" placeholder="Địa chỉ Email" name="email"/>
                                    <small class="error text-danger email"></small>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <input value='' placeholder="Tiêu đề"  name="subject"/>
                                    <small class="error text-danger subject"></small>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <form value=''  placeholder="Nội dung bạn muốn nói về chúng tôi"  name="message"/>
                                    <small class="error text-danger message"></small>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Gửi đi" class="btn btn-primary send-message-btn">
                            </div>
                        </form>		

                        <x-blog.message :status="'success'" />

                    </div>
                    <div class="col-md-6">
                        <div id="map" class="colorlib-map"></div>
                    </div>
                </div>
            </div>
        </div>
        </div>   
    </body>
</html>