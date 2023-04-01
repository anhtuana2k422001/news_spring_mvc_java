<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách bài viết</title>
</head>
<body>
	<!--wrapper-->
	<div class="wrapper">
		<!--start page Content Page -->
		<div class="page-wrapper">
			<div class="page-content">
				<!--breadcrumb-->
				<div
					class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
					<div class="breadcrumb-title pe-3">Bài viết</div>
					<div class="ps-3">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mb-0 p-0">
								<li class="breadcrumb-item"><a
									href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Bài
									viết</li>
							</ol>
						</nav>
					</div>
				</div>
				<!--end breadcrumb-->

				<div class="card">
					<div class="card-body p-4">
						 
							
						

						<h5 class="card-title">${post.title}</h5>
						<h5 class="card-title">${postDetail.title}</h5>
					 
						<hr />
						<form action="{{ route('admin.posts.update', $post) }}"
							method="POST" enctype="multipart/form-data">
							<div class="form-body mt-4">
								<div class="row">
									<div class="col-lg-12">
										<div class="border border-3 p-4 rounded">
											<div class="mb-3">
												<label for="inputProductTitle" class="form-label">Tiêu
													đề bài viết</label> <input type="text" value='${editPost.title}'
													name="title" required class="inputPostTitle form-control"
													id="inputProductTitle" placeholder="Nhập tiêu đề bài viết">

												<!-- Hiển thị thông báo lỗi -->
												<?php if (isset($message) && !empty($message)) : ?>
												<p class="text-danger">
													<?php echo $message; ?>
												</p>
												<?php endif; ?>

											</div>

											<div class="mb-3">
												<label for="inputProductTitle" class="form-label">Slug
													- liên kết</label> <input type="text" value='${editPost.slug}'
													name="slug" required class="slugPost form-control"
													id="inputProductTitle" placeholder="Nhập slug">

												<!-- Hiển thị thông báo lỗi -->
												<?php if (isset($message) && !empty($message)) : ?>
												<p class="text-danger">
													<?php echo $message; ?>
												</p>
												<?php endif; ?>

											</div>

											<div class="mb-3">
												<label for="inputProductDescription" class="form-label">Mô
													tả</label>
												<textarea required name="excerpt" class="form-control"
													id="inputProductDescription" rows="3"><?php echo $post['excerpt'] ?></textarea>

												<!-- Hiển thị thông báo lỗi -->
												<?php if (isset($message) && !empty($message)) : ?>
												<p class="text-danger">
													<?php echo $message; ?>
												</p>
												<?php endif; ?>
											</div>

											<div class="mb-3">
												<label for="inputProductTitle" class="form-label">Danh
													mục bài viết</label>
												<div class="card">
													<div class="card-body">
														<div class="p-3 rounded">
															<div class="mb-3">

																<select name="category_id" required
																	class="single-select">
																	<?php
                                                                    $cate = Category::GetCategory($post["category_id"]);
                                                                    echo "<option value=" . $cate["id"] . ">" . $cate["name"] . "</option>";
                                                                    $cates = Category::ListCategorie();
                                                                    foreach ($cates as $item) {
                                                                        if($item["name"] != $cate["name"])
                                                                            echo "<option value=" . $item["id"] . ">" . $item["name"] . "</option>";
                                                                    }

                                                                    ?>
																</select>
																<!-- <p class="text-danger">==> Còn lỗi sai, select còn chưa đúng</p> -->

																<p class="text-danger">
																	<?php echo htmlentities($message); ?>
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>

											 

											<!-- <input id="image-uploadify" name="thumbnail" type="file" id="file" accept="image/*" multiple> -->
											<div class="mb-3">
												<div class="row">
													<div class="col-md-5">
														<div class="card">
															<div class="card-body">
																<label for="inputProductDescription" class="form-label">Hình
																	ảnh bài viết</label> <input id="thumbnail" name="thumbnail"
																	type="file" id="file" value="">

																<!-- Hiển thị thông báo lỗi -->
																<?php if (isset($message) && !empty($message)) : ?>
																<p class="text-danger">
																	<?php echo $message; ?>
																</p>
																<?php endif; ?>
															</div>
														</div>
													</div>

													<div class="col-md-7 text-center">
														
													</div>
												</div>
											</div>

											<div class="mb-3">
												<label for="inputProductDescription" class="form-label">Nội
													dung bài viết</label>
												<textarea name="body" id="post_content" class="form-control"
													id="inputProductDescription" rows="3"><?php echo $post['body'] ?></textarea>
												<!-- Hiển thị thông báo lỗi -->
												<?php if (isset($message) && !empty($message)) : ?>
												<p class="text-danger">
													<?php echo $message; ?>
												</p>
												<?php endif; ?>
												<script>
													tinymce
															.init({
																selector : 'textarea',
																plugins : 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
																toolbar : 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
															});
												</script>
											</div>

											

											<button class="btn btn-primary" type="submit">Sửa
												bài viết</button>

											<a class="btn btn-danger"
												onclick="event.preventDefault(); document.getElementById('delete_post_{{ $post->id }}').submit();"
												href="#">Xóa bài viết</a>

										</div>
									</div>
								</div>
							</div>

						</form>

						<form id="delete_post_{{ $post->id }}"
							action="{{ route('admin.posts.destroy', $post) }}" method="post">
						</form>

					</div>
				</div>

			</div>
		</div>
		<!--end page wrapper -->
</body>
</html>