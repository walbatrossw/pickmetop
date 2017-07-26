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
                상세 채용 정보
                <small>${company.companyName} 채용 정보</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 채용</a></li>
                <li class="active"> 상세정보</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Main row -->
            <div class="row">
                <div class="col-md-3">
                    <!-- Profile Image -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">채용 정보</h3>
                        </div>
                        <div class="box-body">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <strong><i class="fa fa-edit margin-r-5"></i> 기업명</strong>
                                    <p class="text-muted">${recruit.company.companyName}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 채용명</strong>
                                    <p class="text-muted">${recruit.recruitName}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 채용시작일</strong>
                                    <p class="text-muted">${recruit.recruitCompanyBeginDate}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 채용마감일</strong>
                                    <p class="text-muted">${recruit.recruitCompanyEndDate}</p>
                                </li>
                            </ul>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- ./col -->
                <div class="col-md-9">
                    <div class="box box-warning">
                        <div class="box-header">
                            <h3 class="box-title">채용직무</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>채용 형태</th>
                                    <th>채용 학력</th>
                                    <th>직무 대분류</th>
                                    <th>직무 소분류</th>
                                    <th>상세 직무</th>
                                    <th>자소서 항목</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="i" items="${recruitJobs}">
                                <tr>
                                    <td>${i.recruitCompanyJobState}</td>
                                    <td>${i.recruitCompanyJobEdu}</td>
                                    <td>${i.jobCategory2.jobCategory1.jobCategory1Name}</td>
                                    <td>${i.jobCategory2.jobCategory2Name}</td>
                                    <td>${i.recruitCompanyJobDetail}</td>
                                    <td>
                                        <a class="btn btn-xs btn-primary" href="${path}/recruit/${i.recruitCompanyJobId}/article/create" role="button"><i class="fa fa-plus"></i> 추가</a>
                                        <a class="btn btn-xs btn-primary" href="${path}/recruit/${i.recruitCompanyJobId}/article/update" role="button"><i class="fa fa-plus"></i> 수정</a>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                </div>
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
