<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<jsp:include page="include/head.jsp"/>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- Main Header -->
    <jsp:include page="include/header.jsp"/>
    <!-- Left side column. contains the logo and sidebar -->
    <jsp:include page="include/left_side.jsp"/>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Page Header
                <small>Optional description</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <!-- Your Page Content Here -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <jsp:include page="include/footer.jsp"/>

    <!-- Control Sidebar -->
    <jsp:include page="include/control_sidebar.jsp"/>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->
<jsp:include page="include/foot.jsp"/>
</body>
</html>
