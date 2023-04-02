<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách phân quyền</title>
</head>
<body>
	      <div class="wrapper">
        

        <!--start page Content Page -->
        <div class="page-wrapper">
        <div class="page-content">
				<!--breadcrumb-->
				<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
					<div class="breadcrumb-title pe-3">Giới thiệu</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Sửa trang giới thiệu</li>
							</ol>
						</nav>
					</div>
				</div>
				<!--end breadcrumb-->
			  
				<div class="card">
				  <div class="card-body p-4">
					  <h5 class="card-title">Sửa trang giới thiệu</h5>
					  <hr/>
					<form method="POST"  enctype="multipart/form-data" >
                       <div class="form-body mt-4">
							<div class="row">
								<div class="col-lg-12">
								<c:forEach items="${aboutPage}" var="about">
									<div class="border border-3 p-4 rounded">

										<div class="mb-3">
											<label for="about_first_text" class="form-label">Chúng tôi là ai ?</label>
											<textarea name="about_first_text" class="form-control" id="about_first_text" >${about.about_first_text}</textarea>
                                            <script>
                                                    tinymce.init({
                                                        selector: 'textarea',
                                                        plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
                                                        toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
                                                    });
                                                </script> 
										</div>

										<div class="mb-3">
											<label for="about_second_text" class="form-label">Trung tâm tin tức mới nhất </label>
											<textarea name="about_second_text" class="form-control" id="about_second_text" >${about.about_second_text}</textarea>
										</div>


										<div class="row">
											<div class="col-md-8">
												<div class="mb-3">
													<label for="about_first_image" class="form-label">Ảnh giới thiệu thứ nhất</label>
													<input name="about_first_image" type="file" class="form-control" id="about_first_image" onchange="previewImage(event)" >
												</div>
											</div>
											<div class="col-md-4">
												<div class="user_image p-2">
													<img id="preview" class="img-fluid img-thumbnail" src="<c:url value='${imageServiceAdmin.getConfigPathImgAbout1(about.id)}'/>" alt="">
                                                </div>
                                                <script>
                                                        function previewImage(event) {
                                                            var preview = document.getElementById('preview');
                                                            var file = event.target.files[0];
                                                            var reader = new FileReader();
                                                            reader.onload = function() {
                                                                preview.src = reader.result;
                                                            };
                                                            reader.readAsDataURL(file);
                                                        }
                                                    </script>
											</div>
										</div>

										<div class="row">
											<div class="col-md-8">
												<div class="mb-3">
													<label for="about_second_image" class="form-label">Ảnh giới thiệu thứ hait</label>
													<input name="about_second_image" type="file" class="form-control" id="about_second_image" onchange="previewImage2(event)" >
												</div>
											</div>
											<div class="col-md-4">
												<div class="user_image p-2">
													<img id="preview2" class="img-fluid img-thumbnail" src="<c:url value='${imageServiceAdmin.getConfigPathImgAbout2(about.id)}'/>" alt="">
                                                    
                                                </div>
                                                <script>
                                                        function previewImage2(event) {
                                                            var preview = document.getElementById('preview2');
                                                            var file = event.target.files[0];
                                                            var reader = new FileReader();
                                                            reader.onload = function() {
                                                                preview.src = reader.result;
                                                            };
                                                            reader.readAsDataURL(file);
                                                        }
                                                    </script>
                                                 
											</div>
										</div>

										

										<div class="mb-3">
											<label for="about_our_mission" class="form-label">Sứ mạng</label>
											<textarea name="about_our_mission"  class="form-control" id="about_our_mission" rows="3">${about.about_our_mission}</textarea>
										</div>

										<div class="mb-3">
											<label for="about_our_vision" class="form-label">Tầm nhìn</label>
											<textarea name="about_our_vision" class="form-control" id="about_our_vision" rows="3">${about.about_our_vision}</textarea>
										</div>

										<div class="mb-3">
											<label for="about_services" class="form-label">Dịch vụ</label>
											<textarea name="about_services"  class="form-control" id="about_services" rows="3">${about.about_services}</textarea>
										</div>
										<button class="btn btn-primary" type="submit">Cập nhật</button>
									</div>
								</div>
								 </c:forEach>
							</div>
						</div>
					</form>
				  </div>
			  </div>
			</div>
        </div>
        <!--end page wrapper -->
        
    </div>
    <!--end wrapper-->

	     
</body>
</html>