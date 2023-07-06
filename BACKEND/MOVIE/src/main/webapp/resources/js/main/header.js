/*
$(document).ready(function() {
  var modal = $('#myModal');
  var btn = $('#myBtn');
  var span = $('.close-button').eq(0);

  btn.click(function() {
    modal.css('display', 'block');
  });

  span.click(function() {
    modal.css('display', 'none');
  });

  $(window).click(function(event) {
    if (event.target == modal[0]) {
      modal.css('display', 'none');
    }
  });
});


//   span.click(function() {
//     modal.css('display', 'none');
//   });


window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
*/

$(document).ready(function () {
  $(".navBar, .dummy").hover(
    function () {
      $(".navBar ul").stop().slideDown(150);
      $(".dummy").css("display", "flex");
    },
    function () {
      $(".navBar ul").stop().slideUp(150);
      $(".dummy").css("display", "none");
    }
  );

  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $(".go_top_area")
        .fadeIn()
        .children("div")
        .children("a:nth-child(1)")
        .addClass("slide-in");
    } else {
      $(".go_top_area").hide();
    }
  });

  $(".go_top_area > div > a:nth-child(2)").click(function () {
    $("html, body").animate({ scrollTop: 0 }, 200);
    return false;
  });

  $(".submitBTN").click(function (e) {
    var inputLength = $('input[name="hkeyword"]').val().length;
    if (inputLength < 2) {
      e.preventDefault();
      alert("두 글자 이상 입력해주세요");
    }
  });
});
