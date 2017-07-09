<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<%@ include file="../include/head.jsp"%>
<body class="hold-transition skin-blue fixed sidebar-mini">
<div class="wrapper">
    <!-- Main Header -->
    <%@ include file="../include/header.jsp"%>
    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="../include/left_side.jsp"%>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                님의 이력서 작성
                <small>이력서 작성</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-10">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#personal" data-toggle="tab">인적사항</a></li>
                            <li><a href="#military" data-toggle="tab">병역</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="active tab-pane" id="personal">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="row">
                                            <div class="col-md-2" align="center">
                                                <div class="form-group">
                                                    <label>증명사진</label>
                                                    <div class="input-group">
                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 140px; height: 180px;">
                                                            </div>
                                                            <div>
                                                            <span class="btn btn-default btn-file">
                                                                <span class="fileinput-new">사진선택</span>
                                                                <span class="fileinput-exists">변경</span>
                                                                <input type="file" name="photoName"></span>
                                                                <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">삭제</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>이름</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-tag"></i>
                                                        </div>
                                                        <input type="text" class="form-control" name="name" placeholder="이름">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>일반전화 / 휴대전화</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-phone"></i>
                                                        </div>
                                                        <input type="text" class="form-control" name="phone" data-mask="(999)-9999-9999">
                                                        <input type="text" class="form-control" name="mobilePhone" data-mask="999-9999-9999">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>생년월일</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                        <input type="date" class="form-control pull-right" name="birthDate">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>성별</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-intersex"></i>
                                                        </div>
                                                        <select class="form-control" name="gender">
                                                            <option value="">::::선택::::</option>
                                                            <option value="남">남</option>
                                                            <option value="여">여</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                    <label>이메일 / SNS</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-envelope-square"></i>
                                                        </div>
                                                        <input type="text" class="form-control" name="email" placeholder="이메일">
                                                    </div>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-facebook-official"></i>
                                                        </div>
                                                        <input type="text" class="form-control" name="sns" placeholder="SNS">
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="col-md-10">
                                                <div class="form-group">
                                                    <label>주소</label>
                                                    <div class="input-group">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-home"></i>
                                                        </div>
                                                        <input type="text" class="form-control" name="address" placeholder="주소">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <button type="button" class="btn btn-block btn-success" id="personalAddBtn">인적 사항 저장하기</button>
                                </div>
                            </div>
                            <!-- /.personal tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div>
                    <!-- /.nav-tabs-custom -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /. Main content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <%@ include file="../include/footer.jsp"%>

    <!-- Control Sidebar -->
    <%@ include file="../include/control_sidebar.jsp"%>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->
<%@ include file="../include/foot.jsp"%>
<script src="/dist/js/resume/resumeAdd.js"></script>
</body>
</html>
