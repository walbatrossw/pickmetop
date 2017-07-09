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
                채용 등록
                <small>채용 작성</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 관리자 페이지</a></li>
                <li class="active">채용작성</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="box">
                <form action="">
                    <div class="recruitCompanyInfo">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">채용 기업정보</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="companyName">기업명</label>
                                            <input type="text" class="form-control" id="companyName" placeholder="예) 삼성전자">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="name">채용공고명</label>
                                            <input type="text" class="form-control" id="name" placeholder="예) 2017 상반기 대졸 신입사원 공채">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="beginDate">채용시작일</label>
                                            <input type="datetime-local" class="form-control" id="beginDate">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="endDate">채용마감일</label>
                                            <input type="datetime-local" class="form-control" id="endDate">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="photoName">채용 공고 사진파일</label>
                                            <input type="file" id="photoName">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box-primary -->
                    </div>
                    <!--기업 채용정보-->
                    <div class="recruitCompanyJob">
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title">직무 정보</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="jobIndex1">직무대분류</label>
                                            <select class="form-control" id="jobIndex1">
                                                <option>:::직무대분류:::</option>
                                                <option>인턴</option>
                                                <option>계약직</option>
                                                <option>신입</option>
                                                <option>경력</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="jobIndex2">직무소분류</label>
                                            <select class="form-control" id="jobIndex2">
                                                <option>:::선택:::</option>
                                                <option>인턴</option>
                                                <option>계약직</option>
                                                <option>신입</option>
                                                <option>경력</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="jobState">채용형태</label>
                                            <select class="form-control" id="jobState">
                                                <option>:::선택:::</option>
                                                <option>인턴</option>
                                                <option>계약직</option>
                                                <option>신입</option>
                                                <option>경력</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="JobEducation">채용학력</label>
                                            <select class="form-control" id="JobEducation">
                                                <option>:::선택:::</option>
                                                <option>학력무관</option>
                                                <option>전문대졸</option>
                                                <option>대졸</option>
                                                <option>석사</option>
                                                <option>박사</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="jobDetail">채용 직무 상세</label>
                                            <input type="text" class="form-control" id="jobDetail" placeholder="예) 자바개발자">
                                        </div>
                                    </div>
                                    <div class="col-sm-12" >
                                        <div class="form-group articles">
                                            <label for="article">직무별 자기소개서 항목</label>
                                            <button type="button" class="btn btn-default btn-xs articleAddBtn"><i class="fa fa-plus"></i> 항목 추가</button>
                                            <button type="button" class="btn btn-default btn-xs articleDelBtn"><i class="fa fa-minus"></i> 항목 삭제</button>
                                            <div class="form-group article">
                                                <input type="text" class="form-control" id="article" placeholder="예) 자신의 지원동기 및 입사후 포부를 기술해주세요">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-success-->
                    </div>
                    <!--직무별 채용정보-->
                </form>
                <!-- /.form -->
            </div>
            <!-- /.box -->
            <div class="box box-body">
                <button type="button" class="btn btn-primary jobAddBtn"><i class="fa fa-plus"></i> 채용 직무 추가</button>
                <button type="button" class="btn btn-primary jobDelBtn"><i class="fa fa-minus"></i> 채용 직무 삭제</button>
                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> 저장</button>
            </div>
        </section>
        <!-- /.Main content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <%@ include file="../include/footer.jsp" %>

    <!-- Control Sidebar -->
    <%@ include file="../include/control_sidebar.jsp" %>
</div>
<!-- ./wrapper -->

<!-- JS SCRIPTS -->
<%@ include file="../include/foot.jsp" %>
<script src="/dist/js/recruit/recruitAdd.js"></script>
</body>
</html>
