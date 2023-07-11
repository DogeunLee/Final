## Project Channel_KGV


<p align="center"><img src="/img/kgv2.png" /></p>

## Team Channel KGV WEB
  KH정보교육원 자바개발 A10 3조 Team Channel_KGV<br>
  조장 - 김민수, 팀원 - 이도근, 김윤석, 권지훈, 최영탁, 정지민
  개발기간 : 2023.05.15 ~ 2023.07.10

## 배포주소
 [ kgv.co.kr / 웹 주소 ](https://kgv.co.kr)<br>
 [ gitHub / 깃허브 주소 ](https://github.com/MSKY219/FINAL_PROJECT)


## KGV소개

 국비지원 파이널 프로젝트로 영화관 예매 사이트를 제작하였습니다.<br>
 영화예매와, 영화리뷰, 마이페이지와<br> 고객센터를 통한 1:1 소통이 가능하도록 제작하였습니다.
 - HTML, CSS, JS와 Java, oracle 기반으로 제작하였으며 AWS EC2, RD5 를 적용하였습니다.
 - 보안을 위하여 xss, HTTPS를 적용하였으며 강제적 접근을 막기 위한 기능을 추가하였습니다.

## 사용기술 및개발환경 

 프론트엔드<br>
  <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">    <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">   <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">

 백앤드<br>
    <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">     

 프레임워크<br>
 <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white">  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">

 DB<br>
 <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">

 WAS<br>
 <img src="https://img.shields.io/badge/amazonaws-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white">  <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">

Collaboration<br>
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">

## 본인이 참여한 주요 기능
<h3>1. 전반적인 html작성과 css, 웹디자인</h3>

  - 헤더, 풋터, 메인, 영화 탭 전체
  - 상영관 탭 전체
  - 고객센터 홈/공지/1:1문의/자주 찾는 질문/분실물
  - 아이디 찾기, 비밀번호 찾기, 에러페이지 등 </h3>

<h3>2. 소셜 로그인 구현, 별점/리뷰 구현</h3>

 - 네이버, 카카오 로그인/가입(DB삽입) 구현
 - 영화상세페이지의 리뷰 JS구현, 삽입,삭제 구현
 - 리뷰 리스트 호출 시 ajax를 활용하여 5개씩 호출 + 무한스크롤기능 구현

<h4>3. Swiper.js를 통한 슬라이드 구현 </h4>

 - 메인페이지를 포함한 swiper.js가 필요한 모든 페이지를 구현

<h4>4. 검색기능 구현</h4>

 - 영화검색, 고객센터 전체 검색기능 구현

<h4>5. 고객센터 기능 구현</h4>

 - 고객센터 홈
 - 공지사항 검색과 리스트 출력
 - 1:1문의 게시판의 삽입,삭제,수정,검색 + 접근제한 기능 구현 / 답글기능 구현
 - 자주찾는질문 비동기통신과 검색기능 구현
 - 분실물 게시판의 삽입,삭제,수정,검색 + 접근제한 기능 구현 / 답글기능 구현

<h4>6. 올바르지 못한 접근에 대한 접근제한 구현</h4>

 - 주소표시줄에 강제값을 입력하여 접근 차단 기능 구현
 - 이벤트 핸들러를 이용한 세션, 잘못된접근 차단 기능 구현
```
  @ExceptionHandler(MissingRequestHeaderException.class)
	    public ModelAndView handleMissingRequestHeaderException(MissingRequestHeaderException ex, HttpServletRequest request) {
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("exception", ex);
	        modelAndView.addObject("url", request.getRequestURL());
	        modelAndView.setViewName("/helpDesk/error"); 
	        return modelAndView;
	    }
	  
	  @ExceptionHandler(NullPointerException.class)
	  public ModelAndView handleNullPointerException(NullPointerException ex, HttpServletRequest request) {
	      ModelAndView modelAndView = new ModelAndView();
	      modelAndView.addObject("exception", ex);
	      modelAndView.addObject("url", request.getRequestURL());
	      modelAndView.setViewName("/helpDesk/error");  
	      return modelAndView;
	  }
	  
	  @ExceptionHandler(HttpSessionRequiredException.class)
	    public ModelAndView handleHttpSessionRequiredException(HttpSessionRequiredException ex, HttpServletRequest request) {
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("exception", ex);
	        modelAndView.addObject("url", request.getRequestURL());
	        modelAndView.setViewName("/helpDesk/error");  
	        return modelAndView;
	
	  }
```

<h4>7. 네이버 XSS escapeXML 데이터 정제 </h4>

 - XSS 기능으로 인한 텍스트 정제기능 구현

<h4>8. AWS ec2, rds, route53 설정협업과 도메인 설정 </h4>

 - 배포를 위한 ec2 설정 - 참여자 : [ 김민수(팀장) GITHUB ](https://github.com/MSKY219), [ 김윤석 GITHUB ](https://github.com/rjrjsktl)
 - DB재설정을 위한 RDS 설정  - 참여자 : [ 김민수(팀장) GITHUB ](https://github.com/MSKY219), [ 김윤석 GITHUB ](https://github.com/rjrjsktl)
 - HTTPS 설정을 위한 ROUTE53 설정 - 참여자 : [ 김민수(팀장) GITHUB ](https://github.com/MSKY219)
 - 도메인 설정 - 참여자 : [ 김민수(팀장) GITHUB ](https://github.com/MSKY219)

## 프로젝트 진행 중 어려웠던 상황

<h4 >XSS 데이터 출력 오류 </h4>
프로젝트 마지막 날 XSS 설정으로 인하여 데이터들이 '<br>'이 포함되어 마구 출력되는것을 확인하였다.<br>
JSP에 있는 태그에 <escapeXml = "true">가 원인이였다. XSS를 위해서 삽입한 코드이지만..
진짜 시간이 얼마 남지 않았기 때문에 급하게 진행하였었고 엄청 아찔한 경험이였다.
데이터를 불러오고 삽입할 때 컨트롤러에 아래와 같이 작성하여 급한 불을 껐었다.

```
String unescapedContent = StringEscapeUtils.unescapeHtml4(mTmdetail.getMtmContent());
		String unescapedContent2 = StringEscapeUtils.unescapeHtml4(mTmdetail.getMtmRepContent());
        String replacedContent = unescapedContent.replaceAll("<br\\s*/?>", "\n");
        String replacedContent2 = "";
        if (unescapedContent2 != null) {
            replacedContent2 = unescapedContent2.replaceAll("<br\\s*/?>", "\n");
        }
		mTmdetail.setMtmContent(replacedContent);
		mTmdetail.setMtmRepContent(replacedContent2);
```
1. 게시판의 상세 내용 부분이였는데 컨텐츠가 두군데 있었다. 본문과 답글
2. 본문 하나만 처리는 했는데 생각해보니 추가적으로 답글처리를 추가로 해야하는 과정에 있어서 시간이 급박해서 그랬는지<br>
어떻게 처리할지 우왕좌왕하고있었고 뭐 답은 위와같이 답글에도 똑같이 적용하면 되는것 그것뿐이였다..
급하게 처리한것이기 때문에 옳은지 옳지못한 코드인지 확인할 방법이 없었다. 출력은 제대로 가능하니 옳은 코드라고 생각한다....


<h4> 네이버 토큰 처리 </h4>
카카오 로그인은 문제없이 구현하였는데 네이버 로그인을 추가하면서 문제가 발생하였다.
너무 기초적인 문제였지만 어이없게도 4~5시간 이상 소요된 것으로 기억한다.
토큰을 처리하는 방식을 REST API 로 설정하였으나
JSP에서는 JAVASCRIPT방식으로 처리하고있었고 결국 토큰이 두번 불러와지면서 만료가 되었던 기억이 있다.
모든 라인에 디버그를 하고 나서야 뭐가 문제인지 알아차렸던 기억이 남는다..


<h4>오타</h4>
정말 많이 괴롭혔던 부분이다..
가장 압권은 토큰을 확인하기 위한 주소를 .com이 아닌 .cm으로 작성한 것,
<p align="center"><img src="/img/babo.png" /></p>
XSS가 적용이 안되길래 엄청난 시간을 투자해서 코드를 추가하였지만 결국 .. escapeXml = "ture" 였던 것도 꽤..
인상적이였다...

```
<c:out value="${review.revContent}" escapeXml="true" />
```

## 프로젝트 진행 후기

모두가 한마음 한뜻으로 뭉치기는 정말 어렵다는걸 다시한번 느꼈다.
밀어주고 끌어주고 격려하고 함께 으쌰으쌰 할 수 있도록 노력해야했었는데 그런 노력이 조금 부족했던 것 같다..
그래도 결과적으로는.. 무사히 종료되긴 하였지만.. 
