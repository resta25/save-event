<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {margin: 0; padding: 0; box-sizing: border-box; font-family: 'Noto Sans KR', sans-serif;}
*::-webkit-scrollbar {display: none;}

html {scroll-behavior: smooth;}

:root {
	--color-main-bg: #ebf5ff;           /* 메인 백그라운드 */
	--color-start-btn: #000087;         /* 동의 버튼 */
	--color-start-txt: #fff;            /* 동의 텍스트 */
	--color-progress-bg: #000087;          /* 진행 상황 백그라운드 */
	--color-progress-txt: #fff;         /* 진행 상황 텍스트 컬러 */
	--font-size-progress: 24px;           /* 진행 상황 폰트 사이즈 */
	--progress-border-radius: 2em;        /* 진행 상황 둥글기 */
	--color-percent: #fbd504;           /* 퍼센트 텍스트 컬러 */
	--color-left-chat-bg: #fbfaff;         /* 좌측 설문 백그라운드 */
	--color-right-checked: #8e8eff;     /* 우측 체크 후 설문 백그라운드 */
	--color-checked-txt: #000;          /* 우측 체크 후 설문 텍스트 */
	--color-next-btn: #000087;          /* 우측 제출 버튼 백그라운드, 보더 색상 */
	--color-next-txt: #fff;             /* 우측 다음 버튼 텍스트 */
	--border-gray: 1px solid #807f96;   /* 공통 보더 */
	--font-size-chat-left: 28px;          /* 좌측 채팅 폰트 사이즈 */
	--font-size-chat-right: 28px;         /* 우측 채팅 폰트 사이즈 */
}

.hide {display: none !important;}
#wrap, .form {background-color: var(--color-main-bg);}
.c_percent {color: var(--color-percent);}
.mb_3 {margin-bottom: 3%;}
.flex_item {display: flex; gap: 0.8em;}

#wrap {height: calc(var(--93px, 1vh) * 100); overflow: hidden;}
#wrap {display: grid; grid-template-rows: auto 1fr auto;}
#wrap .form {overflow-y: scroll;}
#form-1 {padding: 2% 3% 0;}
#wrap .container_top {padding: 5%;}

/* 공통 폰트 사이즈 */
.chat_box, .input_box .next_btn, .form .inp, input[type="submit"] {letter-spacing: -1px;}

/* 공통 border */
.chat_set.left .chat_box {border: var(--border-gray);}
.chat_box, .input_box, .chat_set.left {border-radius: 0.5em;}
.progress_box .progress_txt {border-radius: var(--progress-border-radius);}

/* checked box color */
.q_select label input:checked + .chat_box:not(.disagree_btn) {color: var(--color-start-txt); background-color: var(--color-right-checked);}

/* input 옆 버튼 공통 */
.input_box .next_btn, input[type="button"] {padding: 0.3em 0.7em; width: 60%; justify-self: right; text-align: center; font-size: var(--font-size-chat-right); font-weight: 700; border-radius: 0.3em; border: none; cursor: pointer; color: var(--color-next-txt); background-color: var(--color-next-btn);}

.chat_set:not(:last-child) {margin-bottom: 4%;}

/* 채팅 left */
.chat_set.left {display: grid; grid-template-columns: 1fr 9fr; gap: 2%;}
.chat_set.left:not(:first-of-type){align-items: end;}
.chat_set.left .chat_profile img {width: 100%; border-radius: 9999px; border: 1px solid #d9d9d9;}
.chat_set.left .progress_box .progress_txt {display: inline-block; margin-bottom: 1%; padding: 0.2em 1em 0.3em; font-size: var(--font-size-progress); font-weight: 700; color: var(--color-progress-txt); background-color: var(--color-progress-bg);} /* 진행상황 */
.chat_set.left .chat_box {width: 6em; height: 2.34em; display: inline-block; padding: 0.4em 0.7em; font-size: var(--font-size-chat-left); background-color: var(--color-left-chat-bg); transform-origin: left top; animation: .3s chatBoxSizeUp .5s forwards;}
.chat_set.left .chat_box .chat_txt {opacity: 0; animation: .3s fadeIn .6s forwards;}

/* 채팅 right */
.chat_set.right {display: flex; justify-content: flex-end;}
.chat_set.right .chat_box {padding: 0.3em 0.6em 0.4em; text-align: center; font-size: var(--font-size-chat-right); font-weight: 700; color: var(--color-start-txt); background-color: var(--color-start-btn);}

/* chat_box 로딩 */
.chat_set.left .chat_box {position: relative; overflow: hidden;}
.loader_box {position: absolute; top: 0; left: 0; display: flex; align-items: center; justify-content: center; width: 100%; height: 100%; background-color: #fff;}
.loader_box .loader {position: relative; z-index: 9; width: 0.5em; height: 0.5em; border-radius: 50%; background-color: #000; box-shadow: 1em 0 #000, -1em 0 #000; animation: flash .3s ease-out infinite alternate;}

/* 설문 */
.question_box .q_select label {position: relative; cursor: pointer;}
.question_box .q_select label input::after {display: none; content: ''; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}

/* 이름, 연락처 input */
.input_box {display: grid; gap: 0.5em; width: 70%;}
.form .inp {padding: 0.3em 0.8em 0.4em; font-size: var(--font-size-chat-right); border-radius: 0.3em; border: var(--border-gray); background-color: #fff;}
.form .inp::placeholder {color: #a3a3a3;}

.form .description {margin-bottom: 5%; text-align: right; font-size: 13px; opacity: .5;}
.agree_txt {cursor: pointer;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; top: 0; left: 0; display: none; width: 100vw; height: 100vh; background-color: #0007;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 90%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .agree_content {padding: 43px 4% 6%;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 3%; padding: 1%; cursor: pointer; font-size: 22px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}
.btn-agreement {cursor: pointer;}

/* loader animation */
@keyframes flash {
	0% { background-color: #0002; box-shadow: 1em 0 #0002, -1em 0 #000; }
	50% { background-color: #000; box-shadow: 1em 0 #0002, -1em 0 #0002; }
	100% { background-color: #0002; box-shadow: 1em 0 #000, -1em 0 #0002;}
}

@keyframes chatBoxSizeUp {
	100% {width: auto; height: auto;}
}

@keyframes fadeIn {
	0% {opacity: 0;}
	100% {opacity: 1;}
}

@media screen and (max-width: 500px) {
	:root {
		--font-size-chat-left: 4vw;       /* 좌측 채팅 폰트 사이즈 */
		--font-size-chat-right: 4.8vw;    /* 우측 채팅 폰트 사이즈 */
		--font-size-progress: 3.2vw;      /* 진행 상황 폰트 사이즈 */
	}

	/* 공통 폰트 사이즈 */
	.chat_set.right .chat_box {padding: 0.3em 0.5em 0.4em;}

	.form .description, .notice {font-size: 2.5vw;}
}
</style>

<div id="wrap">
    <div class="container container_top">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.gif"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">
            <!-- chat01 -->
            <div class="chat_set left" data-value="1" style="">
                <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                <div class="chat_container">
                    <div class="chat_box">
                        <div class="chat_txt">
                            안녕하세요 모발이식 상담센터입니다.<br>
                            <b>모발이식 비용 혜택 안내</b>를 도와드리겠습니다.
                        </div>
                        <div class="loader_box" style="display: none;">
                            <span class="loader"></span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="chat_set left" data-value="1" style="">
                <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                <div class="">
                    <div class="progress_box">
                        <span class="progress_txt">진행상황 <span class="c_percent">25%</span></span>
                    </div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt">모발이식<strong> 필요한 부위</strong>를 선택해 주세요.</div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="chat_set right" data-value="1" style="">
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="이마"><div class="chat_box">이마</div></label>
                    <label><input type="radio" name="tadd1" value="정수리" ><div class="chat_box">정수리</div></label>
                    <label><input type="radio" name="tadd1" value="여러부위" ><div class="chat_box">여러부위</div></label>
                    <label><input type="radio" name="tadd1" value="기타" ><div class="chat_box">기타</div></label>
                </div>
            </div>

            <!-- chat02 -->
            <div class="chat_set left hide" data-value="2">
                <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                <div class="">
                    <div class="progress_box">
                        <span class="progress_txt">진행상황 <span class="c_percent">50%</span></span>
                    </div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt">혜택 받으실 분의 <strong>연령대</strong>를 선택해 주세요.</div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="chat_set question_box right hide" data-value="2">
                <div class="q_select">
                    <label><input type="radio" name="age" value="20" ><div class="chat_box">20대</div></label>
                    <label><input type="radio" name="age" value="30"><div class="chat_box">30대</div></label>
                    <label><input type="radio" name="age" value="40"><div class="chat_box">40대</div></label>
                    <label><input type="radio" name="age" value="50"><div class="chat_box">50대 이상</div></label>
                </div>
            </div>

            <!-- chat03 -->
            <div class="chat_set left hide" data-value="3">
                <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                <div class="">
                    <div class="progress_box">
                        <span class="progress_txt">진행상황 <span class="c_percent">75%</span></span>
                    </div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt">
                                개인정보수집이용동의 부탁드립니다.<br>
                                상담 외 어떠한 목적으로도 사용하지 않습니다.<br>
                                <strong class="btn-agreement">[자세히 보기]</strong>
                            </div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="chat_set question_box right hide" data-value="3">
                <div class="q_select">
                    <label><input type="radio" ><div class="chat_box disagree_btn" onclick="alert('미동의 시 이벤트 참여하실 수 없습니다.');">미동의</div></label>
                    <label><input type="radio" name="agBox" class="agree_btn"><div class="chat_box">동의</div></label>
                </div>
            </div>

            <!-- chat04 -->
            <div class="chat_set left hide" data-value="4">
                <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                <div class="">
                    <div class="progress_box">
                        <span class="progress_txt">진행상황 <span class="c_percent">100%</span></span>
                    </div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt">
                                모발이식 비용 혜택 받으실 분의<br>
                                <strong>성함과 연락처</strong>를 입력해 주세요.
                            </div>
                            <div class="loader_box">
                                <span class="loader"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="chat_set right hide" data-value="4">
                <div class="input_box">
                    <input type="text" name="name" class="inp" id="name" required="" autocomplete="off" maxlength="7" placeholder="이름">
                    <input type="tel" name="phone" class="inp" id="phone" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                    <input type="hidden" name="branch" id="branch" value="seomyeon">
                    <input type="button" value="제출하기" onclick="fnForm('form-1')">
                </div>
            </div>
            <div class="chat_set right hide" data-value="4">
                <div class="description">
                    <p id="event-period"></p>
                    <span>대상 : ${resVo.target}</span>
                </div>
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

        <!-- 개인정보처리방침 모달창 -->
        <div class="overlay"></div>
        <div class="agreeModalBox">
            <div class="agree_content">
                <div class="closeBtn">x</div>
                <div class="newAgreement">
                    <div class="agreementContent">
					<div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
					<h3>개인정보처리방침</h3>
					<ol>
						<li>개인정보 수집주체 : ${resVo.agent}</li>
						<li>개인정보 수집항목 : ${resVo.objectItems}</li>
						<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(전화,문자)</li>
						<li>개인정보 보유 및 이용기간 : 수집일로부터 5년 (고객 동의 철회시 지체없이 파기)</li>
					</ol><br/>
					<h3>개인정보 취급 위탁</h3>
					<ol>
						<li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
						<li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
						<br/>
						<li>개인정보 취급 위탁을 받는자 : (주)모모랩스</li>
						<li>개인정보 취급 위탁을 하는 업무의 내용 : 이벤트, 전산관리 위탁</li>
						<br/>
						<li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
					</ol>
					</div>
                </div>
            </div>
            <script>$('.btn-agreement').on('click', function() {$('.agreeModalBox').fadeIn();$('.overlay').fadeIn();}); $('.agreeModalBox .closeBtn').on('click', function() {$('.agreeModalBox').fadeOut();$('.overlay').fadeOut();});</script>
        </div>
    </div>

    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        //드레그, 우클릭 방지
        blockSourceView()
		
		// 모든 chat_set 숨김 처리
        $('.chat_set[data-value="1"]').hide();

        // 첫 번째 chat_set left 표시
        $('.chat_set[data-value="1"].left').first().fadeIn(500, function () {
            // 첫 번째가 표시된 후, 다음 chat_set left 표시
            $(this).nextAll('.chat_set[data-value="1"].left').first().fadeIn(500);
            $('.chat_set[data-value="1"].right').fadeIn(800);
        });
    });
	
	
	// 설문 답변 셀렉 시, 나머지 셀렉 없애기
	    $('.question_box .q_select label input').on('click', function() {
	        var selectedInputName = $(this).attr('name');
	        $('.question_box .q_select label input[name="' + selectedInputName + '"]:not(:checked) + .chat_box').css('display', 'none');
	    });

	    function showNextComment(currentValue, nextValue, isLeft) {
	        var selector = isLeft ? '.chat_set.left' : '.chat_set.right';
	        $('.chat_set.left[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn(function() {
	            $(this).find('.loader_box').delay(200).fadeOut(); // loader
	        });
	        if (selector) {
	            setTimeout(function () {
	                $('.chat_set.right[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn();
	            }, 1000);
	        }
	        scrollFormToBottom();
	    }

	    showNextComment(0, 1, false); // 맨 처음 대화창 이펙트

    // 동의 버튼 클릭 시
    $('.agree_btn').one('change', function () {
        $(this).addClass('selected');
        $('.disagree_btn').hide();
        showNextComment(3, 4, true); // Show next chat_set.left
        showNextComment(3, 4, false); // Show next chat_set.right
        return false;
    });

    // 설문 셀렉 시
    $('input[name^="tadd"], input[name^="age"]').on('change', function () {
        var currentValue = $(this).closest('.chat_set').data('value');
        var nextValue = currentValue + 1;

        showNextComment(currentValue, nextValue, true); // Show next chat_set.left
        showNextComment(currentValue, nextValue, false); // Show next chat_set.right
    });

    // 원하는 위치로 이동
    function scrollFormToBottom() {
        const form = $(".form");
        form.delay(500).animate({ scrollTop: form[0].scrollHeight }, 300, 'linear');
    }

    /* 기간항목 start */
	initDate();
	/* 기간항목 end */

    //Submit
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
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>
