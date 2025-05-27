<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@font-face {
font-family: 'Pretendard-Regular';
src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
font-weight: 400;
font-style: normal;
}

:root {
    --form-font-size: 3.4em;
}
* {box-sizing: border-box; font-family:'Pretendard-Regular', sans-serif;}
body {background: #F9F9F9; font-size: 10px;}
#wrap {font-family: 'Pretendard-Regular'; box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.1), 0 1px 3px 0 rgba(0, 0, 0, 0.08);}

/* 신청자 수 CSS */
.remaining-box {display: flex; align-items: center; justify-content: center; gap: 1em; width: 90%; margin: 3em auto 0; padding: 2.7em 2em; text-align: center; border-radius: 1.2em; color: #fff; background-color: #001f4d;}
.remaining-box .remaining-box-inner {font-size: 2.9em;font-weight: 500;line-height: 1; display: flex; align-items: center; background: url("//static.resta.co.kr/event/v_${eventSeq}/icon_01.png") no-repeat center; background-size: 20px 20px; background-position: left; padding-left: 1em; white-space: pre;}
#eventCnt {color: #fef79d;}

.question_container {position: absolute; top: 30%; left: 50%; transform: translateX(-50%); padding: 5% 0; width: 85.5%;}
.question_container img{width: 100%;}
.question_container .question_box .q_select label{position: absolute; width: 20%; }
.question_container .question_box .q_select label:nth-child(1){left: 9%; top: 23%;}
.question_container .question_box .q_select label:nth-child(2){left: 9%; top: 43%; transform: translateY(-50%);}
.question_container .question_box .q_select label:nth-child(3){left: 9%; bottom: 37%;}
.question_container .question_box .q_select label:nth-child(4){right: 8%; top: 30%;}
.question_container .question_box .q_select label:nth-child(5){right: 8%; bottom: 46%;}

.monitor{margin: 0 auto; width: 40%;}

.grid_box{margin: 2% auto; width: 85.5%; display: grid; grid-template-columns: repeat(2, 1fr); gap: 5%; box-sizing: border-box;}
.grid_box .question_box{margin-bottom: 3%; text-align: center;}
.grid_box .question_box:first-child{grid-row: 1/2; grid-column: 1/3;}
.grid_box .question_box img{width: 100%;}
.grid_box .question_box .question{margin-bottom: 3%;}
.grid_box .question_box .q_select{display: flex; flex-wrap: wrap; align-items: center; justify-content: center;}
.grid_box .question_box .q_select label{padding: 0 2%; font-size: 30px;}
.grid_box .question_box .inp{margin-top: 10%; padding: 4%; height: auto; text-align: center; font-size: 20px; border-bottom: 1px solid #111;}

.form {}
.form .formContents{padding: 5em; padding-bottom: 0;}
.form .agBox{width: 100%; margin: 2.5rem auto; text-align: left; font-size: 2em; color: #000; font-weight: 300;}
.form label {}
.form .q_select label {position: relative;display: flex;align-items: center;gap: 0.4em;}
.form .input_row span:not(.mark) {display: block;line-height: 1.1; font-size: var(--form-font-size);font-weight: 500;color: #000;}
.form .input_box {margin-bottom: 3em;}
.form .input_box .input_row:not(:last-child) {margin-bottom: 1.5em;}
.form .agBox label {display: inline-flex;}
.form .agBox label:nth-child(1) {margin-bottom: 7px; padding-bottom: 7px;width: 100%;border-bottom: 1px solid #999;}
.form .agBox label:nth-of-type(2) {margin-bottom: 1%;}
.form .agBox a { font-weight: bold; letter-spacing: -0.5px;}
.form .agreement, .form .mkt_agreement{width: 100%; font-size: 1.8em;}
.form .mkt_agreement h3 {font-size: 80%;}
.form input[type="radio"] + span:before{border-radius: 0;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before{border: 2px solid #d9d9d9;
    text-align: center;
    transform: translateY(-50%);}

/* 이름 출력 */
.txtPrintBox{position:relative; text-align: center;}
.txtPrintBox #result{position:absolute; top:30%; left:12%; width:16%; overflow:hidden; font-size:150%; font-weight:600;}
.txtPrintBox .namePrint{width:100%;}

/* 커서 */
.cursor_box{position: relative;}
.cursor_box::after{position: absolute; top: 43%; right: 15%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 31px; background-color: #111; animation: blink-effect 1s step-end infinite;}

.description {padding: 1.5em 0; display: flex; gap: 1.3em; align-items: center; justify-content: center; font-size: 1.5em; font-weight: 500; color: #767676; width: 100%; border-bottom: 0.1em solid #fbfbfb; background-color: #efefef;}

.result_box {margin-top: -1px;}
.result_box #result { position: absolute; left: 12%; bottom: 33%; font-size: 2rem;}

.age-box {display: none;}
.age-box.active {display: block;}
.age-box.age4 .video_box {position: relative; margin-bottom: 3rem;}
.age2 .img-area.poster_04 {margin-top: 1.6rem; padding: 0 7.4rem;}
.age2 .question_box {margin: 2.3rem 0 6.4rem;}
.age2 label + label {margin-top: 2.3rem;}

/* 비디오 영역 */
.video_container { box-sizing: border-box; width: 100%; margin-bottom: 2.8rem; background: #000 url(//static.resta.co.kr/event/v_848/bg_01.png) no-repeat left top / 100% 100%;}
.video_container #location {width: 100%;}

/* 슬라이드 영역 */
.slide_container {height: 50%;overflow: hidden;margin-left: 5%;}

.video_box video {position: absolute;top: 30%;left: 50%;transform: translateX(-50%);width: 90% !important;border-radius: var(--main-border);border: 2px solid #ddedff;}

.age4 .question_box {padding: 4% 10%;text-align: center;}
.age4 .question_box .q_select {display: grid;grid-template-columns: repeat(2, 1fr);gap: 1.8rem;margin-top: 3.5rem;margin-bottom: 4rem;;}
.age4 .question_box img{width: 100%;}

.input_row {width: 100%;}
.input_row + .input_row {margin-top: 1.4rem;}
.input_box .title {margin-bottom: 0.4em;font-size: var(--form-font-size);font-weight: 700 !important;color: #000;}
.mark {color: #005fff;}

.formContents .inp {
    display: block;
    padding: 0.7em 0.8em;
    text-align: left;
    font-size: var(--form-font-size);
    border: 0.1em solid #dedede;
    border-radius: 0.4em;
    background-color: #efefef;
}
.input_row.age3 .q_select {display: flex;align-items: center;gap: 2em;}
.input_row.age3 .q_select img {margin-right: 0.3rem;width: 1.7vw;}

.select_box {
    padding: 2.4em 2.8em;
    border: 0.4em solid #dedede;
    border-radius: 1.4em;
    background-color: #efefef;
    
}
select.q_select {
    border: none;
    font-size: var(--form-font-size);
    text-align: left;
    width: 100%;
    background: #efefef
}

/* submit 버튼 영역 */
.submit-box {display: flex; gap: 2%;}
.submit input {width: 100%;}

/* 신청자현황 영역 */
.subscribe .content {font-size: 2.2em;}
.subscribe .content .date {color: #9a979e;}

/* 동의 체크박스 */
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {width: 14px; height: 14px;}

#banner_slide {
    padding: 4em 0 0;
    background-color: #fff;
    border-radius: 3px;
}
#banner_slide .swiper-slide {
    margin-bottom: 1.5em;
    display: block;
    width: 100%;
    border-radius: 2em;
}
#banner_slide .swiper-slide.active .img-box {
    border-color: #1975ff;
}
#banner_slide .slide-num {
    --circle-size: 3.9em;
    width: var(--circle-size);
    height: var(--circle-size);
    position: absolute;
    top: 1em;
    left: 1em;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 9999px;
    background-color: rgba(0, 31, 76, 0.5);
}
#banner_slide .slide-num .num {
    line-height: 1;
    font-size: 1.8em;
    color: #fff;
}
#banner_slide .img-box {
    margin-bottom: 1.5em;
    display: block;
    width: 100%;
    border-radius: 2em;
    border: 0.4em solid transparent;
    overflow: hidden;
}
#banner_slide img {
    display: block;
    width: 100%;
    height: 100%;
}
#banner_slide .slide-description {
    padding-left: 0.4em;
    line-height: 1.3;
    font-size: 1.9em;
    color: #666;
}

@media screen and (max-width: 768px) {
        body {font-size: 1.25vw;}
}


@media screen and (max-width: 640px) { 
    .form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {width: 10px; height: 10px;}
}

@media screen and (max-width: 480px) {
    .form .input_row span:not(.mark) {font-size: 3.5em;}
    .input_row.age3 .q_select img {width: 2.7vw;}
    .remaining-box .remaining-box-inner {background-size: 15px 15px; padding-left: 1.2em;}
    .form .agBox {margin: 1rem auto;}
}

/* 커서 깜빡임 효과 */
@keyframes blink-effect {
    50% {opacity: 0;}
}

/* 버튼 효과 */
@keyframes pulsating {
    0% {transform: scale(1);}
    50% {transform: scale(0.95);}
    100% {transform: scale(1);}
}

</style>

<!--플러그인 필수 css cdn 연결-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@6.5.1/swiper-bundle.min.css">
<!--플러그인 필수 JS cdn 연결-->
<script src="https://cdn.jsdelivr.net/npm/swiper@6.5.1/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div id="wrap"> 
    <div class="container">
        
        <div class="swiper">
            <div class="swiper-container" id="banner_slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide slide1 active">
                        <span class="img-box">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_01_age1.jpg" alt="">
                        </span>
                        <span class="slide-num">
                            <span class="num">01</span>
                        </span>
                        <div class="slide-description">일단 신청하면 <br/>임플란트 해드려요</div>
                    </div>
                    <div class="swiper-slide slide2">
                        <span class="img-box">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_02_age2.jpg" alt="">
                        </span>
                        <span class="slide-num">
                            <span class="num">02</span>
                        </span>
                        <div class="slide-description">단 하루면<br/>임플란트 식립 완료</div>
                    </div>
                    <div class="swiper-slide slide3">
                        <span class="img-box">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_03_age3.jpg" alt="">
                        </span>
                        <span class="slide-num">
                            <span class="num">03</span>
                        </span>
                        <div class="slide-description">비용 부담 없이<br/>임플란트 해드려요</div>
                    </div>
                    <div class="swiper-slide slide4">
                        <span class="img-box">
                            <img src="//static.resta.co.kr/event/v_${eventSeq}/select_04_age4.jpg" alt="">
                        </span>
                        <span class="slide-num">
                            <span class="num">04</span>
                        </span>
                        <div class="slide-description">여기서만 지르코니아 어버트먼트 제공 중</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="form">
            <form id="form-1" method="POST" accept-charset="utf-8"> 

                <div class="age-box age1 active">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
                </div>
                <div class="age-box age2">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
                </div>
                <div class="age-box age3">
                    <div class="img-area">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
                    </div>
                </div>
                <div class="age-box age4">
                    <div class="video_box relative">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.jpg"></div>
                    </div>
                </div>

                <div class="remaining-box">
                    <div class="remaining-box-inner">현재까지 <span id="eventCnt"></span>명이 신청했습니다.</div>
                </div>

                <div class="formContents">
                    <div class="input_box">
                        <div class="input_row age3">
                            <span class="title">임플란트 몇 개 필요하신가요?<span class="mark">*</span></span>
                            <div class="q_select">
                                <label><input class="blind" type="radio" name="tadd1" value="1개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off.png"><span>1개</span></label>
                                <label><input class="blind" type="radio" name="tadd1" value="2개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off.png"><span>2개</span></label>
                                <label><input class="blind" type="radio" name="tadd1" value="3개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off.png"><span>3개</span></label>
                                <label><input class="blind" type="radio" name="tadd1" value="4개 이상"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off.png"><span>4개 이상</span></label>
                            </div>
                        </div>
                        <label class="input_row">
                            <span class="title">이름<span class="mark">*</span></span>
                            <input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름">
                        </label>
                        <label class="input_row">
                            <span class="title">연락처<span class="mark">*</span></span>
                            <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                        </label>
                        <label class="input_row">
                            <span class="title">연령<span class="mark">*</span></span>
                            <div class="select_box">
                                <select class="q_select" name="tage" required>
                                    <option value="" disabled selected>연령선택</option>
                                    <option value="30">30대</option>
                                    <option value="40">40대</option>
                                    <option value="50">50대</option>
                                    <option value="60">60대 이상</option>
                                </select>
                            </div>
                        </label>
                    </div>

                    <div class="agBox">
                        <label><input type="checkbox" id="agree_all"><span><b>전체 동의</b></span></label><br>
                        <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의 (필수) </span></label><a href="#" class="btn-agreement">[자세히 보기]</a><br>
                        <label><input name="agBox_mkt" type="checkbox" value="1"><span>개인정보 제 3자 제공동의 (선택) </span></label> <a href="#" class="btn-mkt-agreement">[자세히 보기]</a><br>
                    </div>
                    <div class="agreement">
                        <h3>개인정보 수집 • 이용 동의</h3>
                        <ol>
                            <li>(주)테크랩스은(는) 아래와 같이 회원님의 개인정보를 수집ㆍ이용하기 위하여 회원님의 동의를 받고자 합니다.</li>
                            <li>1. 개인정보의 수집ㆍ이용 목적 : 병원 상담 신청 서비스 제공</li>
                            <li>2. 수집하는 개인정보의 항목 : 이름,연락처</li>
                            <li>3. 개인정보의 보유ㆍ이용 기간 : 상담신청일로부터 6개월까지</li>
                        </ol><br/>
                        <h3>동의를 거부할 권리 및 거부하는 경우의 불이익</h3>
                        <ol>
                            <li>회원은 이 개인정보 수집ㆍ이용 동의를 거부할 수 있습니다. 이 동의는 의료기관 상담신청 서비스 제공에 필수적이므로<br>위 사항에 동의하셔야 병원 상담 신청이 가능합니다.</li>
                        </ol>
                    </div>

                    <div class="mkt_agreement">
                        <ol>
                            <li>㈜테크랩스( 이하 ‘회사’)는 아래와 같이 이용자의 개인정보를 제3자에게 제공하며, 이에 대한 동의를 요청드립니다. </li>
                            <li>동의를 원하지 않으실 경우 동의하지 않으셔도 됩니다.</li>
                            <br>
                            <li>개인정보 제공 받는자 : 플란치과</li>
                            <li>1. 수집 및 이용목적 : 시술상담 및 마케팅 안내를 위한 활용</li>
                            <li>2. 수집항목 : 이름, 연락처 ,상담신청하는 시술</li>
                            <li>3. 보유및 이용기간 : 6개월</li>
                        </ol>
                        <h3>동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익이 있는 경우에는 그 불이익의 내용</h3>
                        <ol>
                            <li>회원은 이 개인정보 마케팅 수신 동의를 거부할 수 있습니다.</li>
                            <li>하지만 동의를 거부할 경우 상담에 제약이 있을 수 있습니다.</li>
                        </ol>
                    </div>
                    <div class="submit-box">
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></div>
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></div>
                    </div>
                </div>
				<input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
				<input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
				<input type="hidden" id="site" 			name="site" value="${site}"/>
				<input type="hidden" id="media" 		name="media" value="${media}"/>
				<input type="hidden" id="interlock" 	name="interlock" value="${resVo.interlock}"/>
				<input type="hidden" id="checkAgeMin" 	name="checkAgeMin" value="${resVo.checkAgeMin}"/>
				<input type="hidden" id="checkAgeMax" 	name="checkAgeMax" value="${resVo.checkAgeMax}"/>
				<input type="hidden" id="checkGender" 	name="checkGender" value="${resVo.checkGender}"/>
				<input type="hidden" id="age" 			name="age" value=""/>
				<input type="hidden" id="add1" 			name="add1" value=""/>
				<input type="hidden" id="add2" 			name="add2" value=""/>
				<input type="hidden" id="add3" 			name="add3" value=""/>
				<input type="hidden" id="add4" 			name="add4" value=""/>
				<input type="hidden" id="add5" 			name="add5" value=""/>
				<input type="hidden" id="add6" 			name="add6" value=""/>
		    </form>
	    </div>

        <div class="result_box">
            <div class="img-area">
                <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg">
                <span id="result"></span>
                <script>$('input[name="name"]').keyup(function(){$("#result").text($('input[name="name"]').val());});</script>
            </div>
        </div>

        <div class="container">
            <div class="subscribe" data-limit=""></div>    
    
            <div class="description">
				<p id="event-period"></p>
				<span>대상 : ${resVo.target} </span>
            </div>
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
            
        </div>
    </div>
	
	<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
			
		initDate();
		eventCount('1350');
		getComment('1350');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1350');
		});
	});
	
	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				
				$(obj).append(html);
			}
			if(meoreData > 10) {
				$(obj).append('<button type="button" class="btn_moreSubscribe">댓글 더보기 &raquo;</button>');	
			}
		});
	}
	
    // iframe 자동 높이 조절 함수 (머리바바 필수)
    function iframeAutoHeight() {
        window.parent.postMessage({
            type: 'resize',
            height: document.body.scrollHeight
        }, '*');
    }
    setTimeout(iframeAutoHeight, 800); // iframe 자동 높이 조절 함수 (머리바바 필수)
    
    window.parent.postMessage({
        type: 'resize',
        height: document.body.scrollHeight
    }, '*');


    // 전체동의, 필수, 선택 동의
    $('#agree_all').click(function() {
        let isChecked = $(this).is(':checked');
        $('[name="agBox"], [name="agBox_mkt"]').prop('checked', isChecked);
    });

    $('[name="agBox"], [name="agBox_mkt"]').on('click', function() {
        let allChecked = $('[name="agBox"], [name="agBox_mkt"]').length === $('[name="agBox"]:checked, [name="agBox_mkt"]:checked').length;
        $('#agree_all').prop('checked', allChecked);
    });

    $('.btn-mkt-agreement').on('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        $('.mkt_agreement').slideToggle();
    });

    // slide
    const banner_swiper = new Swiper("#banner_slide", {
        spaceBetween: 15,
        slidesPerView: "3.5",
        slidesOffsetBefore: 30,
        slidesOffsetAfter: 20,
        365: {
            spaceBetween: 25,
        },
    })

    
    // 각 슬라이드에 클릭 이벤트 추가
    const slides = document.querySelectorAll('#banner_slide .swiper-slide');
    const ageBoxItems = document.querySelectorAll('.age-box');
    
    slides.forEach((slide, index) => {
        slide.addEventListener('click', function() {
            banner_swiper.slideTo(index)
            let slideIndex = index;
            ageBoxItems.forEach(age => age.classList.remove('active'));
            slides.forEach(slide => slide.classList.remove('active'));
            ageBoxItems[index].classList.add('active');
            slides[index].classList.add('active');
        });
    });

    const urlParams = new URLSearchParams(window.location.search);
    
    const age = urlParams.get('age');
    
    // 예시: 'age' 값에 따른 조건 처리
    if (age === '1') {
        slides.forEach(slide => slide.classList.remove('active'));
        slides[0].classList.add('active');
        ageBoxItems.forEach(age => age.classList.remove('active'));
        ageBoxItems[0].classList.add('active');
        banner_swiper.slideTo(0);
    }
    if (age === '2') {
        slides.forEach(slide => slide.classList.remove('active'));
        slides[1].classList.add('active');
        ageBoxItems.forEach(age => age.classList.remove('active'));
        ageBoxItems[1].classList.add('active');
        banner_swiper.slideTo(0);
    }
    if (age === '3') {
        slides.forEach(slide => slide.classList.remove('active'));
        slides[2].classList.add('active');
        ageBoxItems.forEach(age => age.classList.remove('active'));
        ageBoxItems[2].classList.add('active');
        banner_swiper.slideTo(2);
    }
    if (age === '4') {
        slides.forEach(slide => slide.classList.remove('active'));
        slides[3].classList.add('active');
        ageBoxItems.forEach(age => age.classList.remove('active'));
        ageBoxItems[3].classList.add('active');
        banner_swiper.slideTo(3);
    }


        // slide
        const top_swiper = new Swiper("#top_slide", {
        direction: 'vertical',
        // slidesPerView: 1,
        spaceBetween: 10,
        // centeredSlides: true,
        speed: 1000, // 슬라이드 전환 속도 (밀리초)
        // initialSlide: 1,
        autoHeight: true,
        autoplay: {
            delay: 2000, // 3초마다 슬라이드
            disableOnInteraction: false, // 사용자가 슬라이드를 터치해도 자동 재생이 멈추지 않음
        },
        loop: true,
        slidesPerView: "auto",
        // breakpoints: {
        //     // 500px 이하일 때 적용
        //     500: {
        //         slidesPerView: 1, // 슬라이드 개수 1로 변경
        //         spaceBetween: 10, // 슬라이드 간 간격 줄이기
        //     }
        // }
    })


    // 설문이미지 Click bind
    $('[name*="tadd"]').bind('click', function() {
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
        $('.monitor').children('img').attr('src', '//static.resta.co.kr/event/v_${eventSeq}/img_0'+(Number($(this).parents('label').index())+1)+'.png');
    });


	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		
		let tage = procForm.querySelector('select[name="tage"]');

		if (!tage) {
		    alert("연령대 항목을 입력해주세요.");
		    return;
		} else {
		    procForm.querySelector("input[name='age']").value = tage.value;
		}
		
		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		if ($('input[name="agBox"]:checked').val() && !$('input[name="agBox_mkt"]:checked').val()) {
		 	alert("개인정보 제 3자 제공에 동의해주셔야 이벤트 신청이 가능합니다.");
		    $('input[name="agBox_mkt"]').prop('checked', true);
		    return false;
		}
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			, 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>