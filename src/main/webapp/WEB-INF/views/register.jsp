<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
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
                          <form:form action="dang-ky" method="POST" modelAttribute="user">  
                                <h1> ĐĂNG KÝ </h1>
                                <p>
                                    <label for="usernamesignup" class="uname" data-icon="u">Tên của bạn</label>
                                    <form:input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" path="name" />
                                </p>
                                <p>
                                    <label for="emailsignup" class="youmail" data-icon="e"> Email của bạn</label>
                                    <form:input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com" path="email"/>
                                </p>
                                <p>
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Mật khẩu của bạn </label>
                                   <form:input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO" path="password"/>
                                </p>
                                <p>
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Nhập lại mật khẩu </label>
                                  <form:input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO" path="password_confirm" />
                                </p>
                                <p style=" text-align: center">
                                    <label>
                                        <c:if test="${not empty errorInUseEmail}">
                                            <span style="color: red">Địa chỉ email này đã được sử dụng!</span>
                                        </c:if>
                                        <c:if test="${not empty errorPassword}">
                                            <span style="color: red">Mật khẩu xác nhận không trùng khớp!</span>
                                        </c:if>
                                        <c:if test="${not empty errorPassSecurity}">
                                            <span style="color: red">Mật khẩu phải chứa ít nhất một chữ cái và một số!</span>
                                        </c:if>
                                            <c:if test="${not empty errorPassword}">
                                            <span style="color: red">Mật khẩu phải có độ dài tối thiểu là 6 ký tự!</span>
                                        </c:if>
                                    </label>
                                </p>
                                <p class="signin button">
                                    <input type="submit" value="Tiếp theo" />
                                </p>
                                <p class="change_link">
                                    Đã có tài khoản?
                                    <a href="dang-nhap" class="to_register"> Đi tới đăng nhập </a>
                                </p>
                            </form:form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>