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
                직무별 자기소개서 항목 등록 페이지
                <small></small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 관리자 페이지</a></li>
                <li class="active"> 자소서 항목등록</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-4">
                    <!-- Profile Image -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">채용 기업의 직무 정보</h3>
                        </div>
                        <div class="box-body">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <strong><i class="fa fa-edit margin-r-5"></i> 기업명</strong>
                                    <p class="text-muted">${recruitJob.recruitCompany.company.companyName}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 채용명</strong>
                                    <p class="text-muted">${recruitJob.recruitCompany.recruitName}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 채용학력</strong>
                                    <p class="text-muted">${recruitJob.recruitCompanyJobEdu}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 직무 대분류</strong>
                                    <p class="text-muted">${recruitJob.jobCategory2.jobCategory1.jobCategory1Name}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 직무 소분류</strong>
                                    <p class="text-muted">${recruitJob.jobCategory2.jobCategory2Name}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 상세직무</strong>
                                    <p class="text-muted">${recruitJob.recruitCompanyJobDetail}</p>
                                </li>
                            </ul>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                    <!-- Profile Image -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">채용 기업의 직무별 자소서 항목 리스트</h3>
                        </div>
                        <div class="box-body">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <c:forEach var="articles" items="${articles}" varStatus="i">
                                        <strong><i class="fa fa-edit margin-r-5"></i> ${i.index}번 항목</strong>
                                        <p class="text-muted">${articles.recruitCompanyJobArticleContent}</p>
                                    </c:forEach>
                                </li>
                            </ul>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>

                <div class="col-md-4">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">자기소개서 항목</h3>
                                </div>

                                <div class="box-body">
                                    <form id="articleCreate" action="${path}/recruit/${recruitJob.recruitCompanyJobId}/article/create" method="post">
                                        <div class="form-group articles">
                                            <label for="recruitCompanyJobArticleContent"><i class="fa fa-edit"></i> 직무별 자기소개서 편집하기</label>
                                            <button type="button" class="btn btn-warning btn-xs articleAddBtn">
                                                <i class="fa fa-plus"></i> 항목 추가
                                            </button>
                                            <button type="button" class="btn btn-danger btn-xs articleDelBtn">
                                                <i class="fa fa-minus"></i> 항목 삭제
                                            </button>
                                            <div class="form-group article">
                                                <input type="text" class="form-control"
                                                       id="recruitCompanyJobArticleContent"
                                                       name="recruitCompanyJobArticleContent"
                                                       placeholder="예) 자신의 지원동기 및 입사후 포부를 기술해주세요">
                                            </div>
                                        </div>
                                        <div class="form-group invalidText" style="color: red"></div>
                                    </form>
                                    <button type="button" class="btn btn-primary" id="articleSaveBtn"><i class="fa fa-save"></i> 저장</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
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

        $("#articleSaveBtn").on("click", function () {
            renameForArticleModelAttribute();
            $("#articleCreate").submit();

        });

        // name 속성에 인덱스값 부여
        function renameForArticleModelAttribute() {
            $(".article").each(function (index) {
                $(this).find("input[name=recruitCompanyJobArticleContent]").attr("name", "recruitCompanyJobArticles[" + index + "].recruitCompanyJobArticleContent");
            });
        }

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
    });
</script>
</body>
</html>
