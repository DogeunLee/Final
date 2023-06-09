<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 재설정 페이지</title>

	<link rel="stylesheet"	href="${contextPath}/resources/css/common/outline.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/login/pwChange.css">
    
    <script src="https://kit.fontawesome.com/dc6e43e0ad.js" crossorigin="anonymous"></script>

    <!-- jQuery 라이브러리 추가(CDN) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>

<body>
    <div id="wrap">
    
    	<!-- header -->
		<jsp:include page="/WEB-INF/views/common/header.jsp" />
    	
        <main>
            <div>
                <span>비밀번호 재설정</span>

                <span>새로운 비밀번호를 기입해주세요!!</span>
                
                <input type="text" placeholder="비밀번호" id="userPw">
                <input type="text" placeholder="비밀번호 확인" id="userPwConfirm">
                <span id="pwMessage"></span>
                
                <!-- <button onclick="location.href='finshedchangePw'">비밀번호 변경</button> -->
                <button id=changPw>비밀번호 변경</button>
            </div>
        </main>
    </div>
    
    <!-- footer -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

    <script src="${contextPath}/resources/js/login/findPwEmail.js"></script>


</body>

</html>