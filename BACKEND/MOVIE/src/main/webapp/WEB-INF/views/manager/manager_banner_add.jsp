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
						<title>메인배너 등록</title>


						<!-- fontawesome -->
						<link rel="stylesheet"
							href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
							integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
							crossorigin="anonymous" referrerpolicy="no-referrer" />

						<!-- jQuery 라이브러리 추가(CDN) -->
						<script src="https://code.jquery.com/jquery-3.6.0.min.js"
							integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
							crossorigin="anonymous"></script>

						<link rel="stylesheet" href="${contextPath}/resources/css/manager/manager_banner_add.css">
						<link rel="stylesheet" href="${contextPath}/resources/css/manager/manager_inner_Header.css">
						<link rel="stylesheet" href="${contextPath}/resources/css/manager/reset.css">
					</head>

					<body class="dark light">
						<main>

							<div class="main_Wrapper">
								<div id="left_Nav_Container">
									<div class="nav_Title">로고영역</div>
									<jsp:include page="/WEB-INF/views/manager/manager_nav.jsp" />

								</div>

								<div class="right_items_Container">
									<jsp:include page="/WEB-INF/views/manager/manager_inner_Header.jsp" />

									<div id="items_Wrapper">
										<div class="set_Edge">
											<div class="table_Wrapper">
												<div class="table_Title">
													<span>메인배너 등록</span>
												</div>
												<div class="table_main">
													<div class="enter_Title">
														<input type="text" placeholder="제목을 입력하세요.">
													</div>
													<div class="addArea">
														<div id="bannerImg">
															<span>메인배너 이미지</span>
															<div class="play_start_container">
																<div>
																	<input type="file" class="movie_image1" name="file"
																		onchange="readURL(this);">
																</div>
															</div>
														</div>
													</div>
													<div id="showImg">
														<span>등록 할 이미지는 아래와 같습니다.</span>
														<img id="imgSize" src="#" />
													</div>
												</div>
												<div class="table_bottom">
													<button class="bottom_Submit">저장</button>
													<button class="bottom_Cancel">취소</button>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

						</main>

						<script src="${contextPath}/resources/js/manager/manager_banner_add.js"></script>
						<script src="${contextPath}/resources/js/manager/manager_inner_Header.js"></script>
						<script src="${contextPath}/resources/js/manager/manager_nav.js"></script>
					</body>

					</html>