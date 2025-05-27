<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {font-family: 'Gmarket Sans';}
.page:not(#page-1){display:none;}
#wrap{background:#ffffff; padding-top: 3%;}
.form, .form .formContents{background-color:#ffffff;}
.page:not(#page-1) {padding: 5% 15% 0; margin: 0 auto;}
.page:not(#page-1) .img-area {margin-bottom: 3%;}
.gage_box {padding-bottom: 5%;}

/* 비디오 영역 */
.form .video_container {width: 90%; margin: 0 auto;}
.form #location {width: 100%;} 

/* 룰렛 영역 */
.roulette {padding: 5%;}
.roulette image {width: 100%;}
.count_box {width: max-content; padding: 2% 20%; background: #416181; text-align: center; font-size: 150%; color: #fff; margin: 0 auto; border-radius: 2rem;}
#eventCnt {color: #b4f9ff;}

/* month */
#month {position: absolute; top: 12%; left: 50%; transform: translateX(-50%); font-size: 250%; font-weight: 700;}

.page .paging{padding:15% 10% 3%; margin: 0 auto; display: flex;    justify-content: space-between;}
.page .paging button{width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.page .paging button img{width:100%;}
.page .paging button a{display:block;}

#page-1 .paging{padding-top:5%;}

.form-box {margin-top: 10%;}
#wrap .formContents {position: static;}
.form .formContents .description{width:90%;margin:0 auto;text-align:center;box-sizing:border-box;}
.form-box .form-box-top {padding:5% 5% 0;}
.form-box .description {padding-bottom:2%;}
.form .question_box {text-align: center; padding: 4% 0 0; margin-bottom: 5%;}
.form .question_box .q_select {}
.form .question_box .q_select label{width:100%; padding: 3% 0; cursor:pointer; background: #ededed; border-radius: 0.8rem; font-size: 200%;}
.form .question_box .q_select label.on{background: #99ddf4;}
.form .question_box .q_select label:not(:last-child){margin-bottom: 2%;}
.form .question_box .q_select label img{width:95%;}

.form .next_btn_inQuestion {margin: 5% auto; cursor: pointer;}
.form .next_btn_inQuestion img {width: 100%;}

/* 이름, 전화번호 boz */
.formGroup {}
.form .table_box{ padding:0;background:#f4f4f4;border-radius:15px; margin-bottom:7px; }
.form .table_box input {background: #ededed; border-radius: 0.8rem; font-size: 120%; padding: 3%; text-align: left;}
.form .table_box input::placeholder{color: #323232; text-align: left;}

.form .table_box.top,
.form .table_box.middle,
.form .table_box.bottom {width:100%;}
.form .table_box.txt_box {width:95%; height: 130px;}
.form .table_box.bottom input {}

/* 개인정보 처리방침 */
.btn-agreement {font-size: 100%; text-align: center; font-weight: 700; display: block; color: #757474; font-weight: normal;}

/* submit btn */
.form .submit {width: 100%; margin: 0 auto; padding: 5% 0;}
.form .submit input[type="image"] {width: 100%;}

.subscribe {display: none;}

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
    #month {font-size: 150%;}
}

@media screen and (max-width: 390px){
    .count_box {padding: 2% 15%;}
    .form .question_box .q_select label {font-size: 150%;}
    .page:not(#page-1) {padding: 5% 10% 0;}
    #month {font-size: 120%;}
}

</style>
<!-- include -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<div id="wrap"> 
    <div class="count_box">현재까지 <span id="eventCnt"></span>명이 참여했습니다.</div>
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 

		<div class="formContents"> 
			<div class="clock-work"></div>
            <section class="page" id="page-1">
                <div class="poster_01">
                    <div class="img-area">
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.gif">
                        <span id="month">월 한정 혜택</span>
                    </div>
                    <div class="video_container">
                        <video id="location" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                        <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                    </div>
                    <a href="javascript:void(0);" class="btn-agreement">혜택 제공을 위한 <b>개인정보처리방침</b>에 동의해 주세요</a>
                    <div class="agreement">
                        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
                        <h3>개인정보처리방침</h3>
                        <ol>
							<li>개인정보 수집주체 : ${resVo.agent}</li>
							<li>개인정보 수집항목 : ${resVo.objectItems}</li>
							<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
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
                    <button type="button" onclick="show2pg()" class="first"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></button>
                </p>
			</section>

			<section class="page" id="page-2">
                <div class="img-area gage_box poster_03"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage_01.png"></div>
                <div class="img-area poster_04"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                <div class="question_box">
					<div class="q_select">
						<label><input type="radio" name="tadd1" value="이마/헤어라인">이마/헤어라인</label>
						<label><input type="radio" name="tadd1" value="정수리/가르마">정수리/가르마</label>
						<label><input type="radio" name="tadd1" value="여러부위">여러부위</label>
						<label><input type="radio" name="tadd1" value="기타">기타</label>
					</div>
				</div>
                <div class="next_btn_inQuestion"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png" onclick="pageFucAdd1()"></div>
			</section>

			<section class="page" id="page-3">
                <div class="img-area gage_box poster_05"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage_02.png"></div>
                <div class="img-area poster_06" style="margin-top: 5%;"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
                <div class="question_box">
					<div class="q_select">
						<label><input type="radio" id="age" name="age" value="20">20대</label>
						<label><input type="radio" id="age" name="age" value="30">30대</label>
						<label><input type="radio" id="age" name="age" value="40">40대</label>
						<label><input type="radio" id="age" name="age" value="50">50대 이상</label>
					</div>
				</div>
                <div class="next_btn_inQuestion"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png" onclick="pageFucAdd2()"></div> 
			</section>

			<section class="page" id="page-4">
                <div class="img-area gage_box poster_07"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage_03.png"></div>
                <div class="img-area poster_08" style="margin-top: 5%;"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_03.png"></div>
                    <div class="form-box poster_11">
                        <div class="formGroup">
                            <div class="table_box top">
                                <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/>
                            </div>
                            <!-- <div class="table_box middle">
                                <input type="tel" name="age" id="age" value="<?php echo $this->userProfile['age']??"";?>" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
                            </div> -->
                            <div class="table_box bottom">
                                <input type="tel" name="phone" id="phone" value="" class="inp inp-phone" required autocomplete="off" maxlength="11" placeholder="전화번호"/>
                            </div>
                            <input type="hidden" name="branch" id="branch" required value="gangnam"/>
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
        <div class="subscribe" data-limit=""></div>
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
		</form>
	</div>
</div>


<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->

<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
			
		initDate();
		eventCount('1325');
	});
	
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

    // 버튼 페이지 이동 함수 (설문)
	function pageFucAdd1() {
        if($('input[name="tadd1"]').is(':checked')) {
                setTimeout(function(){
                    show3pg()
                },100)
        } else {
            alert('설문을 체크해 주세요.');
        }
	}

	function pageFucAdd2() {
        if($('input[name="age"]').is(':checked')) {
                setTimeout(function(){
                    show4pg()
                },100)
        } else {
            alert('설문을 체크해 주세요.');
        }
	}

    //설문 클릭 시 클래스on 추가
    $('input[name*="tadd"], input[name*="age"]').bind('click', function() {
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});

    // 상단 month 문구
    const today = new Date()
    let month = today.getMonth() + 1;  // 월
    $('#month').text(month + '월 한정 혜택')

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let age = procForm.querySelector('input[name="age"]:checked');
		if (!age) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='age']").value = age.value;
		}
		
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
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
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			, 'branch': '지점'
			//,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>