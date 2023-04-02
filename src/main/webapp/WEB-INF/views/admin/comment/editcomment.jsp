<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách bình luận</title>
<style>
.imageuploadify {
	margin: 0;
	max-width: 100%;
}
</style>
<script
	src="https://cdn.tiny.cloud/1/ay1wga320sbuvneqpq9at398v0s3xkpr02tl89arjb1ncbtb/tinymce/6/tinymce.min.js"
	referrerpolicy="origin"></script>
</head>
<body>
	<!--wrapper-->
	<div class="wrapper">
		 <div class="page-wrapper">
			<div class="page-content">
				<!--breadcrumb-->
				<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
					<div class="breadcrumb-title pe-3">Bình luận</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Bình luận</li>
							</ol>
						</nav>
					</div>
				</div>
				<!--end breadcrumb-->
			  
				<div class="card">
				  <div class="card-body p-4">
					  <h5 class="card-title">Thêm bình luận mới</h5>
					  <hr/>
					<form  method="POST" modelAttribute="comment">
						 
                       <div class="form-body mt-4">
							<div class="row">
								<div class="col-lg-12">
									<div class="border border-3 p-4 rounded">

										<div class="mb-3">
											<label for="inputProductTitle" class="form-label">Chi tiết bài viết</label>
												<div class="card">
													<div class="card-body">
														<div class="p-3 rounded">
															<div class="mb-3">
																<select name="category_id" required
																	class="single-select">
																	<option value="${commentDetail.post_id}">${postAdminService.getTitlePostId(commentDetail.post_id)}</option>
																	<c:forEach
																		items="${postAdminService.getDataPost()}"
																		var="post">
																		<option value="${post.id}">${post.title}</option>
																	</c:forEach>
																</select>
 

															</div>
														</div>
													</div>
												</div>
										</div>

										<div class="mb-3">
											<label for="inputProductDescription" class="form-label">Bình luận bài viết</label>
											<textarea name="the_comment" id="post_comment" class="form-control" id="inputProductDescription" rows="3">${commentDetail.the_comment}</textarea>
										 
										
										</div>

										<button class="btn btn-primary" type="submit">Sửa bình luận</button>
										<a class="btn btn-danger" onclick="event.preventDefault(); document.getElementById('delete_comment_{{ $comment->id }}').submit();" 
										href="#">Xóa bình luận</a>

									</div>
								</div>
							</div>
						</div>

					</form>

					<form id="delete_comment_{{ $comment->id }}" action="{{ route('admin.comments.destroy', $comment) }}"  method="post">
						 
					</form>


				  </div>
			  </div>


			</div>
		</div>
		</div>
		<!--end page wrapper -->
</body>
</html>