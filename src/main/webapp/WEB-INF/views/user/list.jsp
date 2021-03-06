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
                회원 리스트
                <small>리스트</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 회원관리</a></li>
                <li class="active"> 회원 리스트</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Main row -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">회원 리스트</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>회원번호</th>
                                    <th>회원아이디</th>
                                    <th>이름</th>
                                    <th>가입일자</th>
                                    <th>수정일자</th>
                                    <th>로그인일자</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="i" items="${users}">
                                    <tr>
                                        <td>${i.userId}</td>
                                        <td><a href="${path}/user/view/${i.userId}">${i.userEmail}</a></td>
                                        <td>${i.userName}</td>
                                        <td><fmt:formatDate value="${i.userJoinDate}" pattern="yyyy-MM-dd a HH:mm:ss"/></td>
                                        <td><fmt:formatDate value="${i.userUpdateDate}" pattern="yyyy-MM-dd a HH:mm:ss"/></td>
                                        <td><fmt:formatDate value="${i.userLoginDate}" pattern="yyyy-MM-dd a HH:mm:ss"/></td>
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
