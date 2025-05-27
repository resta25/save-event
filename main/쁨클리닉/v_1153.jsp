<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {box-sizing: border-box; font-family: 'Noto Sans KR', sans-serif;}

/* 공통 폰트 사이즈 */
.label {font-size: 28px;}
.form .question_box.row .q_select label, .form .question_box.row .q_select .inp {font-size: 28px;}

.form{padding-top: 5%;}
.form .formContents{padding: 0 0 9%;}

/* label css */
.label {position: relative; padding: 0.3em 0; width: 100%; text-align: center; font-weight: 600; border: 1px solid #111; border-radius: 0.3em; overflow: hidden;}
.label span {position: inherit; z-index: 1;}

/* question_box 활성화 시 효과 css */
.form .question_box.disabled .label{opacity: 0.4; background-color: #ececec;}
.form .question_box.disabled .q_select span, .form .question_box.disabled .inp{opacity: 0.4;}
.form .question_box .label::before{position: absolute; left: 0; top: 0; display: block; width: 0; height: 100%; content: ''; background-color: #ffffdc;}
.form .question_box.active .label::before{transition: all .8s ease-out; width: 100%;}

/* question_box.row 기본 css */
.form .question_box.row {padding: 0 8%; display: grid; grid-template-columns: 1.2fr 4fr; gap: 1em;}
.form .question_box.row:not(:last-child) {margin-bottom: 0.7em;}
.form .question_box.row .q_select {padding-left: 5%; border-bottom: 1px solid #111;}
.form .question_box.row .q_select label {padding: 1% 1% 0 0;}

.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before{border: 1px solid #111;}
.form .agBox{width: 100%;}
.form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

.description p{margin-top: 3% !important;}

/* 이름 출력 */
.txtPrintBox{position:relative; text-align: center;}
.txtPrintBox #result{position:absolute; top: 50%; left: 7.5%; transform: translateY(-50%); width:19%; overflow:hidden; font-size:25px; font-weight:600;}
.txtPrintBox .namePrint{width:100%;}

/* 버튼 효과 */
@keyframes pulsating {
	50% {transform: scale(0.95);}
}

@media screen and (max-width: 500px){
	/* 공통 폰트 사이즈 */
	.label {font-size: 3.7vw;}
	.form .question_box.row .q_select label, .form .question_box.row .q_select .inp {font-size: 3.1vw;}

	.txtPrintBox #result{font-size:3vw;} /* 이름 출력 */
}
</style>
<!-- // PUSH_ALARM -->
<script src="//static.resta.co.kr/libs/pushAlarm/pushAlarm.js"></script>
<link rel="stylesheet" href="//static.resta.co.kr/libs/pushAlarm/pushAlarm.css">
<!-- PUSH_ALARM // -->

<div id="wrap"> 
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.gif"></div>
	</div>

    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8"> 

        <div class="question_box row" data-value="1">
            <div class="label"><span>이름</span></div>
            <div class="q_select">
                <input type="text" name="name" id="name" class="inp" data-value="1" onkeyup="enableNextEl(this);" required="" autocomplete="off" placeholder="이름을 입력해 주세요">
            </div>
        </div>

        <div class="question_box row disabled" data-value="2">
            <div class="label"><span>연락처</span></div>
            <div class="q_select">
                <input type="tel" name="phone" id="phone" class="inp" data-value="2" onkeyup="enableNextEl(this);" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해 주세요" disabled="">
            </div>
        </div>

        <div class="question_box row disabled" data-value="3">
            <div class="label"><span>연령대</span></div>
            <div class="q_select">
                <label><input type="radio" name="tadd1" data-value="3" onclick="enableNextEl(this);" value="20대" disabled=""><span>20대</span></label>
                <label><input type="radio" name="tadd1" data-value="3" onclick="enableNextEl(this);" value="30대" disabled=""><span>30대</span></label>
                <label><input type="radio" name="tadd1" data-value="3" onclick="enableNextEl(this);" value="40대" disabled=""><span>40대</span></label>
                <label><input type="radio" name="tadd1" data-value="3" onclick="enableNextEl(this);" value="50대 이상" disabled=""><span>50대 이상</span></label>
            </div>
        </div>

        <div class="question_box row disabled" data-value="4">
            <div class="label"><span>지점</span></div>
            <div class="q_select">
                <label><input type="radio" name="branch" data-value="3" onclick="enableNextEl(this);" value="강남" disabled=""><span>강남</span></label>
                <label><input type="radio" name="branch" data-value="3" onclick="enableNextEl(this);" value="신논현" disabled=""><span>신논현</span></label>
            </div>
        </div>

        <!-- 이름 출력 -->
        <div class="txtPrintBox">
            <div id="result"></div>
            <img class="namePrint" src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg">
            <script>$('input[name="name"]').keyup(function(){$("#result").text($('input[name="name"]').val());});</script>
        </div>

        <div class="formContents">
            <div class="agBox">
                <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
            </div>
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
            <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
            <div class="description">
                <span>대상 :  ${resVo.target}</span>
                <p id="event-period"></p>
                <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를<br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
			<input type="hidden" id="add1" 			name="add1" value=""/>
			<input type="hidden" id="add2" 			name="add2" value=""/>
			<input type="hidden" id="add3" 			name="add3" value=""/>
			<input type="hidden" id="add4" 			name="add4" value=""/>
			<input type="hidden" id="add5" 			name="add5" value=""/>
			<input type="hidden" id="add6" 			name="add6" value=""/>
        </form>
    </div>

	<div class="push"></div>
	
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.jpg"></div>
        <video id="location" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/231024.mp4" type="video/mp4"></video>
        <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
		<div class="subscribe" data-limit="10"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>

</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
		
		getComment('1153');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1153');
		});
	});
	
	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				$('.push').append('<div class="pushAlarm animate__animated">지금 <span class="highlight">' + data[v].name + '님이</span> 비용을 알아보셨습니다.</div>');
				
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
			$('.pushAlarm').pushAlarm({
				speed : 3000,
				animate_speed : 0.2,
				animate : 'animate__zoomIn',
				highlight : '#00ffff'
			});
		});
	}

	 // 설문 click or keyup 시 다음 셀렉 활성화, CSS
	 function enableNextEl(obj) {
	     let currentValue = obj.getAttribute('data-value');
	     let currentQuestionBox = obj.closest('.question_box');
	     
	     let nextQuestionBoxes = document.querySelectorAll('.question_box[data-value="'+ (Number(currentValue) + 1) +'"]');

	     nextQuestionBoxes.forEach(function(nextQuestionBox) {
	         let nextInputs = nextQuestionBox.querySelectorAll('input');
	         nextInputs.forEach(function(nextInput) {
	             nextInput.removeAttribute('disabled');
	         });
	         nextQuestionBox.classList.remove('disabled');
	     });

	     currentQuestionBox.classList.add('active');
	 }

    // 이미지 변경 스크립트 추가
    $('input[name="branch"]').change(function() {
        if ($(this).is(':checked')) {
            $(".namePrint").attr("src", "//static.metamarketing.co.kr/event/v_5638/event_main_04.jpg");
        }
    });

	$('.pushAlarm').pushAlarm({
		speed : 3000,
		animate_speed : 0.2,
		animate : 'animate__zoomIn',
		highlight : '#00ffff'
	});
	
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		
		let selectedRadio2 = procForm.querySelector(`input[name="branch"]:checked`);
		if (!selectedRadio2) {
			alert("지점 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		/*
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`);
		if (!selectedRadio3) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		}
		*/


		var required = {
			'name': '이름'
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문'
			// ,'add2': '설문'
			// ,'add3': '설문'
			,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script> 