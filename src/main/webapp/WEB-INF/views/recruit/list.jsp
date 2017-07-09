<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<%@ include file="../include/head.jsp" %>
<body class="hold-transition skin-blue fixed sidebar-mini">
<div class="wrapper">
    <!-- Main Header -->
    <%@ include file="../include/header.jsp" %>
    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="../include/left_side.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                채용 리스트
                <small>채용 리스트</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 관리자 페이지</a></li>
                <li class="active">채용리스트</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

        </section>
        <!-- /. Main content -->

    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <%@ include file="../include/footer.jsp" %>

    <!-- Control Sidebar -->
    <%@ include file="../include/control_sidebar.jsp" %>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->
<%@ include file="../include/foot.jsp" %>
<script src="/dist/js/recruitment/recruitmentAdd.js"></script>
</body>
</html>
