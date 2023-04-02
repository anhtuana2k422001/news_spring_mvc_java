<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách bài viết</title>
</head>
<style>
.table-responsive {
  overflow-x: auto;
} 
</style>
<body>
	<!--wrapper-->
	<!--wrapper-->
	<div class="wrapper">
		<!--start page Content Page -->
		  <div class="page-wrapper">
       
        <div class="page-content">
            <!--breadcrumb-->
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="breadcrumb-title pe-3">Tài khoản</div>
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Thêm mới tài khoản</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!--end breadcrumb-->

            <div class="card">
                <div class="card-body p-4">
                    <h5 class="card-title">Thêm tài khoản mới</h5>
                    <hr />
                    <form:form  method="POST"   modelAttribute="user">
                        <div class="form-body mt-4">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="border border-3 p-4 rounded">

                                        <div class="mb-3">
                                            <label for="input_name" class="form-label">Họ Tên</label>
                                            <input name="name" type="text" required="required" class="form-control" id="input_name">
                                        </div>

                                        <div class="mb-3">
                                            <label for="input_email" class="form-label">Email</label>
                                            <input name="email" type="email" required="required" class="form-control" id="input_email">
                                        </div>

                                        <div class="mb-3">
                                            <label for="input_password" class="form-label">Mật khẩu</label>
                                            <input name="password" type="password" required="required" class="form-control" id="input_password">
                                        </div>

                                        <div class="mb-3">
                                            <label for="input_password" class="form-label">Nhập lại mật khẩu</label>
                                            <input name="repassword" type="password" required="required" class="form-control" id="input_password">
                                            <?php echo empty($errors)? "" : $errors?>
                                        </div>

                                        <div class="mb-3">
                                            <label for="input_image" class="form-label">Ảnh đai diện</label>
                                            <input name="image" type="file" required="required" class="form-control" id="input_image" onchange="previewImage()">
                                            <img id="preview_image" src="" alt="" width="200">
                                            <script>
                                                function previewImage() {
                                                    var preview = document.querySelector('#preview_image');
                                                    var file = document.querySelector('#input_image').files[0];
                                                    var reader = new FileReader();

                                                    reader.addEventListener("load", function() {
                                                        preview.src = reader.result;
                                                    }, false);

                                                    if (file) {
                                                        reader.readAsDataURL(file);
                                                    }
                                                }
                                            </script>

                                        </div>



                                        <div class="mb-3">
                                            <label for="inputProductTitle" class="form-label">Quyền tài khoản</label>
                                            <div class="card">
                                                <div class="card-body">
                                                    <div class="p-3 rounded">
                                                        <div class="mb-3">
                                                            <select name="role_id" required="required" class="single-select">
                                                                <option value=" ">Chọn quyền người dùng</option>
                                                                <?php
                                                                $roles = Roles::ListRole();
                                                                foreach ($roles as $item) {
                                                                    echo "<option value=" . $item["id"] . ">" . $item["name"] . "</option>";
                                                                }
                                                                ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
                                        <button class="btn btn-primary" type="submit">Thêm tài khoản mới</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form:form>
                </div>
            </div>


        </div>


    </div>
    </div>
		<!--end page wrapper -->
		<!--end page wrapper -->


		<!--end wrapper-->
</body>
</html>