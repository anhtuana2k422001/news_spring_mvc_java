<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
    </head>
    <body>
        <div class="container">
            <header>
                <nav class="codrops-demos"></nav>
            </header>
            <section>
                <div id="container_demo">
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                          <form:form action="dang-nhap" method="POST" modelAttribute="user">  
                                <h1>ĐĂNG NHẬP</h1>
                                <p>
                                    <label for="username" class="uname" data-icon="u"> Email của bạn </label>
                                    <form:input id="username" name="username" required="required" type="email" placeholder="Mời nhập mật khẩu" path="email" />
                                </p>
                                <p>
                                    <label for="password" class="youpasswd" data-icon="p"> Mật khẩu </label>
                                    <form:input id="password" name="password" required="required" type="password" placeholder="Mời nhập email" path="password"/>
                                </p>
                                <p class="keeplogin">
                                    <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" />
                                    <label for="loginkeeping">Lưu mật khẩu</label>
                                </p>
                                <p span style=" text-align: center">
                                    <label>
                                         <span style="color: red">${statusLogin}</span>
                                    </label>
                                </p>
                                <p class="login button">
                                	<input type="submit" name="submit" value="Tiếp theo"/>
                                </p>
                                <p class="change_link">
                                    Chưa có tài khoản ?
                                    <a href="dang-ky" class="to_register">Tham gia với chúng tôi</a>
                                </p>
                            </form:form>
                        </div>

                        <div id="register" class="animate form">
                            <form method="post" action="register.php" autocomplete="on">
                                <h1> ĐĂNG KÝ </h1>
                                <p>
                                    <label for="usernamesignup" class="uname" data-icon="u">Tên của bạn</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p>
                                    <label for="emailsignup" class="youmail" data-icon="e"> Email của bạn</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com" />
                                </p>
                                <p>
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Mật khẩu của bạn </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO" />
                                </p>
                                <p>
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Nhập lại mật khẩu </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO" />
                                </p>
                                <p class="signin button">
                                    <input type="submit" value="Tiếp theo" />
                                </p>
                                <p class="change_link">
                                    Đã có tài khoản?
                                    <a href="#tologin" class="to_register"> Đi tới đăng nhập </a>
                                </p>
                      
                            </form>
                        </div>

                    </div>
                </div>
            </section>
        </div>
    </body>
</html>