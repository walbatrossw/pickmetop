<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<%@ include file="../include/head.jsp"%>
<body class="hold-transition skin-blue sidebar-mini">
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
                            <li class="active"><a href="#resume" data-toggle="tab">인적사항</a></li>
                            <li><a href="#personal" data-toggle="tab">인적사항</a></li>
                            <li><a href="#military" data-toggle="tab">병역</a></li>
                            <li><a href="#school" data-toggle="tab">학력</a></li>
                            <li><a href="#club" data-toggle="tab">동아리/학생회</a></li>
                            <li><a href="#certificate" data-toggle="tab">자격/면허</a></li>
                            <li><a href="#language" data-toggle="tab">어학</a></li>
                            <li><a href="#activity" data-toggle="tab">직무 관련활동 경험</a></li>
                            <li><a href="#career" data-toggle="tab">경력</a></li>
                            <li><a href="#award" data-toggle="tab">수상경력</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="active tab-pane" id="resume">
                                <div class="box-body">
                                    <form role="form" method="post" action="/resume/create">
                                        <input type="text" class="form-control" name="name">
                                        <input type="submit" class="form-control" value="Submit">
                                    </form>
                                </div>
                            </div>
                            <div class="active tab-pane" id="personal">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="row">
                                            <div class="col-md-3" align="center">
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
                                            <div class="col-md-3">
                                                <!-- text input -->
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
                                            <div class="col-md-3" >
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
                                                    <div class="input-group date">
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
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>이메일 / SNS</label>
                                                    <div class="input-group date">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-envelope-o"></i>
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
                                            <div class="col-md-9">
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
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="military">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>병역구분</label>
                                                <select class="form-control">
                                                    <option>::::선택::::</option>
                                                    <option>현역</option>
                                                    <option>예비역</option>
                                                    <option>보충역</option>
                                                    <option>제1국민역</option>
                                                    <option>제2국민역</option>
                                                    <option>해당없음</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>군별</label>
                                                <select class="form-control">
                                                    <option>::::선택::::</option>
                                                    <option>육군</option>
                                                    <option>공군</option>
                                                    <option>해군</option>
                                                    <option>기타</option>
                                                    <option>해당없음</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>계급</label>
                                                <input type="text" class="form-control" placeholder="예) 병장">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>병과</label>
                                                <input type="text" class="form-control" placeholder="예) 소총수">
                                            </div>
                                        </div>
                                        <div class="col-md-4" >
                                            <div class="form-group">
                                                <label>입영일자</label>
                                                <div class="input-group date">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                    <input type="date" class="form-control pull-right">
                                                </div>
                                                <!-- /.input group -->
                                            </div>
                                        </div>
                                        <div class="col-md-4" >
                                            <div class="form-group">
                                                <label>전역일자</label>
                                                <div class="input-group date">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                    <input type="date" class="form-control pull-right">
                                                </div>
                                                <!-- /.input group -->
                                            </div>
                                        </div>
                                    </div>
                                    </form>
                                    <button type="button" class="btn btn-block btn-success" id="militaryAddBtn">병역 사항 저장하기</button>
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="school">
                                <div class="box-body">
                                    <label><h4><strong>고등학교</strong></h4></label>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>학교명</label>
                                                <input type="text" class="form-control" placeholder="예) 한국고등학교">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>분류</label>
                                                <select class="form-control" name="">
                                                    <option value="">::::선택::::</option>
                                                    <option value="문과">문과</option>
                                                    <option value="이과">이과</option>
                                                    <option value="전문(실업)">전문(실업)</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-3" >
                                            <div class="form-group">
                                                <label>입학일자</label>
                                                <div class="input-group date">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                    <input type="text" class="form-control pull-right" name="beginDate">
                                                </div>
                                                <!-- /.input group -->
                                            </div>
                                        </div>
                                        <div class="col-md-3" >
                                            <div class="form-group">
                                                <label>졸업일자</label>
                                                <div class="input-group date">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                    <input type="text" class="form-control pull-right" id="datepicker3">
                                                </div>
                                                <!-- /.input group -->
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <label><h4><strong>전문대학 / 대학교 / 대학원</strong></h4></label>
                                    <div class="btn-group">
                                        <button type="button" id="univAddBtn" class="btn btn-xs btn-primary"><i class="fa fa-plus"></i> </button>
                                        <button type="button" id="univDelBtn" class="btn btn-xs btn-primary"><i class="fa fa-minus"></i> </button>
                                    </div>
                                    <div class="univ">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>분류</label>
                                                    <select class="form-control">
                                                        <option>::::선택::::</option>
                                                        <option>2년제</option>
                                                        <option>3년제</option>
                                                        <option>4년제</option>
                                                        <option>대학원</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>학교명</label>
                                                    <input type="text" class="form-control" placeholder="한국대학교">
                                                </div>
                                            </div>
                                            <div class="col-md-3" >
                                                <div class="form-group">
                                                    <label>입학일자</label>
                                                    <div class="input-group date">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                        <input type="text" class="form-control pull-right" id="datepicker2">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                            </div>
                                            <div class="col-md-3" >
                                                <div class="form-group">
                                                    <label>졸업일자</label>
                                                    <div class="input-group date">
                                                        <div class="input-group-addon">
                                                            <i class="fa fa-calendar"></i>
                                                        </div>
                                                        <input type="text" class="form-control pull-right" id="datepicker3">
                                                    </div>
                                                    <!-- /.input group -->
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>전공명</label>
                                                    <input type="text" class="form-control" placeholder="경영학">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>부/복수전공</label>
                                                    <select class="form-control">
                                                        <option>::::선택::::</option>
                                                        <option>해당없음</option>
                                                        <option>복수전공</option>
                                                        <option>부전공</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>부/복수전공명</label>
                                                    <input type="text" class="form-control" placeholder="영어영문학">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>학점</label>
                                                    <input type="text" class="form-control" placeholder="4.0/4.5">
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                    </div>
                                    <div class="univAdd"></div>
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="club">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="btn-group">
                                            <label><h4><strong>동아리 / 학생회</strong></h4></label>
                                            <button type="button" id="clubAddBtn"  class="btn btn-xs btn-primary"><i class="fa fa-plus"></i> </button>
                                            <button type="button" id="clubDelBtn"  class="btn btn-xs btn-primary"><i class="fa fa-minus"></i> </button>
                                        </div>
                                        <div class="club">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>활동명</label>
                                                        <input type="text" class="form-control" placeholder="예) 학생회">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>주관기관/단체</label>
                                                        <input type="text" class="form-control" placeholder="예) 학생회">
                                                    </div>
                                                </div>
                                                <div class="col-md-3" >
                                                    <div class="form-group">
                                                        <label>시작일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker2">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-3" >
                                                    <div class="form-group">
                                                        <label>종료일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker3">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-12" >
                                                    <div class="form-group">
                                                        <label>활동내용</label>
                                                        <input type="text" class="form-control" placeholder="예) 학생회">
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="clubAdd"></div>
                                    </form>
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="certificate">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="btn-group">
                                            <button type="button" id="certificateAddBtn" class="btn btn-xs btn-primary"><i class="fa fa-plus"></i> </button>
                                            <button type="button" id="certificateDelBtn" class="btn btn-xs btn-primary"><i class="fa fa-minus"></i> </button>
                                        </div>
                                        <div class="certificate">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>자격증명</label>
                                                        <input type="text" class="form-control" placeholder="예) 정보처리기사">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>등급</label>
                                                        <input type="text" class="form-control" placeholder="예) 최종합격">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>등록번호</label>
                                                        <input type="text" class="form-control" placeholder="예) 000-0000">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>발행기관</label>
                                                        <input type="text" class="form-control" placeholder="예) 대한상공회의소">
                                                    </div>
                                                </div>
                                                <div class="col-md-4" >
                                                    <div class="form-group">
                                                        <label>취득일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker2">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-4" >
                                                    <div class="form-group">
                                                        <label>만료일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker3">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="certificateAdd"></div>
                                    </form>
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="language">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="btn-group">
                                            <button type="button" id="languageAddBtn" class="btn btn-xs btn-primary"><i class="fa fa-plus"></i> </button>
                                            <button type="button" id="languageDelBtn" class="btn btn-xs btn-primary"><i class="fa fa-minus"></i> </button>
                                        </div>
                                        <div class="language">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>외국어명</label>
                                                        <input type="text" class="form-control" placeholder="예) 영어">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>회화구사 수준</label>
                                                        <input type="text" class="form-control" placeholder="예) 상">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>시험명</label>
                                                        <input type="text" class="form-control" placeholder="예) TOEIC">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>공인점수</label>
                                                        <input type="text" class="form-control" placeholder="예) 900">
                                                    </div>
                                                </div>
                                                <div class="col-md-3" >
                                                    <div class="form-group">
                                                        <label>취득일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker2">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-3" >
                                                    <div class="form-group">
                                                        <label>만료일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker3">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>시행기관</label>
                                                        <input type="text" class="form-control" placeholder="예) 토익위원회">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>등록번호</label>
                                                        <input type="text" class="form-control" placeholder="예) 0000-0000">
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="languageAdd"></div>
                                    </form>
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="activity">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="btn-group">
                                            <button type="button" id="activityAddBtn" class="btn btn-xs btn-primary"><i class="fa fa-plus"></i> </button>
                                            <button type="button" id="activityDelBtn" class="btn btn-xs btn-primary"><i class="fa fa-minus"></i> </button>
                                        </div>
                                        <div class="activity">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>활동명</label>
                                                        <input type="text" class="form-control" placeholder="예) 봉사활동">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>주관기관</label>
                                                        <input type="text" class="form-control" placeholder="예) 봉사단체">
                                                    </div>
                                                </div>
                                                <div class="col-md-3" >
                                                    <div class="form-group">
                                                        <label>시작일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker2">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-3" >
                                                    <div class="form-group">
                                                        <label>종료일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker3">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>활동내용</label>
                                                        <input type="text" class="form-control" placeholder="예) ">
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="activityAdd"></div>
                                    </form>
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="career">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="btn-group">
                                            <button type="button" id="careerAddBtn" class="btn btn-xs btn-primary"><i class="fa fa-plus"></i> </button>
                                            <button type="button" id="careerDelBtn" class="btn btn-xs btn-primary"><i class="fa fa-minus"></i> </button>
                                        </div>
                                        <div class="career">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>회사명</label>
                                                        <input type="text" class="form-control" placeholder="예) 삼성전자">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>직급</label>
                                                        <input type="text" class="form-control" placeholder="예) 인턴">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>부서</label>
                                                        <input type="text" class="form-control" placeholder="예) 영업1팀">
                                                    </div>
                                                </div>
                                                <div class="col-md-4" >
                                                    <div class="form-group">
                                                        <label>입사일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker2">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-4" >
                                                    <div class="form-group">
                                                        <label>퇴사일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker3">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-4" >
                                                    <div class="form-group">
                                                        <label>퇴사사유</label>
                                                        <input type="text" class="form-control" placeholder="예) ">
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>업무내용</label>
                                                        <input type="text" class="form-control" placeholder="예) ">
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="careerAdd"></div>
                                    </form>
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="award">
                                <div class="box-body">
                                    <form role="form">
                                        <div class="btn-group">
                                            <button type="button" id="awardAddBtn" class="btn btn-xs btn-primary"><i class="fa fa-plus"></i> </button>
                                            <button type="button" id="awardDelBtn" class="btn btn-xs btn-primary"><i class="fa fa-minus"></i> </button>
                                        </div>
                                        <div class="award">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>수상명</label>
                                                        <input type="text" class="form-control" placeholder="예) 삼성전자">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>수상내용</label>
                                                        <input type="text" class="form-control" placeholder="예) 인턴">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>수여기관</label>
                                                        <input type="text" class="form-control" placeholder="예) 영업1팀">
                                                    </div>
                                                </div>
                                                <div class="col-md-3" >
                                                    <div class="form-group">
                                                        <label>수상일자</label>
                                                        <div class="input-group date">
                                                            <div class="input-group-addon">
                                                                <i class="fa fa-calendar"></i>
                                                            </div>
                                                            <input type="text" class="form-control pull-right" id="datepicker2">
                                                        </div>
                                                        <!-- /.input group -->
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="awardAdd"></div>
                                    </form>
                                </div>
                            </div>
                            <!-- /.tab-pane -->
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
