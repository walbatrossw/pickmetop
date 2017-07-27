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
                                    <th>번호</th>
                                    <th>채용 형태</th>
                                    <th>채용 학력</th>
                                    <th>직무 대분류</th>
                                    <th>직무 소분류</th>
                                    <th>상세 직무</th>
                                    <th>자소서 항목</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="recruitJobs" items="${recruitJobs}" varStatus="i">
                                <tr>
                                    <td>${i.count}</td>
                                    <td>${recruitJobs.recruitCompanyJobState}</td>
                                    <td>${recruitJobs.recruitCompanyJobEdu}</td>
                                    <td>${recruitJobs.jobCategory2.jobCategory1.jobCategory1Name}</td>
                                    <td>${recruitJobs.jobCategory2.jobCategory2Name}</td>
                                    <td>${recruitJobs.recruitCompanyJobDetail}</td>
                                    <td><a class="btn btn-primary btn-xs" href="${path}/recruit/${recruitJobs.recruitCompanyJobId}/article/create" role="button">작성페이지</a></td>
                                    <td>
                                        <div class="row">
                                            <div class="articleAdd col-xs-2">
                                                <!-- articleAdd Modal Button-->
                                                <button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#articleAddModal${i.count}"><i class="fa fa-plus"></i> 등록</button>
                                                <!-- articleAdd Modal Button-->
                                                <!-- articleAdd Modal-->
                                                <div class="modal fade" id="articleAddModal${i.count}" tabindex="-1" role="dialog" aria-labelledby="articleAddModalLabel">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">

                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span></button>
                                                                <h4 class="modal-title" id="articleAddModalLabel"><i class="fa fa-edit"></i> 직무별 자기소개서 추가하기</h4>

                                                            </div>

                                                            <div class="modal-body">
                                                                <!--추가 삭제 버튼-->
                                                                <div class="form-group">
                                                                    <div class="btn-group">
                                                                        <button type="button" class="btn btn-default articleAddBtn">
                                                                            <i class="fa fa-plus"></i> 항목 추가
                                                                        </button>
                                                                        <button type="button" class="btn btn-default articleDelBtn">
                                                                            <i class="fa fa-minus"></i> 항목 삭제
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group warningText" style="color: red"></div>
                                                                <!--자소서 항목-->
                                                                <form id="articlesForm" action="${path}/recruit/${recruitJobs.recruitCompanyJobId}/article/create" method="post">
                                                                    <div class="form-group article">
                                                                        <label for="articleContent">항목</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control"
                                                                                   id="articleContent"
                                                                                   name="recruitCompanyJobArticleContent"
                                                                                   placeholder="예) 자신의 지원동기 및 입사후 포부를 기술해주세요">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>

                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">닫기</button>
                                                                <button type="button" class="btn btn-primary articlesSaveBtn"><i class="fa fa-save"></i> 저장</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /.articleAdd Modal -->
                                            </div>

                                            <div class="articleView col-xs-2">
                                                <!-- articleView Modal Button-->
                                                <button class="btn btn-primary btn-xs articleViewModalBtn" data-toggle="modal" data-target="#articleViewModal${i.count}"><i class="fa fa-plus"></i> 보기</button>
                                                <div>
                                                    <input type="hidden" id="recruitCompanyJobId" value="${recruitJobs.recruitCompanyJobId}">
                                                </div>
                                                <!-- /.articleView Modal Button-->
                                                <!-- articleView Modal-->
                                                <div class="modal fade" id="articleViewModal${i.count}" tabindex="-1" role="dialog" aria-labelledby="articleViewModalLabel">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">

                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span></button>
                                                                <h4 class="modal-title" id="articleViewModalLabel"><i class="fa fa-edit"></i> 직무별 자기소개서 보기</h4>

                                                            </div>

                                                            <div class="modal-body">

                                                                <ul class="list-group">

                                                                </ul>
                                                            </div>

                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default pull-right" data-dismiss="modal">닫기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /.articleView Modal -->
                                            </div>

                                            <div class="articleUpdate col-xs-2">
                                                <!-- articleUpdate Modal Button-->
                                                <button class="btn btn-primary btn-xs articleModalModalBtn" data-toggle="modal" data-target="#articleUpdateModal${i.count}"><i class="fa fa-plus"></i> 수정</button>
                                                <div>
                                                    <input type="hidden" id="JobIdForUpdate" value="${recruitJobs.recruitCompanyJobId}">
                                                </div>
                                                <!-- /.articleUpdate Modal Button-->
                                                <!-- articleUpdate Modal-->
                                                <div class="modal fade" id="articleUpdateModal${i.count}" tabindex="-1" role="dialog" aria-labelledby="articleUpdateModalLabel">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">

                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span></button>
                                                                <h4 class="modal-title" id="articleUpdateModalLabel"><i class="fa fa-edit"></i> 직무별 자기소개서 수정</h4>

                                                            </div>

                                                            <div class="modal-body">
                                                                <!--추가 삭제 버튼-->
                                                                <div class="form-group">
                                                                    <div class="btn-group">
                                                                        <button type="button" class="btn btn-default articleAddBtn">
                                                                            <i class="fa fa-plus"></i> 항목 추가
                                                                        </button>
                                                                        <button type="button" class="btn btn-default articleDelBtn">
                                                                            <i class="fa fa-minus"></i> 항목 삭제
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group warningText" style="color: red"></div>
                                                                <!--자소서 항목-->
                                                                <form id="articlesUpdateForm" action="${path}/recruit/${recruitJobs.recruitCompanyJobId}/article/update" method="post">

                                                                </form>
                                                            </div>

                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default pull-right" data-dismiss="modal">닫기</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- articleUpdate Modal -->
                                            </div>
                                        </div>
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
<script>
    $(function () {
        // 자소서 항목 저장 버튼 클릭시
        $(".articlesSaveBtn").on("click", function () {
            $(".warningText").empty(); // 알림 DIV 공백상태로 변환
            var articlesForm = $(this).parents(".modal-content").find("#articlesForm"); // 자소서항목 입력폼 탐색
            var lastArticle = articlesForm.find(".article:last").find("#articleContent"); // 마지막 자소서항목
            // 서버에 전송하기전 마지막 자소서 항목 공백 유효성 검사
            if (lastArticle.val() === "") {
                lastArticle.focus();
                $(".warningText").text("자소서 항목을 작성해주세요.");
            // 공백이 아닐경우 index 부여하고 서버로 전송
            } else {
                articlesForm.find(".article").each(function (index) {
                    $(this).find("input[name=recruitCompanyJobArticleContent]").attr("name", "recruitCompanyJobArticles[" + index + "].recruitCompanyJobArticleContent");
                    articlesForm.submit();
                });
            }
        });

        // 자소서 항목 추가 버튼 클릭시
        $(".articleAddBtn").on("click", function () {
            $(".warningText").empty(); // 알림 DIV 공백상태로 변환
            var article = $(this).parents(".modal-body").find(".article").last(); // 마지막 자소서 항목 탐색
            var articleVal = article.find("#articleContent").val(); // 마지막 자소서 항목의 value
            // 공백일 경우
            if( articleVal === "") {
                $(".warningText").text("자소서 항목을 작성해주세요.");
                article.focus();
            // 공백이 아닐경우 자소서 항목 추가
            } else {
                article
                    .clone() // 요소를 복사
                    .find("input:text").val("").end() // input 태그에 작성된 value 값 초기화
                    .addClass("add-article") // 항목 div 에 article-add 클래스 추가, 원본 삭제 방지를 위해
                    .appendTo(article.parent()); // 자기자신의 부모 div 에 붙여넣기
            }
        });

        // 자소서 항목 삭제 버튼 클릭시
        $(".articleDelBtn").on("click", function () {
            var article = $(this).parents(".modal-body").find(".add-article").last();
            // 항목 .article-add 클래스가 추가된 div 만 삭제, 원본 삭제 방지
            article.remove(".add-article");
        });

        $(".articleViewModalBtn").on("click", function () {
            var jobId = $(this).parent().find("#recruitCompanyJobId").val();
            var articles = $(this).parent().find(".list-group");
            articles.find(".list-group-item").remove();
            $.ajax({
                type:"get",
                url: "${path}/recruit/"+jobId+"/articles",
                success: function (data) {
                    for (var i in data) {
                        articles.append(
                            "<li class='list-group-item'>" +
                                "<p>" + data[i].recruitCompanyJobArticleContent + "</p>" +
                            "</li>"

                        )
                    }
                }
            });
        });

        $(".articleModalModalBtn").on("click", function () {
            var jobId = $(this).parent().find("#JobIdForUpdate").val();
            var articles = $(this).parent().find("#articlesUpdateForm");
            articles.find(".article").remove();
            $.ajax({
                type:"get",
                url: "${path}/recruit/"+jobId+"/articles",
                success: function (data) {
                    for (var i in data) {
                        articles.append(
                            "<div class='form-group article add-article'>" +
                                "<label for='articleContent'>항목</label>" +
                                "<div class='form-group'>" +
                                    "<input type='text' class='form-control' id='articleContent' name='recruitCompanyJobArticleContent' value='"+data[i].recruitCompanyJobArticleContent+"'>" +
                                "</div>" +
                            "</div>"
                        )
                    }
                }
            });
        });

    });
</script>
</body>
</html>
