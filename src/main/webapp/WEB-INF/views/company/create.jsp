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
                기업정보 등록
                <small>기업정보 작성</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 관리자 페이지</a></li>
                <li class="active">기업정보</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="box">
                <div class="col-md-8">
                    <form action="">
                        <!-- /.box-header -->
                        <div class="recruitCompanyInfo">
                            <!-- general form elements -->
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">채용 기업정보</h3>
                                    <form role="form">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label for="companyName">기업명</label>
                                                        <input type="text" class="form-control" id="companyName" placeholder="예) 삼성전자">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label for="industryIndex">업종분류</label>
                                                        <select class="form-control" id="industryIndex">
                                                            <option>:::선택:::</option>
                                                            <option>인턴</option>
                                                            <option>계약직</option>
                                                            <option>신입</option>
                                                            <option>경력</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label for="companySite">대표 홈페이지</label>
                                                        <input type="text" class="form-control" id="companySite" placeholder="www.samsung.com">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label for="ceo">대표</label>
                                                        <input type="text" class="form-control" id="ceo" placeholder="예) 홍길동">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label for="birthDate">설립일자</label>
                                                        <input type="datetime-local" class="form-control" id="birthDate">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label for="address">대표전화</label>
                                                        <input type="text" class="form-control" id="phone" placeholder="123-1234-1234">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12">
                                                    <div class="form-group">
                                                        <label for="address">주소</label>
                                                        <input type="text" class="form-control" id="address" placeholder="서울시 강남구 XXX동 XXX번지">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12">
                                                    <div class="form-group">
                                                        <label for="address">기업 연간 매출액</label>
                                                        <input type="text" class="form-control" id="address" placeholder="100,000,000">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.box-body -->
                                    </form>
                                </div>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> 저장</button>
                    </form>
                </div>
                <!-- /. col -->
            </div>


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
