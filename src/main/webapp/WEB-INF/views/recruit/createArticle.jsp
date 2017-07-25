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
                채용등록
                <small>채용 작성페이지</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 관리자 페이지</a></li>
                <li class="active"> 채용등록</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <form id="recruitCreate" action="${path}/recruit/create" method="post">
            <div class="row">
                <div class="col-md-8">
                    <!-- Custom Tabs -->
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#recruitCompanyTab" data-toggle="tab">채용기업</a></li>
                            <li><a href="#recruitCompanyJobTab" data-toggle="tab">채용직무 </a></li>
                            <li class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary jobAddBtn"><i class="fa fa-plus"></i>
                                        직무 추가
                                    </button>
                                    <button type="button" class="btn btn-primary jobDelBtn"><i class="fa fa-minus"></i>
                                        직무 삭제
                                    </button>
                                    <button type="button" class="btn btn-success recruitCreateBtn"><i class="fa fa-save"></i> 저장</button>
                                </div>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <%--채용기업--%>
                            <div class="tab-pane active" id="recruitCompanyTab">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group invalidText1" style="color: red"></div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="recruitCompanyName">기업명</label>

                                            <input type="text" class="form-control" id="recruitCompanyName" name="recruitCompanyName"
                                                   placeholder="예) 삼성전자">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="recruitName">채용공고명</label>
                                            <input type="text" class="form-control" id="recruitName" name="recruitName"
                                                   placeholder="예) 2017 상반기 대졸 신입사원 공채">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="recruitCompanyBeginDate">채용시작일</label>
                                            <input type="datetime-local" class="form-control" id="recruitCompanyBeginDate"
                                                   name="recruitCompanyBeginDate">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="recruitCompanyEndDate">채용마감일</label>
                                            <input type="datetime-local" class="form-control" id="recruitCompanyEndDate"
                                                   name="recruitCompanyEndDate">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="recruitCompanyPhotoName">채용 공고 사진파일</label>
                                            <input type="file" id="recruitCompanyPhotoName" name="recruitCompanyPhotoName">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.tab-pane -->

                            <%--채용 직무--%>
                            <div class="tab-pane" id="recruitCompanyJobTab">
                                <div class="recruitCompanyJob">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group invalidText2" style="color: red"></div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="recruitCompanyJobState">채용형태</label>
                                                <select class="form-control" id="recruitCompanyJobState"
                                                        name="recruitCompanyJobState">
                                                    <option value="">:::선택:::</option>
                                                    <option value="인턴">인턴</option>
                                                    <option value="계약직">계약직</option>
                                                    <option value="신입">신입</option>
                                                    <option value="경력">경력</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="recruitCompanyJobEdu">채용학력</label>
                                                <select class="form-control" id="recruitCompanyJobEdu"
                                                        name="recruitCompanyJobEdu">
                                                    <option value="">:::선택:::</option>
                                                    <option value="학력무관">학력무관</option>
                                                    <option value="전문대졸">전문대졸</option>
                                                    <option value="대졸">대졸</option>
                                                    <option value="석사">석사</option>
                                                    <option value="박사">박사</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row jobCategories">
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="recruitJobCategory1">직무 대분류</label>
                                                <select class="form-control" id="recruitJobCategory1">
                                                    <option value="">:::직무대분류:::</option>
                                                    <c:forEach var="i" items="${jobCategory1}">
                                                        <option value="${i.jobCategory1Id}">${i.jobCategory1Name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="recruitJobCategory2">직무 소분류</label>
                                                <select class="form-control" id="recruitJobCategory2"
                                                        name="jobCategory2Id">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="recruitCompanyJobDetail">상세 직무</label>
                                                <input type="text" class="form-control" id="recruitCompanyJobDetail"
                                                       name="recruitCompanyJobDetail" placeholder="예) 자바개발자">
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div class="row">--%>
                                        <%--<div class="col-sm-12">--%>
                                            <%--<div class="form-group articles">--%>
                                                <%--<label for="recruitCompanyJobArticleContent">직무별 자기소개서 항목</label>--%>
                                                <%--<button type="button" class="btn btn-default btn-xs articleAddBtn"><i--%>
                                                        <%--class="fa fa-plus"></i> 항목 추가--%>
                                                <%--</button>--%>
                                                <%--<button type="button" class="btn btn-default btn-xs articleDelBtn"><i--%>
                                                        <%--class="fa fa-minus"></i> 항목 삭제--%>
                                                <%--</button>--%>
                                                <%--<div class="form-group article">--%>
                                                    <%--<input type="text" class="form-control" id="recruitCompanyJobArticleContent"--%>
                                                           <%--name="recruitCompanyJobArticleContent"--%>
                                                           <%--placeholder="예) 자신의 지원동기 및 입사후 포부를 기술해주세요">--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <hr>
                                </div>
                            </div>
                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div>
                    <!-- nav-tabs-custom -->
                </div>
                <!-- /.col -->
            </div>
            </form>
            <!-- /.row -->
            <!-- END CUSTOM TABS -->


        </section>
        <!-- /.Main content -->
    </div>
    <!-- /.content-wrapper -->

    <%@ include file="../include/main_footer.jsp" %>

    <!-- Control Sidebar -->
    <%@ include file="../include/control_sidebar.jsp" %>
    <!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->
<%@ include file="../include/footer.jsp" %>
<script>
    $(function () {
        // name 속성에 인덱스값 부여
        function renameForRecruitJobModelAttribute() {
            $(".recruitCompanyJob").each(function (index) {
                $(this).find("select[name=recruitCompanyJobState]").attr("name", "recruitCompanyJobs["+index+"].recruitCompanyJobState");
                $(this).find("select[name=recruitCompanyJobEdu]").attr("name", "recruitCompanyJobs["+index+"].recruitCompanyJobEdu");
                $(this).find("select[name=jobCategory2Id]").attr("name", "recruitCompanyJobs["+index+"].jobCategory2Id");
                $(this).find("input[name=recruitCompanyJobDetail]").attr("name", "recruitCompanyJobs["+index+"].recruitCompanyJobDetail");
            });
        }

        // 채용 등록 버튼 클릭시 유효성검사
        $(".recruitCreateBtn").on("click", function () {
            var companyName = $("#recruitCompanyName");
            var recruitName = $("#recruitName");
            var recruitBeginDate = $("#recruitCompanyBeginDate");
            var recruitEndDate = $("#recruitCompanyEndDate");
            var recruitJobState = $("#recruitCompanyJobState");
            var recruitJobEducation = $("#recruitCompanyJobEdu");
            var recruitJobCategory1 = $("#recruitJobCategory1");
            var recruitJobCategory2 = $("#recruitJobCategory2");
            var recruitJobDetail = $("#recruitCompanyJobDetail");
            var recruitJobArticle = $("#recruitCompanyJobArticleContent");
            var invalidText1 = $(".invalidText1");
            var invalidText2 = $(".invalidText2");

            if (companyName.val() === "") {
                invalidText1.text("기업명을 기재해주세요.");
                companyName.focus();
            } else if (recruitName.val() === "") {
                invalidText1.text("채용명을 기재해주세요.");
                recruitName.focus();
            } else if (recruitBeginDate.val() === "") {
                invalidText1.text("채용시작일을 선택해주세요.");
                recruitBeginDate.focus();
            } else if (recruitEndDate.val() === "") {
                invalidText1.text("채용마감일을 기재해주세요.");
                recruitEndDate.focus();
            } else if (recruitJobState.val() === "") {
                invalidText2.text("채용형태를 기재해주세요.");
                recruitJobState.focus();
            } else if (recruitJobEducation.val() === "") {
                invalidText2.text("채용학력을 기재해주세요.");
                recruitJobEducation.focus();
            } else if (recruitJobCategory1.val() === "") {
                invalidText2.text("직무 대분류를 선택해주세요.");
                recruitJobCategory1.focus();
            } else if (recruitJobCategory2.val() === "") {
                invalidText2.text("직무 소분류를 선택해주세요.");
                recruitJobCategory2.focus();
            } else if (recruitJobDetail.val() === "") {
                invalidText2.text("상세 직무를 기재해주세요.");
                recruitJobDetail.focus();
            } else {
                renameForRecruitJobModelAttribute();
                $("#recruitCreate").submit();
            }
        });

        // 채용직무 추가
        $(".jobAddBtn").on("click", function () {
            // 채용직무 div 복사 : 클릭이벤트까지 true
            var job = $(".recruitCompanyJob:first").clone(true);
            job
                .find(".add-article").remove().end() // 추가된 자소서항목 div 전부 삭제
                .find("#recruitCompanyJobState").val("").end()
                .find("#recruitCompanyJobEdu").val("").end()
                .find("#recruitJobCategory2").val("").end()
                .find("#recruitCompanyJobDetail").val("").end()
                .find("#recruitCompanyJobArticleContent").end()
                .addClass("job-add") // 채용직무 div 에 job-add 클래스 추가, 원본 삭제 방지를 위해
                //.attr("id", jobId)
                .appendTo("#recruitCompanyJobTab"); // 복사한 div 붙여넣기

        });

        // 채용직무 삭제
        $(".jobDelBtn").on("click", function () {
            // 채용직무 .job-add 클래스가 추가된 div 만 삭제되게 처리, 원본 삭제 방지
            $(".recruitCompanyJob:last").remove(".job-add");
        });

        // 자소서 항목 추가
        $(".articleAddBtn").on("click", function () {
            // 자소서 항목중 가장 마지막 요소를 변수에 저장
            var article = $(this).parent().find(".article").last();
            article
                .clone() // 요소를 복사
                .find("input:text").val("").end() // input 태그에 작성된 value 값 초기화
                .addClass("add-article") // 항목 div 에 article-add 클래스 추가, 원본 삭제 방지를 위해
                .appendTo($(this).parent()); // 자기자신의 부모 div 에 붙여넣기
        });

        // 자소서 항목 삭제
        $(".articleDelBtn").on("click", function () {
            var article = $(this).parent().find(".add-article").last();
            // 항목 .article-add 클래스가 추가된 div 만 삭제, 원본 삭제 방지
            article.remove(".add-article");
        });

        // 기업 업종 combo select box
        $("#recruitJobCategory1").on("change", function () {
            var jobCategory1Id = $(this).val(); // 업종 대분류 id
            var jobCategory2 = $(this).parents(".recruitCompanyJob").find("#recruitJobCategory2");
            $(this).parents(".recruitCompanyJob").find("#recruitJobCategory2 option").remove();
            $.ajax({
                type: "get",
                url: "${path}/recruit/job/category2/" + jobCategory1Id,
                success: function (data) {
                    for (var i in data) {
                        jobCategory2.append(
                            "<option value='" + data[i].jobCategory2Id + "'>" + data[i].jobCategory2Name + "</option>")
                    }
                }
            });
        });

        // 기업명 자동완성
        var companyNameList = new Array();
        <c:forEach items="${companies}" var="i">
            companyNameList.push("${i.companyName}");
        </c:forEach>

        $("#recruitCompanyName").autocomplete({
            source: companyNameList
        });



    });
</script>
</body>
</html>
