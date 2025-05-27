<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');
#wrap{font-family: 'noto sans kr';}

.q_select{font-size: 130%;}
.form .description {width: 100%;}
/* .form .description.orage-box > *{color:#fff; font-size:100%;color:#fff; padding:2% 4%;} */
.form .description.orage-box * {color:#a4263c; font-size: 100%; font-weight: 700;}
.form .description.orage-box p {position: absolute; top: 3.7%; left: 7%;}
.form .description.orage-box span {position: absolute; top: 3.7%; right: 18%;}

.form .question {position: relative;}
.question_container_bg {position: absolute; top: 54%; left: 50%; transform: translateX(-50%); width: 100%;}
.question_container {position: relative;}
.form .question_box {position: absolute; top: 7%; left: 50%; transform: translateX(-50%); width: 80%;}

.form .question_box .question {width: 100%; margin: 0 auto; margin-bottom: 2%;}
.selected_area{background-color:#000; padding:3% 5%;}
.form .question_box .q_select{padding: 1% 0 1% 9%; position: absolute; z-index: 1; display: flex; top: 5%; left: 23%;}
.form .question_box .q_select label,
label.selected_label{width: 125px; height: 62px; border-radius:10px; margin-right:1%; margin-bottom:2%; text-align: center; line-height: 62px; color: #fff; cursor: pointer;}

.form .question_box .q_select:nth-of-type(2) label{background-color: #ff4e69;}
.form .question_box .q_select:nth-of-type(2) label.on,
label.add1{background-color: #000; color:#fff;}

.form .question_box .q_select:nth-of-type(4) label{background-color: #000;}
.form .question_box .q_select:nth-of-type(4) label.on,
label.add2{background-color: #000;}
.form .question_box .q_select label{background-color: #ff4e69 ;}
.form .question_box .q_select label.on,
label.add3{background-color: #000; color:#fff;}

/* user db입력칸 (이름) */
.form .user_info {width: 100%; margin: 0 auto;}
.form .user_info .user_name {position: relative; margin-bottom: 2%;}
.form .user_info .user_name img {width:100%;}
.form .user_info .user_name input[name="name"],
.form .user_info .user_phone input[name="phone"] {padding: 2%; font-size: 150%; width: 67%;
position: absolute; left: 32%; top: 9%; height: 73px;}

/* user db입력칸 (연락처) */
.form .user_info .user_phone {position: relative; margin-bottom: 2%;}
.form .user_info .user_phone img {width:100%;}
.form .user_info .user_phone input[name="phone"] {}

/* .form .formContents{padding:5% 0;} */
.form .inp{font-size:100%;}
.form input[type="checkbox"] + span:before{border-color:#fff;}
.form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

.form .agBox{width: auto; font-size: 100%; text-align: left;}
.form .agBox .ag_btn {left: 50%;}
.form .agBox .q_select{padding: 1% 0 1% 5%;}
.form .agBox label, .form .agBox .disagree{font-size:100%; border-radius:10px; color:#fff; display:inline-block; width: 120px; height: 62px; margin-bottom: 2%; margin-right: 1%; line-height: 62px; text-align: center; cursor: pointer; margin-left: 2%;}
.form .agBox label{background-color: #127ee3;}
.form .agBox .disagree{background-color: #ff4e69 ; font-weight: normal;}

.form .agBox.on label{background-color:#000;}
/* #selected_agree{display:block; width:80%; font-size:80%; color:#fff; background-color:#fb4d2b; border-radius:23px; text-align:center; padding:2% 0; margin:0 0 7px;} */
/* .form .agBox > label{padding:2% 0%; display:block; cursor: pointer; margin:0; line-height:1.6;} */

.form ul.table_box{width:90%;}
.form ul.table_box li{display: flex; margin-bottom:2%;   }
.form ul.table_box li  >*{background-color: #fff;  padding:1% 10px; border-radius:25px; border:1px solid #000; box-sizing: border-box;}
.form ul.table_box li .th{width:20%;}
.form ul.table_box li .td{width: 78%; display:none; position: relative;}
.form ul.table_box li .td.cursor_box::after{position: absolute; top: 50%; left: 54%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 50%; background-color: #000; animation: blink-effect 1s step-end infinite;}
.form ul.table_box li .td.cursor_box span{position: absolute; top: 50%; left: 60%; transform: translateY(-50%); display: block; font-size:120%;}


.form ul.table_box li:nth-child(2) .th,
.form ul.table_box li:nth-child(3) .th{margin-right:1%;}
.form ul.table_box li.on .th{border-radius: 25px 0 0 25px; border-right:none;}
.form ul.table_box li.on .td{border-radius:0 25px 25px 0; border-left:none;}

/* 비용 결과 */
.form .result {margin: 0 auto; width: 100%; margin-bottom: 2%; position: relative;}
.form .result .value {display: flex; position: absolute; left: 4.8%; bottom: 1.5%; width: 100%;}
.form .result .value .add_value {font-size: 120%; background-color: #ff4e69; width: 77px; height: 44px; border-radius: 10px;
text-align: center; line-height: 44px; color: #fff; cursor: pointer; display: none;}
.form .result .value .add1_value {margin-right: 0.5%;}
.form .result .value .add2_value {}

/* #name {position: absolute; top: 26%; left: 5%; font-size: 200%;}
#cursor {display: block; width: 2px; height: 30px; background: #000; position: absolute; right: 11%; top: 38%; animation: blink-effect 1s step-end infinite;} */
.question .q_select.last label {width: 150px;}

@keyframes blink-effect {
    50% {opacity: 0;}
}

@media screen and (max-width: 500px){
	.form .description.orage-box{flex-wrap: wrap;}  
    .form .description.orage-box > *{margin:0 0 1% 5%; font-size:65%; letter-spacing:-1px;}
	.form .description.orage-box p {left: 1%; top: 3.2%;}
	.form .description.orage-box span {right: 18%; top: 3.2%;}

	.form .agBox{min-width:75%;}
	.form .agBox label, .form .agBox .disagree{width: 100px; height: 30px; line-height: 30px;}

	.form .question_box .q_select label{height: 30px; line-height: 30px; width: 63px; font-size: 80%; border-radius: 5px;}

	.form ul.table_box li .th{width:28%;}
	.form ul.table_box li .td{width:72%;}

	.form .agBox label, .form .agBox .disagree {width: 60px; font-size: 83%; border-radius: 5px;}
	.form .user_info .user_name input[name="name"],
	.form .user_info .user_phone input[name="phone"] {height: 35px;}
	#cursor {top: 30%; height: 15px;}
	.question .q_select.last label {width: 80px;}
	#name {font-size: 120%;}
	.form .result .value {left:4.5%; bottom: 0; top: 0;}
	.form .result .value .add_value {font-size: 60%; width: 36px; height: 22px; line-height: 22px; border-radius: 5px;}
}

@media screen and (max-width: 415px){   
}

/* submit 버튼 애니메이션 */
@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}
@keyframes blink-effect {
    50% {opacity: 0;}
}
</style>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<div id="wrap">
    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8"> 
		<img style="width: 100%;" src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg">
		<!-- <input type="hidden" name="phone" value=""> -->

		<div class="description orage-box">
            <p id="event-period"></p>
            <span>대상 : ${resVo.target} </span>
        </div>
		
		<div class="question_container_bg">
			<div class="question_container">
				<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
				<div class="question_box">
					<div class="question">
						<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
						<div class="q_select">
							<label>20대<input type="radio" name="tadd1" value="20대"></label>
							<label>30대<input type="radio" name="tadd1" value="30대"></label>
							<label>40대<input type="radio" name="tadd1" value="40대"></label>
						</div>
					</div>
					<div class="question">
						<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
						<div class="q_select">
							<label>B컵<input type="radio" name="tadd2" value="B컵"></label>
							<label>C컵<input type="radio" name="tadd2" value="C컵"></label>
							<label>D컵 이상<input type="radio" name="tadd2" value="D컵 이상"></label>
						</div>
					</div>        
	
					<div class="formGroup">
						<div class="user_info">
							<div class="user_name">
								<img src="//static.resta.co.kr/event/v_${eventSeq}/q_03.png">
								<input type="text" name="name" id="name" value="" class="inp" required autocomplete="off">
							</div>
							<div class="user_phone">
								<img src="//static.resta.co.kr/event/v_${eventSeq}/q_04.png">
								<input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11">
							</div>
						</div>
					</div>
	
					<div class="agBox">
						<div class="question">
							<a href="#" class="btn-agreement">
								<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_05.png"></div>
							</a>
							<div class="q_select ag_btn">
								<label><input name="agBox" type="checkbox">동의</label>
								<a href="javascript:void(0);" class="disagree">미동의</a>
							</div>
						</div>
					</div>
					<div class="formContents">	
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
						<div class="img-area result">
							<!-- <div id="name"></div> -->
							<div class="value">
								<p class="add_value add1_value"></p>
								<p class="add_value add2_value"></p>
							</div>
							<img src="//static.resta.co.kr/event/v_${eventSeq}/q_06.png">
							<span id="cursor"></span>
						</div>
						<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/line.png"></div>
						<div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>	
					</div>
				</div>   
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

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script> 
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
			
		initDate();
	});
	
	// radio value값 츨략
	$('input:radio[name="tadd1"]').click(function(){
		var checked = $(this).val();
		$('.add1_value').show();
		$('.add1_value').html(checked);
	})

	$('input:radio[name="tadd2"]').click(function(){
		var checked = $(this).val();
		$('.add2_value').show();
		$('.add2_value').html(checked)
	})
	
	$('li.btn_submit').bind('click',function() {
		$('#form-1').submit();
	})
	$('input[name*="tadd"]').bind('click', function() {
		console.log($(this))
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});

	$('.agBox label').bind('click',function(){
		$('input[name="agBox"]').closest('.agBox').addClass('on');
	})
	$('.submit').bind('click',function(){
		if(!$('input[name="name"]').is(':visible')){
			// $('.db-name').click();
			$('input[name="name"]').focus();
		}
		else if(!$('input[name="phone"]').is(':visible')){
			$('.db-phone').click();
			$('input[name="phone"]').focus();
		}
		var phoneNum = $('input[name="phone"]').val();
		// $('input[name="phone"]').val('010'+phoneNum);
	})
	$('a.disagree').bind('click',function(){
		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');
	})
	
	
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
		
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문2 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		var required = {
			'name': '이름'
			//,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>