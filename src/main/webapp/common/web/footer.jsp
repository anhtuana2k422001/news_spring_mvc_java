<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <!-- Import Footer -->
        <footer id="colorlib-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-2   colorlib-widget">
                        <ul class="colorlib-footer-links">
                            <li><a href="<c:url value='/trang-chu' />" ></i>Trang chủ</a></li>
                            <li><a href="<c:url value='/gioi-thieu' />" ></i>Giới thiệu</a></li>
                            <li><a href="<c:url value='/lien-he' />" ></i>Liên hệ</a></li>
                            <li><a href="<c:url value='/moi-nhat' />" ></i>Mới nhất</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2  colorlib-widget">
                        <ul class="colorlib-footer-links">
                               <c:forEach var="category" items="${listCategory}" varStatus="loop">
                                    <c:if test="${loop.index >= 1 && loop.index < 5 && category.name ne 'Chưa phân loại'}">
                                        <li><a href="<c:url value='/chuyen-muc/${category.slug}'/>">${category.name}</a></li>
                                    </c:if>
                                </c:forEach>
                        </ul>
                    </div>
                    <div class="col-md-2  colorlib-widget">
                        <ul class="colorlib-footer-links">
                            <c:forEach var="category" items="${listCategory}" varStatus="loop">
                                    <c:if test="${loop.index >= 5 && loop.index < 9 && category.name ne 'Chưa phân loại'}">
                                        <li><a href="<c:url value='/chuyen-muc/${category.slug}'/>">${category.name}</a></li>
                                    </c:if>
                            </c:forEach>
                        </ul>
                    </div>

                    <div class="col-md-2  colorlib-widget">
                        <ul class="colorlib-footer-links">   
                            <c:forEach var="category" items="${listCategory}" varStatus="loop">
                                    <c:if test="${loop.index >= 9 && loop.index < 13 && category.name ne 'Chưa phân loại'}">
                                        <li><a href="<c:url value='/chuyen-muc/${category.slug}'/>">${category.name}</a></li>
                                    </c:if>
                            </c:forEach>
                        </ul>
                    </div>

                    <div class="col-md-4 ">
                        <h4>Theo dõi chúng tôi</h4>
                        <div class="row">
                            <div class="col-md-12">
                                <form class="form-inline qbstp-header-subscribe">
                                    <div class="form-group">
                                        <input name='subscribe-email' type="email" required class="form-control"
                                            id="email" placeholder="Nhập email của bạn">
                                    </div>
                                    <div class="form-group ">
                                        <button id='subscibe-btn' type="submit" class="btn btn-primary">Đăng ký
                                            ngay</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>



            <div class="container">
                <div style=" padding: 15px 0; display: flex;" class=" row">
                    <div class="col-md-4">
                        <p>
                            <a href="{{ route('home">
                                <!-- <img style="border-radius: 12px; width: 120px;" src="./public/kcnew/frontend/img/image_logo.png" alt="logo"> -->
                            </a>
                        </p>
                        <p>
                            <span style="font-size: 14px" class="block">Báo tiếng Việt nhiều người xem nhất</span>
                        </p>
                        <p>
                            <span style="font-size: 14px" class="block">Thuộc Bộ Khoa học Công nghệ</span>
                        </p>
                        <p>
                            <span style="font-size: 14px" class="block">Số giấy phép: 548/GP-BTTTT ngày
                                20/02/2023</span>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <p>
                            <span style="font-size: 14px" class="block">Tổng biên tập: Nhóm 07 Hutech</span>
                        </p>
                        <p>
                            <span style="font-size: 14px" class="block">Địa chỉ: E1, Khu Công Nghệ cao, Phường Hiệp
                                Phú, TP.HCM</span>
                        </p>
                        <p>
                            <span style="font-size: 14px" class="block">Điện thoại: 0392766630</span>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <p>
                            <small style="font-size: 14px" class="block">&copy; 2023. Toàn bộ bản quyền thuộc
                                07</small>
                        </p>
                        <p>
                        <ul style="display: flex;" class="header--topbar-social nav hidden-sm hidden-xxs">
                            <li><a href="https://www.facebook.com/people/Anh-Tuan/100007007238964"><i
                                        class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
                                        class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
                                        class="fa fa-google-plus"></i></a></li>
                            <li><a href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
                                        class="fa fa-rss"></i></a></li>
                            <li><a href="https://www.youtube.com/c/H%E1%BB%93AnhTu%E1%BA%A5nYoutube"><i
                                        class="fa fa-youtube-play"></i></a></li>
                        </ul>
                        </p>
                    </div>
                </div>
            </div>
        </footer>

        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
        </div>
    