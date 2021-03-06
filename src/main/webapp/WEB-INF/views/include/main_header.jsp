<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="main-header">

    <!-- Logo -->
    <a href="/main" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>!</b>Me</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>P!ck</b> Me</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">

        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <!-- Administer button-->
        <c:if test="${sessionScope.adminId != null}">
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
            <ul class="nav navbar-nav">
                <li>
                    <a>관리자권한으로 접속중입니다...</a>
                </li>
            </ul>
        </div>
        </c:if>


        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <c:choose>
                    <c:when test="${sessionScope.adminName != null}">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">2개의 메시지</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <!-- start message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/dist/img/user2-160x160.jpg" class="img-circle"
                                                         alt="User Image">
                                                </div>
                                                <h4>
                                                    XXXX 회원 메시지
                                                    <small><i class="fa fa-clock-o"></i> 5 분전</small>
                                                </h4>
                                                <p>문의사항입니다....</p>
                                            </a>
                                        </li>
                                        <!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/dist/img/user3-128x128.jpg" class="img-circle"
                                                         alt="User Image">
                                                </div>
                                                <h4>
                                                    XXXX 관리자 메시지
                                                    <small><i class="fa fa-clock-o"></i> 1 시간전</small>
                                                </h4>
                                                <p>XXX 회원으로부터의 요청이...</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">모든 메시지 보기</a></li>
                            </ul>
                        </li>

                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="label label-warning">35</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">35개의 알람이 있습니다.</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users text-aqua"></i> 삭제요청 15개
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-warning text-yellow"></i> 승인요청 20개
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">모두 보기</a></li>
                            </ul>
                        </li>

                        <!-- Tasks: style can be found in dropdown.less -->
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-flag-o"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">나의 업무</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <!-- Task item -->
                                        <li>
                                            <a href="#">
                                                <h3>
                                                    금일 채용 입력하기
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%"
                                                         role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                         aria-valuemax="100">
                                                        <span class="sr-only">20% 완료</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <!-- end task item -->
                                        <!-- Task item -->
                                        <li>
                                            <a href="#">
                                                <h3>
                                                    채용변경사항 수정하기
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 40%"
                                                         role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                         aria-valuemax="100">
                                                        <span class="sr-only">40% 완료</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">나의 할일 모두보기</a>
                                </li>
                            </ul>
                        </li>

                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                <span class="hidden-xs">${sessionScope.adminName}</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                    <p>
                                            ${sessionScope.adminName}
                                        <small>수정요망</small>
                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <li class="user-body">
                                    <div class="row">
                                        <div class="col-xs-4 text-center">
                                            <a href="#">채용입력</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">기업정보</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">게시판</a>
                                        </div>
                                    </div>
                                    <!-- /.row -->
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="${path}/admin/view?id=${sessionScope.adminId}"
                                           class="btn btn-default btn-flat">내 프로필</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="${path}/admin/logout" class="btn btn-default btn-flat">로그아웃</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </c:when>
                    <c:when test="${sessionScope.userName != null}">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">2개의 메시지</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <!-- start message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/dist/img/user2-160x160.jpg" class="img-circle"
                                                         alt="User Image">
                                                </div>
                                                <h4>
                                                    P!ck Me 운영진
                                                    <small><i class="fa fa-clock-o"></i> 5 분전</small>
                                                </h4>
                                                <p>문의사항 답변입니다.</p>
                                            </a>
                                        </li>
                                        <!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/dist/img/user3-128x128.jpg" class="img-circle"
                                                         alt="User Image">
                                                </div>
                                                <h4>
                                                    게시글 답변
                                                    <small><i class="fa fa-clock-o"></i> 1 시간전</small>
                                                </h4>
                                                <p>자기소개서는 다쓰셨나요???</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">모든 메시지 보기</a></li>
                            </ul>
                        </li>

                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="label label-warning">2</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">2개의 알람이 있습니다.</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users text-aqua"></i> 자소서 마감임박 3개
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-warning text-yellow"></i> 관심채용 마감임박 3개
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">모두 보기</a></li>
                            </ul>
                        </li>

                        <!-- Tasks: style can be found in dropdown.less -->
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-flag-o"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">나의 할일</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <!-- Task item -->
                                        <li>
                                            <a href="#">
                                                <h3>
                                                    자바 공부하기
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%"
                                                         role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                         aria-valuemax="100">
                                                        <span class="sr-only">20% 완료</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <!-- end task item -->
                                        <!-- Task item -->
                                        <li>
                                            <a href="#">
                                                <h3>
                                                    자바 스크립트 공부하기
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 40%"
                                                         role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                         aria-valuemax="100">
                                                        <span class="sr-only">40% 완료</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">나의 할일 모두보기</a>
                                </li>
                            </ul>
                        </li>

                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                <span class="hidden-xs">${sessionScope.userName}</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                    <p>
                                            ${sessionScope.userId}
                                        <small>수정요망</small>
                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <li class="user-body">
                                    <div class="row">
                                        <div class="col-xs-4 text-center">
                                            <a href="#">관심채용</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">이력서</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">자소서</a>
                                        </div>
                                    </div>
                                    <!-- /.row -->
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="${path}/user/view?userId=${sessionScope.userId}"
                                           class="btn btn-default btn-flat">내 프로필</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="${path}/user/logout" class="btn btn-default btn-flat">로그아웃</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="/dist/img/default-user-image.jpg" class="user-image" alt="User Image">
                                <span class="hidden-xs">회원가입 또는 로그인</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- Menu Header : User image -->
                                <li class="user-header">
                                    <img src="/dist/img/default-user-image.jpg" class="img-circle" alt="User Image">
                                    <p>
                                        <b>회원가입 또는 로그인해주세요</b>
                                        <small></small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="${path}/user/register" class="btn btn-default btn-flat"><i
                                                class="fa fa-user-plus"></i><b> 회원가입</b></a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="${path}/user/login" class="btn btn-default btn-flat"><i
                                                class="fa fa-sign-in"></i><b> 로그인</b></a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </c:otherwise>
                </c:choose>
                <!-- Control Sidebar Toggle Button -->
                <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li>
            </ul>
        </div>
    </nav>
</header>