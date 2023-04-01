<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị - Danh sách người dùng </title>
</head>
<body>
	 <!--start page Content Page -->
        <div class="page-wrapper">
            <div class="page-content">
                <!--breadcrumb-->
                <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                    <div class="breadcrumb-title pe-3">Người dùng</div>
                    <div class="ps-3">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 p-0">
                                <li class="breadcrumb-item"><a href="{{ route('admin.index') }}"><i class="bx bx-home-alt"></i></a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Tất cả người dùng</li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!--end breadcrumb-->

                <div class="card">
                    <div class="card-body">
                        <div class="d-lg-flex align-items-center mb-4 gap-3">
                            <div class="position-relative">
                                <input type="text" class="form-control ps-5 radius-30" placeholder="Tìm kiếm người dùng"> <span class="position-absolute top-50 product-show translate-middle-y"><i class="bx bx-search"></i></span>
                            </div>
                            <div class="ms-auto"><a href="{{ route('admin.categories.create') }}" class="btn btn-primary radius-30 mt-2 mt-lg-0"><i class="bx bxs-plus-square"></i>Thêm người dùng mới</a></div>
                        </div>
                        <div class="table-responsive">
                            <table class="table mb-0">
                                <thead class="table-light">
                                    <tr>
                                        <th>Mã Tài khoản</th>
                                        <th>Ảnh dại diện</th>
                                        <th>Họ Tên</th>
                                        <th>Email</th>
                                        <th>Quyền</th>
                                        <th>Thông tin</th>
                                        <th>Ngày tạo</th>
                                        <th>Chức năng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listUserAdmin}" var="user" varStatus="loop">
                                    <c:if test="${loop.index < 100}"><tr>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <div class="ms-2">
                                                    <h6 class="mb-0 font-14">${user.id}</h6>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <img style="margin: auto; background-size: cover ;  width: 60px; height: 60px;   background-image: url(<c:url value='${imageServiceAdmin.getConfigPathImgUser(user.id)}'/>)"  alt="">
                                        </td>
                                        <td>${user.name}</td>
                                        <td>${user.email}</td>
                                        <td><?php $role = Roles::GetRoles($item['role_id']);
                                            echo $role["name"] ?></td>
                                        <?php $role = Roles::GetRoles($item['role_id']);
                                            if($role["name"] != 'user'){?>
                                                <td>
                                                    <a class="btn btn-primary btn-sm" href="{{ route('admin.users.show', $user) }}">Bài viết</a>
                                                </td>
                                            <?php }
                                            else {?>
                                                <td>
                                            <a class="btn btn-primary btn-sm" href="{{ route('admin.users.show', $user) }}">Chi tiết</a>
                                            
                                        </td>
                                        <?php } ?>
                                        

                                        <td>${user.created_at}</td>

                                        <td>
                                            <div class="d-flex order-actions">
                                                <a href="edituser.php?id=<?php echo $item["id"] ?>" class=""><i class='bx bxs-edit'></i></a>
                                                <a href="#" onclick="event.preventDefault(); document.querySelector('#delete_form_{{ $user->id }}').submit();" class="ms-3"><i class='bx bxs-trash'></i></a>

                                                <form method="post" action="{{ route('admin.users.destroy', $user) }}" id="delete_form_{{ $user->id }}">
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                     </c:if>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <div>
                            <?php
                            if ($page > 1) {
                                echo  "<button class='btn btn-secondary me-4  mt-2 mt-lg-0' onclick=\"location.href='?page=" . ($page - 1) . "'\">Trang trước</button>";
                            }
                            if ($page < $pages) {
                                echo "<button class='btn btn-secondary mt-2 mt-lg-0' onclick=\"location.href='?page=" . ($page + 1) . "'\">Trang sau</button>";
                            }
                            ?>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <!--end page wrapper -->
</body>
</html>