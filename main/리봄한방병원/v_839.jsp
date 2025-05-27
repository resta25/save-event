<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
* {font-family: 'Gmarket Sans';}
.page:not(#page-1){display:none;}
#wrap{background:#ffffff;}
.form, .form .formContents{background-color:#ffffff;}
.page:not(#page-1) {width: 85%; margin: 0 auto;}
.page:not(#page-1) .img-area {margin-bottom: 3%;}

/* 비디오 영역 */
.form #location {width: 100%;} 

/* 룰렛 영역 */
.roulette {padding: 5%;}
.roulette image {width: 100%;}
.count_box {width: 70%; text-align: center; font-size: 200%; color: #fff; position: absolute; top: 35.5%; left: 54%; transform: translateX(-50%);}
.count {color: #fff799;}

/* 시침, 초침 */
.container {position: relative;}
.clock{position: absolute; top: 51.5%; left: 13%; background-color: #434f59; transition : all 0.05s; transition-timing-function : cubic-bezier(0.1, 2.7, 0.58, 1); transform-origin : 100%;}
.hourHand{width: 1.5%; height: 2px; transform: translate(-50%, -50%) rotate(0deg);}
.secondHand{left: 12.5%; width: 2.5%; height: 2px; transform: translate(-50%, -50%) rotate(0deg);}

.page .paging{padding:15% 10% 3%; margin: 0 auto; display: flex;    justify-content: space-between;}
.page .paging label{width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.page .paging label img{width:100%;}
.page .paging label a{display:block;}

#page-1 .paging{padding-top:5%;}

.form-box {margin-top: 10%;}
#wrap .formContents {position: static;}
.form .formContents .description{width:90%;margin:0 auto;text-align:center;box-sizing:border-box;}
.form-box .form-box-top {padding:5% 5% 0;}
.form-box .description {padding-bottom:2%;}
.form .question_box {text-align: center; padding: 4% 0 0; margin-bottom: 5%;}
.form .question_box .q_select {}
.form .question_box .q_select label{width:100%; padding: 3% 0; cursor:pointer; background: #ededed; border-radius: 0.8rem; font-size: 200%;}
.form .question_box .q_select label.on{background: #aaa;}
.form .question_box .q_select label:not(:last-child){margin-bottom: 2%;}
.form .question_box .q_select label img{width:95%;}

.form .next_btn_inQuestion {width: 70%; margin: 5% auto; cursor: pointer;}
.form .next_btn_inQuestion img {width: 100%;}

/* 이름, 전화번호 boz */
.formGroup {}
.form .table_box{ padding:0;background:#f4f4f4;border-radius:15px; margin-bottom:7px; }
.form .table_box input {background: #ededed; border-radius: 0.8rem; font-size: 120%; padding: 3%; text-align: left;}
.form .table_box input::placeholder{color: #323232; text-align: left;}

.form .table_box.top {width:95%;}
.form .table_box.middle {width: 95%;}
.form .table_box.bottom {width:95%;}
.form .table_box.txt_box {width:95%; height: 130px;}
.form .table_box.bottom input {}

/* 개인정보 처리방침 */
.btn-agreement {font-size: 100%; text-align: center; font-weight: 700; display: block; color: #757474; font-weight: normal; padding-bottom: 5%;}

/* submit btn */
.form .submit {width: 85%; margin: 0 auto; padding: 5% 0;}
.form .submit input[type="image"] {width: 100%;}

/* font */
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@media screen and (max-width: 500px){
    .count_box {font-size: 130%;}
    .form .description p,
    .form .description .ad_txt,
    .form .description span {font-size: 80%;}
}

</style>
<!-- include -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<div id="wrap"> 
    <div class="container">
        <div class="img-area roulette">
            <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png">
            <div class="count_box">혜택 마감까지 <span class="count"></span> 남았습니다.</div>
        </div>
        <!-- 시침 -->
        <div class="clock hourHand" style="transform: translate(-50%, -50%) rotate(106.5deg);"></div>
        <!-- 초침 -->
        <div class="clock secondHand" style="transform: translate(-50%, -50%) rotate(162deg);"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

        <div class="formContents"> 
            <div class="clock-work"></div>
            <section class="page" id="page-1">
                <div class="poster_01">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
                    <video id="location" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                    <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                    <div class="agreement">
                        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
                        <h3>개인정보처리방침</h3>
                        <ol>
                            <li>개인정보 수집주체 : ${resVo.agent}</li>
                            <li>개인정보 수집항목 : ${resVo.objectItems}</li>
                            <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(전화,문자)</li>
                            <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
                        </ol><br/>
                        <h3>개인정보 취급 위탁</h3>
                        <ol>
                            <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
                            <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
                            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                        </ol>
                    </div>
                </div>

                <p class="paging poster_02">
                    <label onclick="show2pg()" class="first"><input type="radio" name="agBox" checked><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></label>
                </p>
                <a href="javascript:void(0);" class="btn-agreement">혜택 제공을 위한 <b>개인정보처리방침</b>에 동의해 주세요</a>
            </section>

            <section class="page" id="page-2">
                <div class="img-area poster_03"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage_01.png"></div>
                <div class="img-area poster_04"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                <div class="question_box">
                    <div class="q_select">
                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="예">예</label>
                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="아니오">아니오</label>
                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="잘 모르겠음">잘 모르겠음</label>
                    </div>
                </div>
                <div class="next_btn_inQuestion"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png" onclick="pageSelFuc(2,$(this))"></div>
            </section>

            <section class="page" id="page-3">
                <div class="img-area poster_05"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage_02.png"></div>
                <div class="img-area poster_06" style="margin-top: 5%;"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
                <div class="question_box">
                    <div class="q_select">
                        <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tadd2" value="허리">허리</label>
                        <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tadd2" value="골반">골반</label>
                        <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tadd2" value="그 외">그 외</label>
                    </div>
                </div>
                <div class="next_btn_inQuestion"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png" onclick="pageSelFuc(2,$(this))"></div> 
            </section>

            <section class="page" id="page-4">
                <div class="img-area poster_07"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage_03.png"></div>
                <div class="img-area poster_08" style="margin-top: 5%;"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_03.png"></div>
                    <div class="form-box poster_11">
                        <div class="formGroup">
                            <div class="table_box top">
                                <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름"/>
                            </div>
                            <div class="table_box middle">
                                <input type="tel" name="age" id="age" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
                            </div>
                            <div class="table_box bottom">
                                <input type="tel" name="phone" id="phone" class="inp inp-phone" required autocomplete="off" maxlength="11" placeholder="전화번호"/>
                            </div>
                            <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_04.png" /></div>
                        </div>
                        <div class="description">
                            <div class="description-info">
                                <p id="event-period"></p>
                                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            </div>
                            <span>대상 : ${resVo.target}</span>
                        </div>
                    </div>
                </section>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>	
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>	
        </div>
        <!-- common input start-->
        <input type="hidden" id="branch" 		name="branch" value="${resVo.branch}"/>
        <input type="hidden" id="eventSeq" 		name="eventSeq" value="${resVo.eventSeq}"/>
        <input type="hidden" id="site" 			name="site" value="${site}"/>
        <input type="hidden" id="media" 		name="site" value="${media}"/>
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
        <!-- common input end-->
        </form>
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

    /* 기간항목 start */
	initDate();
	/* 기간항목 end */

    $(document).ready(function(){
        //드레그, 우클릭 방지
        blockSourceView()
    })
    let isAnimating = false; // 애니메이션 상태 플래그
    // 첫번째 페이지
    function show1pg(){    
        const animation01 = gsap.timeline();
        animation01.from('#page-1 .poster_01', { y: +50, delay: 0.2, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_02', { y: +50, delay: 0.8, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
    }
    show1pg();
    // 두번째 페이지
    function show2pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation02 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_02', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0.1 });
        animation02.from('#page-2 .poster_03', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
    }
    // 세번째 페이지
    function show3pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation03.to('#page-2 .poster_03', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
        animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'block', duration: 0.1 });
        animation03.from('#page-3 .poster_05', {x: +200, opacity: 0, duration: 0.});
        animation03.from('#page-3 .poster_06', {x: +200, opacity: 0, duration: 0.});
        animation03.from('#page-3 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation03.from('#page-3 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
    }
    // 마지막 페이지
    function show4pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation04 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation04.to('#page-3 .poster_05', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3 .poster_06', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation04.to('#page-3 .question_box .q_select > label', {x: -100, opacity: 0});
        animation04.to('#page-3 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation04.to('#page-3', { display: 'none' });
        animation04.to('#page-4', { display: 'block', duration: 0.1 });
        animation04.from('#page-4 .poster_07', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .poster_08', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .table_box.top', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .table_box.middle', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .table_box.bottom', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .submit', {x: +200, opacity: 0, duration: 0.2});
        animation04.from('#page-4 .description', {x: +200, opacity: 0, duration: 0.2});
    }

        // 시계 시,분,초침 작동 start
    const minuteHand = document.querySelector('.minuteHand');
    const hourHand = document.querySelector('.hourHand');
    const secondHand = document.querySelector('.secondHand');

    function setDate() {
        const now = new Date();
        const seconds = now.getSeconds();
        const minutes = now.getMinutes();
        const hours = now.getHours() % 12; // 12시간제로 계산

        // 초침 각도 계산 (초침은 1초에 6도씩 회전)
        const secondsDegrees = (seconds / 60) * 360 + 90;
        secondHand.style.transform = `translate(-50%, -50%) rotate(${secondsDegrees}deg)`;

        // 분침 각도 계산 (분침은 1분에 6도씩 회전)
        const minutesDegrees = (minutes / 60) * 360 + 90;
        // minuteHand.style.transform = `translate(-50%, -50%) rotate(${minutesDegrees}deg)`;

        // 시침 각도 계산 (시침은 1시간에 30도씩 회전 + 분에 따른 시침 이동 보정)
        const hoursDegrees = (hours / 12) * 360 + (minutes / 60) * 30 + 90;
        hourHand.style.transform = `translate(-50%, -50%) rotate(${hoursDegrees}deg)`;
    }

    // 초침은 1초마다 업데이트
    setInterval(() => {
        setDate();
    }, 1000); // 1000ms = 1초

    // 페이지 로드 시 처음 한 번 설정
    setDate();
    // 시계 시,분,초침 작동 end

    // 신청 인원 카운트다운 기능
    let remainingCount = 45; // 초기 인원수
    const $countElement = $('.remaining-count'); // 숫자를 표시하는 요소

    // 카운트다운 시작
    const countdownInterval = setInterval(() => {
        if (remainingCount > 1) {
            remainingCount--; // 1명 차감
            $countElement.text(remainingCount + '명'); // 새로운 값 표시
        } else {
            clearInterval(countdownInterval); // 0명이 되면 카운트다운 중지
            $countElement.text(1 + '명'); // 0으로 표시
        }
    }, 5000); // 5000ms = 5초 간격
	
	// 버튼 페이지 이동 함수 (설문)
	function pageSelFuc(num, obj) {
	    if($('input[name="tadd' + num + '"]').is(':checked')) {
	        $('.section0' + num).fadeOut(function() {
	            $('.section0' + (num + 1)).fadeIn();
	            $(document).scrollTop(0);
	        });
	    } else {
	        alert('설문을 체크해 주세요.');
	    }
	}

    //설문 클릭 시 클래스on 추가
    $('input[name*="tadd"]').bind('click', function() {
        $(this).closest('.q_select').find('label').removeClass('on');			
        $(this.parentNode).addClass('on');	
    });

    // count
    $(document).ready(function() {
        let count = 45; // 초기 인원 수
        const intervalTime = 3000; // 3초마다 업데이트

        // 인원 수 업데이트 함수
        function updateCount() {
            let countText = count + '명'
            $('.count').text(countText); // 인원 수를 화면에 표시

            count--; // 인원 수 감소
            if (count < 0) {
                count = 45; // 0이 되면 다시 45로 초기화
            }
        }

        // 3초마다 updateCount 함수 실행
        setInterval(updateCount, intervalTime);

        // 페이지 로드 시 초기 인원 표시
        updateCount();
    });
    function setScreenSize() {
        let vh = window.innerHeight * 0.01;
        document.documentElement.style.setProperty('--vh', `${vh}px`);
    }
    setScreenSize();
    window.addEventListener('resize', setScreenSize);

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio1.value;
		}

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		 let selectedRadio3 = procForm.querySelector('input[name="agBox"]:checked');
			if (!selectedRadio3) {
		 	alert("개인정보 처리방침에 동의해주세요.");
		 	return;
		 } else {
		 	procForm.querySelector("input[name='agBox']").value = selectedRadio1.value;
		 }
	
		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			, 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}

</script>