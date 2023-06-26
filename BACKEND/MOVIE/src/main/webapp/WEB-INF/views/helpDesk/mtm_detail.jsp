<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 -->

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지 세부</title>

<script src="https://kit.fontawesome.com/dc6e43e0ad.js"
	crossorigin="anonymous"></script>

<!-- jQuery 라이브러리 추가(CDN) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

<script src="/ckeditor5/build/ckeditor.js"></script>

<link rel="stylesheet"
	href="${contextPath}/resources/css/common/outline.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/helpDesk/mtm_detail.css">
<link rel="stylesheet"
	href="${contextPath}/resources/css/common/notice_Aside.css">



</head>

<body>
	<div id="wrap">
		<jsp:include page="/WEB-INF/views/common/header.jsp" />

		<main>
			<section>

				<jsp:include page="/WEB-INF/views/common/noticeAside.jsp" />

				<div class="container">

					<div class="content-wrap">

						<h2>1:1 문의</h2>



						<div class="notice-contents">
							<div>
								<span>${mTmdetail.mtmTitle}</span>
							</div>
							<div>
								<span><span>${mTmdetail.mtmWriter}</span> <span>|</span>
									<span>${mTmdetail.mtmRegdate} </span></span>
							</div>
							<div class="contentText-wrap">${mTmdetail.mtmContent}</div>
						</div>
					</div>

					<c:if test="${mTmdetail.mtmRepSt == 'Y'}">

						<div class="reply">
							<div class="reply-info">
								<p>${mTmdetail.mtmWriter}님답변드립니다.</p>
								<span class="reply-writer-info"><span>${mTmdetail.mtmRepWriter}</span><span>|</span><span>${mTmdetail.mtmRepDate}</span></span>
							</div>
							<div>
								<div class="reply-content">${mTmdetail.mtmRepContent}</div>
							</div>
						</div>

						<c:if
							test="${loginUser.userNo != null && loginUser.userManagerSt == 'Y'}">
							<button class="reply_delete" data-mtmno="${mTmdetail.mtmNo}"
								id="reply_deleteBtn">
								<a>답변 삭제하기</a>
							</button>
						</c:if>
					</c:if>

					<c:if
						test="${loginUser.userNo != null && loginUser.userManagerSt == 'Y' && mTmdetail.mtmRepSt == 'N'}">

						<div class="reply_wrap btn_wraper">
							<textarea id="contentTextarea"></textarea>
							<button data-mtmno="${mTmdetail.mtmNo}" id="reply_writeBtn">
								<a>등록하기</a>
							</button>
						</div>

					</c:if>

					<div class="btn_wraper">
						<c:if
							test="${not empty loginUser.userNo and loginUser.userManagerSt == 'Y' or loginUser.userNo == mTmdetail.userNo}">


							<button id="deleteMtm" data-mtmno="${mTmdetail.mtmNo}">
							<input type="hidden" id="cp" value="${cp}">
								<a>삭제</a>
							</button>

						</c:if>

						<button class="goback">
							<a href="${contextPath}/helpDesk/mTm_List?cp=${param.cp}">목록으로</a>
						</button>

					</div>
				</div>

			</section>
		</main>

	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />


	<script src="${contextPath}/resources/js/helpDesk/mTm.js"></script>
</body>

</html>