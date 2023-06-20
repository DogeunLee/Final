let areaIndex = 0;
let prevAreaIndex = -1;
let cinemaIndex = -1;
let dateIndex = 0;

let areaCinemaList = [];
let movieNumList = [];

let originPlay = $("#origin_play").clone(true);
let clonePlay;


// 페이지가 로딩되면 서울 지역의 극장을 극장 리스트에 저장함.

$.ajax({
    url: "cinemaList",
    data: {"areaIndex": areaIndex},
    type: "GET",
    success: function(cinemaList) {
      areaCinemaList = cinemaList;
    },
    error: function () {
        console.log("에러 발생");
    }
});

// 날짜 슬라이더

var swiper = new Swiper(".mySwiper", {
  slidesPerView: 7,
  spaceBetween: 10,
  touchRatio: 0,  // 드래그 방지. 드래그하려면 1
  // grabCursor: true,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});


// 날짜 초기화
// 공휴일과 음력 명절은 자바 공휴일 api로 처리할 수 있으므로
// 날짜 초기화는 java로 변경하겠습니다.

let date = new Date();
let weeks = ['일', '월', '화', '수', '목', '금', '토'];

$('.swiper-slide.date').each(function(index, item){
  $(this).attr('data-month', date.getMonth()+1);  // 월
  $(this).attr('data-date', date.getDate());      // 일
  $(this).attr('data-day', weeks[date.getDay()]); // 요일
  $(this).text(date.getDate());

  if(date.getDay() == 6 || date.getDay() == 0) {
    $(this).addClass("holiday");
  }

  date.setDate(date.getDate()+1);
});


// 날짜 선택

let today = new Date();
let playDay = (today.getMonth()+1) + "월 " + today.getDate() + "일 " + weeks[today.getDay()] + "요일";

$('.swiper-slide.date').on("click", function(){
  dateIndex = $(this).index();
  playDay = $(this).data('month') + "월 ";
  playDay += $(this).data('date') + "일 ";
  playDay += $(this).data('day') + "요일";
  $('#play_select').html(playDay);
});



// 지역 선택

let area = $('#area_list > li');
let areaName;

area.on("click", function(){

  $(area).children().removeClass('clicked');
  $(this).children().addClass('clicked');
  areaIndex = $(this).index();
  
  $.ajax({
    url: "cinemaList",
    data: {"areaIndex": areaIndex},
    type: "GET",
    success: function(cinemaList) {
      areaCinemaList = cinemaList;
      $("#cinema_list").empty();
      updateCinemaSection(cinemaList);
      if(prevAreaIndex == areaIndex) {
    	$('#cinema_list').children().eq(cinemaIndex).children().click();
  	  }
    },
    error: function () {
      console.log("에러 발생");
    }
  });
  
});



// 지역을 클릭하면 지역별 극장을 업데이트하는 함수

function updateCinemaSection(cinemaList) {

  for(let cinema of cinemaList) {
  
    let cinemaLi = document.createElement("li");
    let cinemaItem = document.createElement("a");
        
    $(cinemaItem).html(cinema.cinemaName);
    $(cinemaItem).attr("href", "#none");
    $(cinemaItem).on("click", function(e) {
       clickCinema(e);
    });
        
    $(cinemaLi).append(cinemaItem);
    $("#cinema_list").append(cinemaLi);
  
  }
  
}



// 극장 선택 
// 사용자가 극장을 선택하여 인덱스로 접근하는데, 관리자가 극장을 추가하면...
// 분명 이름 순으로 몇 번째 극장을 선택했는데, 그새 테이블이 변경되면...??
// 이러한 문제는 스프링 격리성을 고안하면 됩니다. MVCC
// 당장 우리 프로젝트에서 적용하기 어려우므로, 추후 학습하는 게 좋을 것 같습니다.

function clickCinema(e) {

  cinemaIndex = $(e.target).parent().index();
  prevAreaIndex = areaIndex;
  
  $("#cinema_select").html(areaCinemaList[cinemaIndex].cinemaName);
  $('#cinema_list > li > a').removeClass("clicked");
  $(e.target).addClass("clicked");
  
  $.ajax({
    url: "playList",
    data: {areaIndex, cinemaIndex, dateIndex},
    type: "GET",
    success: function(joinPlayList) {
      /*
      console.log(playMap);
      movieNumList = [];
      $("#total_play").empty();
      updatePlaySection(playMap);
      */
      console.log(joinPlayList[0].screen.screenName + "관");
      console.log(joinPlayList[0].screen.screenSeat + "석");
      console.log(joinPlayList[0].play.playBookCount + "석");
      console.log(joinPlayList[0].play.playStart);
      console.log(joinPlayList[0].movie.movieTitle);
      
    },
    error: function () {
      console.log("에러 발생");
    }
  });
}


// 상영 정보를 업데이트하는 함수

let moviePlay;
let playBundle;
let questMovie;
let questPlay;
let questScreen;

function updatePlaySection(playMap) {
  
  // 해당 극장에서 상영 중인 영화 번호를 중복 없이 예매율 순으로 저장함.
  
  playMap.playList.forEach(play => movieNumList.push(play['movieNo']));
  
  movieNumList = movieNumList.filter((element, index) => {
    return movieNumList.indexOf(element) === index;
  });
  
  
  for(let num of movieNumList) {
  
    moviePlay = $('<li class="movie_play"></li>');
    playBundle = $('<div><ul class="playlist"></ul></div>');

    // 영화 제목을 업데이트함
    
    questMovie = playMap.thumbList.filter((movie) => {
      return movie.movieNo == num;
    });
    
    moviePlay.append(`<div>${questMovie[0]['movieTitle']}</div>`);
    
    // 시작 시간을 업데이트함
    
    questPlay = playMap.playList.filter((play) => {
      return play.movieNo == num;
    });
        
    questPlay.forEach(function(play) {
      clonePlay = originPlay.clone(true);
      clonePlay.removeAttr('id');
      questScreen = playMap.screenList.filter((screen) => {
        return screen.screenNo = play.screenNo
      });
      console.log(questScreen[0]);
      clonePlay.find('.open_hour').html(play.playStart.substring(11,13));
      clonePlay.find('.open_minute').html(play.playStart.substring(14,16));
      playBundle.find('.playlist').append(clonePlay);
      
    });
    
    moviePlay.append(playBundle);
    $("#total_play").append(moviePlay);
        
  } 

}

$("#cinema_list > li > a").on("click", function(e){
  clickCinema(e);
});


// 영화 리스트 버전 선택

$('#movie_option1').on("click", function(){
  $("#movielist_text").css('display', 'block');
  $("#movielist_thumb").css('display', 'none');
});

$('#movie_option2').on("click", function(){
  $("#movielist_text").css('display', 'none');
  $("#movielist_thumb").css('display', 'block');
});


// 영화 선택

let movie = $('.movielist > li > a');
let movieName;

movie.on("click", function(){
  movieName = this.querySelector('.movie_name').innerText;
  $('#movie_select').html(movieName);
  $('.movie_play').css('display', 'none');
  $(`.movie_play[data-movie="${movieName}"]`).css('display', 'block');
  
});


// 상영 선택

let play = $('.playlist > li > a');
let openHour;
let openMinute;
let cinemaRoom;

play.on("click", function(){
  movieName = $(this).closest("[data-movie]").data('movie');
  $('#movie_select').html(movieName);

  cinemaRoom = this.querySelector(".cinema_room").innerText;
  openHour = this.querySelector(".open_hour").innerText;
  openMinute = this.querySelector(".open_minute").innerText;

  alert(cinemaName + " " + cinemaRoom + "관 " + playDay + " " + 
        openHour + "시 " + openMinute + "분 " + movieName);
})