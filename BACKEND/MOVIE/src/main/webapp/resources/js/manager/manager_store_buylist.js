$(document).ready(function () {











});



const orderDetailNo = $('#orderDetailNo').text().trim();

console.log(orderDetailNo);

$("#cancelPay").click(function (e) {


    $.ajax({
        url: "/manager/coupon_cancel.do",
        type: "post",
        //datatype:"json",
        contentType: 'application/x-www-form-urlencoded; charset = utf-8',
        data: {
            "orderDetailNo": orderDetailNo // 주문번호
            //"cancle_request_amount" : 2000, //환불금액
            //"reason": "테스트 결제 환불", //환불사유
            //"refund_holder": "홍길동", //[가상계좌 환불시 필수입력] 환불 가상계좌 예금주
            //"refund_bank":"88", //[가상계좌 환불시 필수입력] 환불 가상계좌 은행코드(ex Kg이니시스의 경우 신한은행 88)
            //"refund_account": "56211105948400" // [가상계좌 환불시 필수입력] 환불 가상계좌 번호
        }
    }).done(function (result) { //환불 성공

        console.log("환불 성공 : " + result);
    }).fail(function (error) {
        console.log("환불 실패 : " + error);
    });//ajax

}); //check2 클릭
