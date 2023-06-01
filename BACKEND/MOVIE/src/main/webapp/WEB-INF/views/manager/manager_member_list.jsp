<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 -->

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 리스트</title>

    <link rel="stylesheet" href="../../css/managerPage/manager_member_list.css">
    <link rel="stylesheet" href="../../css/managerPage/reset.css">

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- jQuery 라이브러리 추가(CDN) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>


</head>

<body class="dark light">
    <main>

        <div class="main_Wrapper">
            <div id="left_Nav_Container">
                <div class="nav_Title">
                    로고영역
                </div>
                <!-- NAV 영역 -->
                <nav>
                    <ul class="nav_Slide">
                        <a class="title_move" href="#">
                            <li class="slide_Title">
                                <div class="slide_Left_Icon">
                                    <i class="fa-sharp fa-solid fa-house"></i>
                                </div>
                                <span>관리자 메인</span>
                            </li>
                        </a>
                        <a class="title_move" href="#">
                            <li class="slide_Title selected_Title">
                                <div class="slide_Left_Icon">
                                    <i class="fa-solid fa-user"></i>
                                </div>
                                <span>회원 리스트</span>
                            </li>
                        </a>
                        <li class="slide_Content">
                            <div class="slide_Wrapper">
                                <div class="slide_Left_Icon">
                                    <i class="fa-solid fa-headset"></i>
                                </div>
                                <span class="slide_Inner_Title">1 : 1 문의</span>
                                <div class="slide_Right_Icon">
                                    <i class="fa-solid fa-caret-down"></i>
                                </div>
                            </div>
                            <div class="slide_Down_items">
                                <ul>

                                    <a href="#">
                                        <li>
                                            <div class="inner_align">
                                                <div class="inner_Left_Icon">
                                                    <i class="fa-solid fa-play fa-2xs"></i>
                                                </div>
                                                <span>1 : 1 문의 목록</span>
                                            </div>
                                        </li>
                                    </a>
                                </ul>
                            </div>
                        </li>
                        <li class="slide_Content">
                            <div class="slide_Wrapper">
                                <div class="slide_Left_Icon">
                                    <i class="fa-brands fa-youtube"></i>
                                </div>
                                <span class="slide_Inner_Title">영화</span>
                                <div class="slide_Right_Icon">
                                    <i class="fa-solid fa-caret-down"></i>
                                </div>
                            </div>
                            <div class="slide_Down_items">
                                <ul>
                                    <a href="#">
                                        <li>
                                            <div class="inner_align">
                                                <div class="inner_Left_Icon">
                                                    <i class="fa-solid fa-play fa-2xs"></i>
                                                </div>
                                                <span>영화 목록</span>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <div class="inner_align">
                                                <div class="inner_Left_Icon">
                                                    <i class="fa-solid fa-play fa-2xs"></i>
                                                </div>
                                                <span>영화 등록</span>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <div class="inner_align">
                                                <div class="inner_Left_Icon">
                                                    <i class="fa-solid fa-play fa-2xs"></i>
                                                </div>
                                                <span>상영시간 목록</span>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <div class="inner_align">
                                                <div class="inner_Left_Icon">
                                                    <i class="fa-solid fa-play fa-2xs"></i>
                                                </div>
                                                <span>상영시간 등록</span>
                                            </div>
                                        </li>
                                    </a>
                                </ul>
                            </div>
                        </li>
                        <li class="slide_Content">
                            <div class="slide_Wrapper">
                                <div class="slide_Left_Icon">
                                    <i class="fa-sharp fa-regular fa-calendar"></i>
                                </div>
                                <span class="slide_Inner_Title">이벤트</span>
                                <div class="slide_Right_Icon">
                                    <i class="fa-solid fa-caret-down"></i>
                                </div>
                            </div>
                            <div class="slide_Down_items">
                                <ul>
                                    <a href="#">
                                        <li>
                                            <div class="inner_align">
                                                <div class="inner_Left_Icon">
                                                    <i class="fa-solid fa-play fa-2xs"></i>
                                                </div>
                                                <span>이벤트 목록</span>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <div class="inner_align">
                                                <div class="inner_Left_Icon">
                                                    <i class="fa-solid fa-play fa-2xs"></i>
                                                </div>
                                                <span>이벤트 등록</span>
                                            </div>
                                        </li>
                                    </a>
                                </ul>
                            </div>
                        </li>
                        <li class="slide_Content">
                            <div class="slide_Wrapper">
                                <div class="slide_Left_Icon">
                                    <i class="fa-sharp fa-solid fa-circle-exclamation"></i>
                                </div>
                                <span class="slide_Inner_Title">공지사항</span>
                                <div class="slide_Right_Icon">
                                    <i class="fa-solid fa-caret-down"></i>
                                </div>
                            </div>
                            <div class="slide_Down_items">
                                <ul>
                                    <a href="#">
                                        <li>
                                            <div class="inner_align">
                                                <div class="inner_Left_Icon">
                                                    <i class="fa-solid fa-play fa-2xs"></i>
                                                </div>
                                                <span>공지사항 목록</span>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <div class="inner_align">
                                                <div class="inner_Left_Icon">
                                                    <i class="fa-solid fa-play fa-2xs"></i>
                                                </div>
                                                <span>공지사항 등록</span>
                                            </div>
                                        </li>
                                    </a>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>

            </div>

            <div class="right_items_Container">
                <!-- 내부 HEADER 영역 -->
                <header>
                    <div id="header_Wrapper">
                        <div class="header_Container">
                            <div class="header_loge_Area">
                                <span>어서오세요!&nbsp;</span>
                                <span>${loginMember.userName}&nbsp;</span>
                                <span>님!</span>
                            </div>
                            <button class="header_logout_Area">
                                <div>로그아웃</div>
                            </button>
                        </div>
                    </div>
                </header>

                <div id="items_Wrapper">
                    <div class="set_Edge">
                        <div class="table_Wrapper">
                            <div class="table_Title">
                                <span>회원목록</span>
                                <div class="search_Box">
                                    <input placeholder="검색" />
                                    <button>
                                        <i class="fa-solid fa-magnifying-glass fa-2xs"></i>
                                    </button>
                                </div>
                            </div>
                            <table class="table_main">
                                <tr>
                                    <th>번호</th>
                                    <th>아이디</th>
                                    <th>이름</th>
                                    <th>닉네임</th>
                                    <th>연락처</th>
                                    <th>주소</th>
                                    <th>생년월일</th>
                                    <th>성별</th>
                                    <th>가입일</th>
                                    <th>탈퇴일</th>
                                    <th>탈퇴 여부</th>
                                    <th>보유 포인트</th>
                                    <th>SNS 가입</th>
                                    <th>관리자</th>
                                    <th>이용제한</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>남</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>-</td>
                                    <td>N</td>
                                    <td>1,000,000</td>
                                    <td>Y</td>
                                    <td>
                                        <select name="Is_Manager">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>남</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>2023.05.27 03:48:59</td>
                                    <td>Y</td>
                                    <td>0</td>
                                    <td>Y</td>
                                    <td>
                                        <select>
                                            <option selected>N</option>
                                            <option>Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>남</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>-</td>
                                    <td>N</td>
                                    <td>0</td>
                                    <td>N</td>
                                    <td>
                                        <select>
                                            <option selected>N</option>
                                            <option>Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>남</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>-</td>
                                    <td>N</td>
                                    <td>2,000</td>
                                    <td>N</td>
                                    <td>
                                        <select>
                                            <option selected>N</option>
                                            <option>Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>남</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>-</td>
                                    <td>N</td>
                                    <td>0</td>
                                    <td>N</td>
                                    <td>
                                        <select>
                                            <option selected>N</option>
                                            <option>Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>남</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>-</td>
                                    <td>N</td>
                                    <td>0</td>
                                    <td>N</td>
                                    <td>
                                        <select>
                                            <option selected>N</option>
                                            <option>Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>여</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>-</td>
                                    <td>N</td>
                                    <td>0</td>
                                    <td>N</td>
                                    <td>
                                        <select>
                                            <option selected>N</option>
                                            <option>Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>남</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>-</td>
                                    <td>N</td>
                                    <td>0</td>
                                    <td>N</td>
                                    <td>
                                        <select>
                                            <option selected>N</option>
                                            <option>Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>선택안함</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>-</td>
                                    <td>N</td>
                                    <td>0</td>
                                    <td>N</td>
                                    <td>
                                        <select>
                                            <option selected>N</option>
                                            <option>Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>cropruch@naver.com</td>
                                    <td>김민수</td>
                                    <td>Nickname</td>
                                    <td>01020823987</td>
                                    <td>경기도,성남시,수정구,위례순환로 111</td>
                                    <td>19940227</td>
                                    <td>남</td>
                                    <td>2023.05.27 03:32:32</td>
                                    <td>-</td>
                                    <td>N</td>
                                    <td>0</td>
                                    <td>N</td>
                                    <td>
                                        <select>
                                            <option selected>N</option>
                                            <option>Y</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="Is_Blocked">
                                            <option value="N" selected>N</option>
                                            <option value="Y">Y</option>
                                        </select>
                                    </td>
                                </tr>

                            </table>
                            <div class="page_Nation">
                                <div>&lt;</div>
                                <div class="selected_Cp">1</div>
                                <div>2</div>
                                <div>3</div>
                                <div>4</div>
                                <div>5</div>
                                <div>6</div>
                                <div>7</div>
                                <div>&gt;</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </main>


    <script src="../../js/managerPage/manager_member_list.js"></script>
</body>

</html>