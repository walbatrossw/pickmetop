<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../include/header.jsp" %>
</head>
<body class="fixed skin-blue-light sidebar-mini">
<div class="wrapper">

    <%@ include file="../include/main_header.jsp" %>

    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="../include/main_sidebar.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                관리자 리스트
                <small>리스트</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 관리자 관리</a></li>
                <li class="active"> 관리자 리스트</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Main row -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">관리자 리스트</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>관리자 번호</th>
                                    <th>관리자 아이디</th>
                                    <th>관리자 이름</th>
                                    <th>가입일자</th>
                                    <th>수정일자</th>
                                    <th>로그인일자</th>
                                    <th>수정/삭제</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="i" items="${admins}">
                                    <tr>
                                        <td>${i.adminId}</td>
                                        <td><a href="${path}/admin/view/${i.adminId}">${i.adminEmail}</a></td>
                                        <td>${i.adminName}</td>
                                        <td><fmt:formatDate value="${i.adminJoinDate}" pattern="yyyy-MM-dd a HH:mm:ss"/></td>
                                        <td><fmt:formatDate value="${i.adminUpdateDate}" pattern="yyyy-MM-dd a HH:mm:ss"/></td>
                                        <td><fmt:formatDate value="${i.adminLoginDate}" pattern="yyyy-MM-dd a HH:mm:ss"/></td>
                                        <td>
                                            <input type="button" class="btn btn-primary" value="수정">
                                            <input type="button" class="btn btn-danger" value="삭제">
                                        </td>

                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row (main row) -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <%@ include file="../include/main_footer.jsp" %>

    <!-- Control Sidebar -->
    <%@ include file="../include/control_sidebar.jsp" %>
    <!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>
