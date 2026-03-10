<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    @font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-1Thin.woff2') format('woff2');
    font-weight: 100;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-2ExtraLight.woff2') format('woff2');
    font-weight: 200;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-3Light.woff2') format('woff2');
    font-weight: 300;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-4Regular.woff2') format('woff2');
    font-weight: 400;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-5Medium.woff2') format('woff2');
    font-weight: 500;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-6SemiBold.woff2') format('woff2');
    font-weight: 600;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-7Bold.woff2') format('woff2');
    font-weight: 700;
    font-display: swap;
}
@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-8ExtraBold.woff2') format('woff2');
    font-weight: 800;
    font-display: swap;
}

@font-face {
    font-family: 'Presentation';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/2404@1.0/Freesentation-9Black.woff2') format('woff2');
    font-weight: 900;
    font-display: swap;
}

* {font-family: 'GmarketSans', sans-serif; box-sizing: border-box;}
html{height: 100%;}
#page_landing_c {padding: 0; border: 0;}
#page_landing_c main {max-width: 818px; position: relative;}
#page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
.content {padding: 20px 10px;}
.content + .content {border-top: 1px solid #ddd;}
.content * {padding: 8px 10px;}
.wrap_form .agBox {margin: 7px auto; align-items: center;}

/* submit 버튼 */
.btn_submit {background-color: transparent !important;}
.wrap_form .submit {position: relative; display: flex; align-items: center; width: 100%; height: 111px; margin: 6.14% auto 3% !important; background-color: transparent !important; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 0 auto; padding: 0% 0;}
:is(#page_landing_a, #page_landing_c) .wrap_curd .btn_submit {
    width: 71.46% !important; margin: 0 auto; margin-left: auto; animation: pulsating 0.8s linear infinite;
    -webkit-animation: pulsating 0.8s linear infinite;
}

@keyframes pulsating {
    50% {
        transform: scale(0.95);
    }
}

input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}


.bg-area {width: 100%; padding: 0 1.835%; background: url('//static.savemkt.com/event/v_${eventSeq}/bg.jpg') no-repeat center top / 100% 100%;}

#page_landing_c .wrap_curd {background-color: transparent;}
#page_landing_c .wrap_form {background: url('//static.savemkt.com/event/v_${eventSeq}/bg.png') no-repeat center center / 100% 100%; padding: 47px 60px 71px !important; border: none !important;}

/* user db입력칸 (이름) */
#page_landing_c .description p, #page_landing_c .description .ad_txt, #page_landing_c .description .target {text-align: center; color: #fff; font-family: 'Presentation';}

#page_landing_c .description {width: 100%; padding: 0 3.9% 0; text-align: center; color: #fff; font-family: 'Presentation'; font-size: 20px; font-weight: 600;}
#page_landing_c .description p {color: #fff; padding: 0; font-weight: 300; font-size: 175%; letter-spacing: -0.02em;}
#page_landing_c .description .ad_txt b {color: #fff640; font-size: 100%; letter-spacing: -0.02em; font-weight: 400;}
.wrap_form .description span {padding: 0;}

#page_landing_c .question {position: relative; margin-bottom: 52px; font-size: 38px; text-align: center; line-height: 1.38;}
#page_landing_c .question .text-red {font-size: 100%; line-height: 1.27; color: #f53039; font-weight: 700;}
#page_landing_c .question_box > div:not(.formContents),
#page_landing_c .question_box > .legend {width: 100%; color: #fff; font-size: 150%;}
#page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 2.09%;}
#page_landing_c .legend {flex-shrink: 0; position: relative; width: 15.4%; font-size: 240%; font-weight: 500; line-height: 1; letter-spacing: -1.78px; color: #000;}
#page_landing_c .agBox {text-align: center; display: flex; align-items: center; justify-content: center; color: #000; font-size: 180%; margin: 3% auto 0%; }
.wrap_form .agBox a {font-weight: 400; color: #fff; font-family: 'Presentation' !important; font-size: 23px !important;}
#page_landing_c .agBox .legend {max-width: max-content;}

#page_landing_c input[type="checkbox"] + span {color: #fff;}
#page_landing_c input[type="checkbox"]:checked + span:after {border-color: #fff;}
#page_landing_c .agBox label {display: flex; align-items: center;} 
#page_landing_c .agBox label span {color: #fff; font-size: 23px; font-family: 'Presentation';} 

.question_container {padding: 0;}
.question_box > div {display: flex; align-items: center;}
#page_landing_c .question_box .agBox .question {display: flex; align-items: center; width: 100%;}

/* user db입력칸 (이름) */
#page_landing_c .user_info {width: 90%; margin: 0 auto;}
#page_landing_c .user_info .user_name {position: relative; margin-bottom: 2%;}
#page_landing_c .user_info .user_name img {width:100%;}

/* user db입력칸 (연락처) */
#page_landing_c .user_info .user_phone {position: relative; margin-bottom: 2%;}
#page_landing_c .user_info .user_phone img {width:100%;}

/* 이름, 연락처 공통 */
#page_landing_c .user_info input {background: #ffeef4; padding: 2%; font-size: 150%; border-radius: 0.5rem; width: 67%;
position: absolute; left: 29%; top: 14%; height: 70%; border: 1px solid #e3ccd4;}

#page_landing_c .inp {width: 100%; padding: 32px 25px; border: 4px solid #595959; text-align: center; font-size: 24px; font-weight: 200; font-family: 'Presentation'; border-radius: 14px; background-color: transparent; margin-left: auto; transition: 0s; animation: none; text-align: left; background-color: #fff;}
#page_landing_c .inp:focus {color: #000;}
#page_landing_c .inp::placeholder {color: #636161;}
#page_landing_c input[type="checkbox"] + span:before {border-color:#fff;}

#page_landing_c input[type="checkbox"]:checked + span:after {
    border-color: #fff;
}

/* 실시간 신청 현황 */
.subscribe_container {width: 100%; background: #fff; padding: 0 4.5rem 6.5rem;}
.subscribe_bg {background: #f8f8f8; padding: 3.75% 8.5%; border-radius: 20px}
.subscribe_container .title {padding: 3.5rem 0 0; font-size: 3.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem; font-family: 'GangwonEducationTteontteon';}
.subscribe_container .img-area {width: 40%; margin: 3% auto;}
.subscribe {height: 530px; overflow: hidden; background-color: #f8f8f8;}
.subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
.subscribe .content > div {font-size: 1.35rem; width: calc(100% / 4);}
.subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
.subscribe .content .text.color-bg {background-color: #333f50; color: #fff;}
.subscribe .content .date {text-align: right;}
    
@keyframes pulsating {
    50% {
        transform: scale(0.95);
    }
}
.overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    display: none;
}

.fixed {
    position: fixed;
    z-index: 9;
    bottom: 0%;
    cursor: pointer;
}
    
@media screen and (max-width: 820px){
    .timer-box #timer {font-size: 2.5rem;}
}
@media screen and (max-width: 768px){
    .subscribe {padding: 3% 2%; height: 150px;}
    .subscribe .content {padding: 0.5rem 0.7rem;}
    .subscribe .content > div {margin-right: 0; font-size: 0.8rem;}
    .subscribe_container {padding: 0 1.5rem 1rem 1.5rem;}
    .subscribe .content .name {width: 10%;}

    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
    .subscribe_container .title {padding: 2rem 0 0; font-size: 1.8rem; margin-bottom: 0.6875rem;}
}
@media screen and (max-width: 640px){
    #page_landing_c .question {font-size: 24px; margin-bottom: 32px;}

    #page_landing_c .wrap_form {padding: 32px 45px 56px !important;}
    #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {padding: 22px 15px;}
    #page_landing_c .agBox label span, .wrap_form .agBox a {font-size: 18px !important;}
    .wrap_form .submit {height: 86px;}

    #page_landing_c .description p, #page_landing_c .description .ad_txt, #page_landing_c .description .target {font-size: 16px;}
}
@media screen and (max-width: 480px){
    #page_landing_c .wrap_form {padding: 22px 30px 41px !important;}
    #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {padding: 12px 15px;}
    #page_landing_c .agBox label span, .wrap_form .agBox a {font-size: 14px !important;}
    .wrap_form .submit {height: 66px;}

    #page_landing_c .description p, #page_landing_c .description .ad_txt, #page_landing_c .description .target {font-size: 14px;}
    
}
@media screen and (max-width: 395px){
    .subscribe .content {padding: 0.5rem 0.2rem;}

}
@media screen and (max-width: 375px){
    .subscribe {padding: 0;}
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/GmarketSans/GmarketSans.css" type="text/css"/>

<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>
        <div class="img-area bg-area">
            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.png">
            <div class="wrap_form">
                <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                    <div class="formGroup">
                        <div class="form_inner">
                            <div class="question_container">
                                <div class="question_box">
                                    <div class="user_name">
                                        <input type="text" name="name" id="name" class="inp" required placeholder="이름" autocomplete="off">
                                    </div>
                                    <div class="user_age">
                                        <input type="tel" name="age" id="age" class="inp" required=""  placeholder="나이" autocomplete="off" maxlength="2" placeholder="">
                                    </div>
                                    <div class="user_phone">
                                        <input type="tel" name="phone" id="phone" class="inp" required placeholder="연락처" autocomplete="off" maxlength="11">
                                    </div>
                                </div>   
                            </div>
    
                        </div>
    
                        <div class="agBox">
                            <label><input name="agBox" type="checkbox" checked><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div>
                        <!-- <div class="agBox">
                            <a href="javascript:void(0);" class="btn-agreement">혜택 제공을 위한 <b>개인정보처리방침</b>에 동의해 주세요</a>
                        </div> -->
    
                        <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png" /></div>	
                    </div>
    
                    <div class="description">
                        <div class="ad_txt">고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span class="target">대상 : ${resVo.target}</span>
                    </div>
    
                    <input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
                    <input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
                    <input type="hidden" id="site" 			name="site" value="${site}"/>
                    <input type="hidden" id="media" 		name="media" value="${media}"/>
                    <input type="hidden" id="interlock" 	name="interlock" value="${resVo.interlock}"/>
                    <input type="hidden" id="checkAgeMin" 	name="checkAgeMin" value="${resVo.checkAgeMin}"/>
                    <input type="hidden" id="checkAgeMax" 	name="checkAgeMax" value="${resVo.checkAgeMax}"/>
                    <input type="hidden" id="checkGender" 	name="checkGender" value="${resVo.checkGender}"/>
                    <input type="hidden" id="add1" 			name="add1" value=""/>
                    <input type="hidden" id="add2" 			name="add2" value=""/>
                    <input type="hidden" id="add3" 			name="add3" value=""/>
                    <input type="hidden" id="add4" 			name="add4" value=""/>
                    <input type="hidden" id="add5" 			name="add5" value=""/>
                    <input type="hidden" id="add6" 			name="add6" value=""/>
                    
                    <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
                    <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
                    <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
                </form>
            </div>
        </div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div>
                
            <div class="subscribe_container">
                <div class="title">
                    실시간 신청현황
                </div>
                <div class="subscribe_bg">
                    <div class="subscribe" data-limit="10">
                    </div>
                </div>
            </div>

            <div class="container">
                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div> -->
            </div>
        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                    
                </p>
            </div>
        </div>
       
        <!-- <div class="img-area fixed db_btn"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_01.png"></div> -->
    </main>
</body>
<!--공통_script start --><script src="/js/agreement.js"></script><!--공통_script end-->
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        abellacubeAgreement();

        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

    let dataNum;

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
            
            for(v in resultData) {
                var data = resultData;
                var reg = (data[v].regDate || '').trim();      // "08-21 09:59"
                var parts = reg.split(/\s+/);                   // ["08-21", "09:59"]
                var md = parts[0] || "";                        // "08-21"
                var tm = parts[1] || "";   
				var statusText = Math.random() < 0.5 ? '접수중' : '신청완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
				var backgroundClass = statusText === '신청완료' ? 'color-bg' : ''; // '접수완료'일 경우에만 클래스 추가
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +'</div>';
					html += '	<div class="phone">'+ data[v].phone +'</div>';
					html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
					html += '  <div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				$(obj).append(html);
			}
            
		});

        if(resultData.length >= 10){
            $('.subscribe_container').show();
            return;
        } else {
            $('.subscribe_container').hide();
            return;
        }
	}

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);

    /* 인원 카운트 다운 항목 start */
	let remainingCount = 49; // 초기 인원수
	const $countElement = $('.count'); // 숫자를 표시하는 요소

	const countdownInterval = setInterval(() => {
		if (remainingCount > 39) {
			remainingCount--; // 1명 차감
			$countElement.text(remainingCount ); // 새로운 값 표시
		}
	}, 5000); // 5000ms = 5초 간격
     
    if (remainingCount < 39){
        clearInterval(countdownInterval)
    }
	/* 인원 카운트 다운 항목 end */

    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.form_inner').offset().top;
        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

	var modal2 = document.getElementById("modal2");
	var agree = document.querySelector(".agBox .btn-agreement");
	var close2 = document.getElementById("close");

	agree.onclick = function () {
	    modal2.style.display = "block";
	}

	close2.onclick = function () {
	    modal2.style.display = "none";
	}
	
	document.addEventListener('DOMContentLoaded', function() {
	    const phoneInput = document.getElementById('phone');

	    // 페이지 로드 시 기본값 설정
	    phoneInput.value = '010';

	    // 입력값이 사라지면 다시 '010' 넣기
	    phoneInput.addEventListener('input', function() {
	        if (!phoneInput.value.startsWith('010')) {
	            phoneInput.value = '010';
	        }
	    });
	});

    // $('.overlay').hide();
    // $('.popup-valid').hide();
    // $('.pop-up').hide();

    // let isConfirm = false;

    // $('.submit .btn_submit').on('click', function(e) {
    //     e.preventDefault();

    //     const tadd1 = $('input[name="tadd1"]:checked').val();
    //     const tadd2 = $('input[name="tadd2"]:checked').val();
    //     const tadd3 = $('input[name="tadd3"]:checked').val();
    //     const agBox = $('input[name="agBox"]:checked').val();
    //     const nameVal = $('input[name="name"]').val();
    //     const phoneVal = $('input[name="phone"]').val();

    //     // ✅ 필수값 유효성 검사
    //     if (!tadd1 || !tadd2 || !tadd3 || !agBox || !nameVal || !phoneVal || phoneVal.length < 11) {
    //         $('.overlay').show();
    //         $('.popup-valid').show();
    //         return;
    //     }

    //     // ✅ 모든 항목이 입력된 경우 → 확인 팝업 표시
    //     $('.overlay, .pop-up').show();
    //     isConfirm = false;
    // });

    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.wrap_form').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

    // $('.btn-valid').on('click', function() {
    //     $('.overlay, .popup-valid').hide();
    // });

    // $('.btn-confirm').on('click', function() {
    //     isConfirm = true;
    //     $('.overlay, .pop-up').hide();

    //     if (isConfirm) {
    //         fnForm('form-1'); // ✅ 폼 전송 함수 실행
    //     }
    // });

    // $('.btn-out').on('click', function() {
    //     isConfirm = false;
    //     $('.overlay, .pop-up').hide();
    // });


    // $('li.btn_submit').bind('click',function() {
	// 	$('#form-1').submit();
	// })

	// $('input[name*="tadd"]').bind('click', function() {
	// 	$(this).closest('.q_select').find('label').removeClass('on');			
	// 	$(this.parentNode).addClass('on');	
	// });

	$('.submit').bind('click',function(){
		if(!$('input[name="name"]').is(':visible')){
			$('.db-name').click();
			$('input[name="name"]').focus();
		}
		else if(!$('input[name="phone"]').is(':visible')){
			$('.db-phone').click();
			$('input[name="phone"]').focus();
		}
		var phoneNum = $('input[name="phone"]').val();
	});

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
        
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		// let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		// if (!selectedRadio1) {
		// 	alert("연령대를 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }

		// let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		// if (!selectedRadio2) {
		// 	alert("고민사항을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		// }

		// let selectedRadio3 = procForm.querySelector('input[name="tadd3"]:checked');
		// if (!selectedRadio3) {
		// 	alert("전화상담 가능시간을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		// }

		// let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		// procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		// let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		// procForm.querySelector("input[name='add3']").value = selectedRadio3;
		
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>