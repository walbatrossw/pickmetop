<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../../include/header.jsp" %>
</head>
<body class="fixed skin-blue-light sidebar-mini">
<div class="wrapper">

    <%@ include file="../../include/main_header.jsp" %>

    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="../../include/main_sidebar.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                상세 기업 정보
                <small>${company.companyName} 기업정보 및 채용내역</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 기업정보</a></li>
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
                            <h3 class="box-title">기업 정보</h3>
                        </div>
                        <div class="box-body">
                            <img class="profile-user-img img-responsive" src="/dist/img/user4-128x128.jpg" alt="User profile picture">
                            <h3 class="profile-username text-center">기업로고</h3>
                            <ul class="list-group list-group-unbordered">
                                <li class="list-group-item">
                                    <strong><i class="fa fa-edit margin-r-5"></i> 기업명</strong>
                                    <p class="text-muted">${company.companyName}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 업종 대분류</strong>
                                    <p class="text-muted">${company.industryCategory2.industryCategory1.industryCategory1Name}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-table margin-r-5"></i> 업종 소분류</strong>
                                    <p class="text-muted">${company.industryCategory2.industryCategory2Name}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-building-o margin-r-5"></i> 기업형태</strong>
                                    <p class="text-muted">${company.companyType}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-calendar margin-r-5"></i> 설립일자</strong>
                                    <p class="text-muted"><fmt:formatDate value="${company.companyBirthDate}" pattern="yyyy-MM-dd"/></p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-user margin-r-5"></i> 대표이사</strong>
                                    <p class="text-muted">${company.companyCeo}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-home margin-r-5"></i> 공식홈페이지</strong>
                                    <p class="text-muted"><a href="${company.companyHomepage}">${company.companyHomepage}</a></p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-phone margin-r-5"></i> 대표번호</strong>
                                    <p class="text-muted">${company.companyPhone}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-map-marker margin-r-5"></i> 본사주소</strong>
                                    <p class="text-muted">${company.companyAddress}</p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-krw margin-r-5"></i> 매출액 (단위: 백만원)</strong>
                                    <p class="text-muted"><fmt:formatNumber value="${company.companyTotalsales}" type="number"/> </p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-calendar-plus-o margin-r-5"></i> 기업정보 작성일자</strong>
                                    <p class="text-muted"><fmt:formatDate value="${company.companyCreateDate}" pattern="yyyy-MM-dd a HH:mm:ss"/> </p>
                                </li>
                                <li class="list-group-item">
                                    <strong><i class="fa fa-calendar-check-o margin-r-5"></i> 기업정보 수정일자</strong>
                                    <p class="text-muted"><fmt:formatDate value="${company.companyUpdateDate}" pattern="yyyy-MM-dd a HH:mm:ss"/> </p>
                                </li>
                            </ul>
                            <button class="btn btn-primary pull-left" data-toggle="modal" data-target="#companyInfoUpdateModal"> 수정</button>
                            <button class="btn btn-primary pull-right" data-toggle="modal" data-target="#myInfoUpdateModal"> 삭제</button>
                        </div>
                        <!-- /.box-body -->

                        <div class="modal fade" id="companyInfoUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myInfoModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myInfoModalLabel">기업 정보 수정</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form role="form" id="companyInfoUpdate" method="post" action="/company/info/${company.companyId}/update">
                                            <input type="hidden" name="_method" value="put">
                                            <!-- text input -->
                                            <div class="form-group">
                                                <label for="companyName">기업명</label>
                                                <input type="text" class="form-control" id="companyName" name="companyName" value="${company.companyName}" placeholder="예) 삼성전자">
                                            </div>
                                            <div class="form-group">
                                                <label for="industryCategory1">업종 대분류</label>
                                                <select class="form-control" id="industryCategory1">
                                                    <c:forEach var="i" items="${industryCategory1}">
                                                        <option value="${i.industryCategory1Id}">${i.industryCategory1Name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="industryCategory2">업종 소분류</label>
                                                <select class="form-control" id="industryCategory2" name="industryCategory2Id">
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="companyType">기업형태</label>
                                                <select class="form-control" id="companyType" name="companyType">
                                                    <option value="">::::선택::::</option>
                                                    <option value="대기업">대기업</option>
                                                    <option value="중견기업">중견기업</option>
                                                    <option value="중소기업">중소기업</option>
                                                    <option value="외국계">외국계</option>
                                                    <option value="스타트업">스타트업</option>
                                                    <option value="공공기관">공공기관</option>
                                                    <option value="공기업">공기업</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="companyBirthDate">설립일자</label>
                                                <input type="date" class="form-control" id="companyBirthDate" name="companyBirthDate" value="${company.companyBirthDate}">
                                            </div>
                                            <div class="form-group">
                                                <label>대표이사</label>
                                                <input type="text" class="form-control" name="companyCeo" id="companyCeo" value="${company.companyCeo}" placeholder="이름을 입력해주세요">
                                            </div>
                                            <div class="form-group">
                                                <label for="companyHomepage">공식홈페이지</label>
                                                <input type="text" class="form-control" id="companyHomepage" name="companyHomepage" value="${company.companyHomepage}" placeholder="예) http://www.abc.com">
                                            </div>
                                            <div class="form-group">
                                                <label for="companyPhone">대표번호</label>
                                                <input type="text" class="form-control" id="companyPhone" name="companyPhone" value="${company.companyPhone}" placeholder="예) 02-1234-5678">
                                            </div>
                                            <div class="form-group">
                                                <label for="companyAddress">본사주소</label>
                                                <input type="text" class="form-control" id="companyAddress" name="companyAddress" value="${company.companyAddress}" placeholder="예) 서울시 강남구 XXX번지 ">
                                            </div>
                                            <div class="form-group">
                                                <label for="companyTotalsales">매출액 (단위: 백만원)</label>
                                                <input type="number" class="form-control" id="companyTotalsales" value="${company.companyTotalsales}" name="companyTotalsales" min="1">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <%--<c:if test="${msg == 'failure'}">--%>
                                        <div class="form-group" id="invalidText" style="color: red">

                                        </div>
                                        <%--</c:if>--%>
                                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">닫기</button>
                                        <button type="button" class="btn btn-primary" id="companyInfoUpdateBtn">저장하기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.myInfo Modal -->

                    </div>
                    <!-- /.box -->
                </div>
                <!-- ./col -->
                <div class="col-md-9">
                    <div class="col-lg-2 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-aqua">
                            <div class="inner">
                                <h3>10</h3>
                                <p>진행중인 채용</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-user-plus"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-2 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-green">
                            <div class="inner">
                                <h3>30</h3>
                                <p>마감된 채용</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-user-times"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-2 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                <h3>44</h3>
                                <p>기업리뷰</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-2 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-red">
                            <div class="inner">
                                <h3>65</h3>
                                <p>연봉정보</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-2 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-red">
                            <div class="inner">
                                <h3>65</h3>
                                <p>면접후기</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-2 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-red">
                            <div class="inner">
                                <h3>65</h3>
                                <p>면접후기</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
                <div class="col-md-9">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#companyReview" data-toggle="tab">기업리뷰</a></li>
                            <li><a href="#companySalaries" data-toggle="tab">연봉정보</a></li>
                            <li><a href="#companyInterviews" data-toggle="tab">면접후기</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="active tab-pane" id="companyReview">
                                기업리뷰 리스트
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="companySalaries">
                                연봉정보 리스트
                            </div>
                            <!-- /.tab-pane -->
                            <div class="tab-pane" id="companyInterviews">
                                면접후기 리스트
                            </div>
                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div>
                    <!-- /.nav-tabs-custom -->
                </div>
            </div>
            <!-- /.row (main row) -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <%@ include file="../../include/main_footer.jsp" %>

    <!-- Control Sidebar -->
    <%@ include file="../../include/control_sidebar.jsp" %>
    <!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->
<%@ include file="../../include/footer.jsp" %>
<script>
    $(function () {

        // 기업형태
        $("#companyType").val("${company.companyType}").attr("selected", "selected");
        // 업종분류1(DB)
        var ct1Id = ${company.industryCategory2.industryCategory1.industryCategory1Id};
        // 업종분류2(DB)
        var ct2Id = ${company.industryCategory2Id};
        // 업종분류 1 출력
        $("#industryCategory1").val(ct1Id).attr("selected", "selected");
        // 업종분류2 출력
        if ($("#industryCategory1").val() !== null) {
            ct2Ajax(ct1Id);
            $("#industryCategory2").val(ct2Id).attr("selected", "selected");
        }
        // 업종분류1이 변경되면 업종분류2도 같이 변경
        $("#industryCategory1").change(function () {
            $("#industryCategory2 option").remove();
            var ct1IdChg = $("#industryCategory1").val();
            ct2Ajax(ct1IdChg);
        });
        // 업종분류2 SELECTBOX
        function ct2Ajax(param) {
            $.ajax({
                type: "get",
                url: "${path}/company/info/industry/category2/" + param,
                success: function (data) {
                    for (var i in data) {
                        $("#industryCategory2").append(
                            "<option value='" + data[i].industryCategory2Id + "'>" + data[i].industryCategory2Name + "</option>")
                    }
                }
            });
        }
        // 유효성 검사
        $("#companyInfoUpdateBtn").on("click", function () {
            // 기업등록 버튼 클릭시 유효성검사
            var companyName = $("#companyName");
            var industryCategory1 = $("#industryCategory1");
            var companyType = $("#companyType");
            var companyBirthDate = $("#companyBirthDate");
            var companyCeo = $("#companyCeo");
            var companyHomepage = $("#companyHomepage");
            var companyPhone = $("#companyPhone");
            var companyAddress = $("#companyAddress");
            var companyTotalsales = $("#companyTotalsales");
            var invalidText = $("#invalidText");

            if (companyName.val() === "") {
                invalidText.text("기업명을 기재해주세요.");
                companyName.focus();
            } else if ( industryCategory1.val() === "" ) {
                invalidText.text("업종을 선택해주세요.");
                industryCategory1.focus();
            } else if ( companyType.val() === "" ) {
                invalidText.text("기업 규모를 선택해주세요.");
                companyType.focus();
            } else if ( companyBirthDate.val() === "" ) {
                invalidText.text("설립입을 기재해주세요.");
                companyBirthDate.focus();
            } else if ( companyCeo.val() === "" ) {
                invalidText.text("대표이사를 기재해주세요.");
                companyCeo.focus();
            } else if ( companyHomepage.val() === "" ) {
                invalidText.text("기업홈페이지를 기재해주세요.");
                companyHomepage.focus();
            } else if ( companyPhone.val() === "" ) {
                invalidText.text("기업 대표번호를 기재해주세요.");
                companyPhone.focus();
            } else if ( companyAddress.val() === "" ) {
                invalidText.text("기업 본사주소를 기재해주세요.");
                companyAddress.focus();
            } else if ( companyTotalsales.val() === "" || isNaN(companyTotalsales.val()) ) {
                invalidText.text("매출액을 숫자로 기재해주세요.");
                companyTotalsales.focus();
            } else {
                $("#companyInfoUpdate").submit();
            }
        });
    })
</script>
</body>
</html>