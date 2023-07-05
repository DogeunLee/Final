<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ page session="false" %>

                    <!DOCTYPE html>
                    <html lang="ko">

                    <head>
                        <meta charset="UTF-8">
                        <meta http-equiv="X-UA-Compatible" content="IE=edge">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title>스토어 물품 목록</title>

                        <link rel="stylesheet" href="${contextPath}/resources/css/manager/manager_store_buylist.css">
                        <link rel="stylesheet" href="${contextPath}/resources/css/manager/manager_inner_Header.css">
                        <link rel="stylesheet" href="${contextPath}/resources/css/manager/manager_nav.css">
                        <link rel="stylesheet" href="${contextPath}/resources/css/manager/reset.css">

                        <!-- fontawesome -->
                        <link rel="stylesheet"
                            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
                            integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
                            crossorigin="anonymous" referrerpolicy="no-referrer" />

                        <!-- jQuery 라이브러리 추가(CDN) -->
                        <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
                            crossorigin="anonymous"></script>
                    </head>

                    <body>
                        <main>

                            <div class="main_Wrapper">
                                <div id="left_Nav_Container">
                                    <jsp:include page="/WEB-INF/views/manager/manager_nav.jsp" />
                                </div>

                                <div class="right_items_Container">
                                    <jsp:include page="/WEB-INF/views/manager/manager_inner_Header.jsp" />

                                    <div id="items_Wrapper">
                                        <div class="set_Edge">
                                            <div class="table_Wrapper">
                                                <div class="table_Title">
                                                    <span>스토어 물품 목록</span>
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
                                                        <th>구매번호</th>
                                                        <th>개수</th>
                                                        <th>가격</th>
                                                        <th>구매시간</th>
                                                        <th>구매상태</th>
                                                        <th>취소시간</th>
                                                        <th>이메일</th>
                                                        <th>이름</th>
                                                        <th>상품이름</th>

                                                    </tr>
                                                    <c:forEach var="storeOrder"
                                                        items="${storebuyMap['storeOrderList']}">
                                                        <tr>
                                                            <td class="sorderNo">${storeOrder['sorderNo']}</td>
                                                            <td class="orderDetailNo">${storeOrder['orderDetailNo']}
                                                            </td>
                                                            <td>
                                                                ${storeOrder['orderCount']}
                                                            </td>
                                                            <td>${storeOrder['orderPrice']}</td>
                                                            <td>${storeOrder['orderDate']}</td>
                                                            <c:choose>
                                                                <c:when test="${storeOrder['orderSt'] == 'Y'}">
                                                                    <td><select class="Is_Show"
                                                                            data-id="${storeOrder['sorderNo']}">
                                                                            <option value="N">N</option>
                                                                            <option value="Y" selected>Y</option>
                                                                        </select></td>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <td><select class="Is_Show"
                                                                            data-id="${storeOrder['sorderNo']}">
                                                                            <option value="N" selected>N</option>
                                                                            <option value="Y">Y</option>
                                                                        </select></td>
                                                                </c:otherwise>
                                                            </c:choose>

                                                            <td>${storeOrder['orderDelete']}</td>
                                                            <td>${storeOrder['userEmail']}</td>
                                                            <td>${storeOrder['userName']}</td>
                                                            <td>${storeOrder['storeName']}</td>



                                                            <td><a href="${contextPath}/manager/store_list/edit/${store['storeNo']}"
                                                                    class="editEvent"><i
                                                                        class="fa-sharp fa-solid fa-pen-to-square"></i></a>
                                                            </td>
                                                            <td>

                                                                <button class="cancelPay"
                                                                    data-sorderNo="${storeOrder['sorderNo']}">환불하기</button>

                                                            </td>

                                                        </tr>
                                                    </c:forEach>
                                                </table>
                                                <div class="page_Nation">
                                                    <c:set var="url" value="?cp=" />
                                                    <c:set var="pagination" value="${storeMap['pagination']}" />
                                                    <c:set var="currentPage" value="${pagination.currentPage}"
                                                        scope="request" />
                                                    <div>
                                                        <a href="${url}1">&lt;&lt;</a>
                                                    </div>
                                                    <div>
                                                        <a href="${url}${pagination.prevPage}">&lt;</a>
                                                    </div>
                                                    <c:forEach var="i" begin="${pagination.startPage}"
                                                        end="${pagination.endPage}" step="1">
                                                        <c:choose>
                                                            <c:when test="${i == currentPage}">
                                                                <div>
                                                                    <a class="selected_Cp">${i}</a>
                                                                </div>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div>
                                                                    <a href="${url}${i}">${i}</a>
                                                                </div>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>
                                                    <div>
                                                        <a href="${url}${pagination.nextPage}">&gt;</a>
                                                    </div>
                                                    <div>
                                                        <a href="${url}${pagination.maxPage}">&gt;&gt;</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </main>

                        <script src="${contextPath}/resources/js/manager/manager_store_buylist.js"></script>
                        <script src="${contextPath}/resources/js/manager/manager_inner_Header.js"></script>
                        <script src="${contextPath}/resources/js/manager/manager_nav.js"></script>
                    </body>

                    </html>