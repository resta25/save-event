<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');
#wrap{font-family: 'noto sans kr'; overflow: hidden;}

.q_select{font-size: 130%;}
.form .description {width: 100%;}
.form .description.orage-box{display: flex; justify-content: flex-start; padding-top:3%; padding-bottom: 3%; background-color: #ffeef4;}
.form .description.orage-box > *{background-color: #f7a0cb; color:#fff; font-size:100%; border-radius:1.5rem; color:#fff; padding:2% 4%;}
.form .description.orage-box > span{background-color: #fb639c;}

.form .question {position: relative;}
.form .question_box .question {width: 90%; margin: 0 auto; margin-bottom: 2%;}
.selected_area{background-color:#000; padding:3% 5%;}
.form .question_box .q_select{position: absolute; z-index: 1; display: flex; top: 23%; left: 29%; width: 70%;}

/* 설문값, 동의, 미동의 버튼 공통 */
.form .question_box .q_select label, label.selected_label, .form .agBox .disagree{
	border-radius:0.5rem; 
	margin-right:1%;
	text-align: center; 
	color: #fff; 
	cursor: pointer;
	width: 19%;
	padding: 3% 2%;
}

.form .question_box .q_select:nth-of-type(2) label.on, label.add1{background-color: #000; color:#fff;}
.form .question_box .q_select:nth-of-type(4) label.on, label.add2{background-color: #000;}
.form .question_box .q_select label {background-color: #fa639b;}
.form .question_box .q_select label.on, label.add3{background-color: #000; color:#fff;}

/* user db입력칸 (이름) */
.form .user_info {width: 90%; margin: 0 auto;}
.form .user_info .user_name {position: relative; margin-bottom: 2%;}
.form .user_info .user_name img {width:100%;}

/* user db입력칸 (연락처) */
.form .user_info .user_phone {position: relative; margin-bottom: 2%;}
.form .user_info .user_phone img {width:100%;}

/* 이름, 연락처 공통 */
.form .user_info input {background: #ffeef4; padding: 2%; font-size: 150%; border-radius: 0.5rem; width: 67%;
position: absolute; left: 29%; top: 14%; height: 70%; border: 1px solid #e3ccd4;}

.form .inp{font-size:100%;}
.form input[type="checkbox"] + span:before{border-color:#fff;}
.form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

.form .agBox{width: auto; font-size: 100%; text-align: left;}
.form .agBox .ag_btn {left: 55%;}
.form .agBox label{background-color: #127ee3;}
.form .agBox .disagree{background-color: #fa639b; font-weight: normal;}

.form .agBox.on label{background-color:#000;}

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
.question_container {background: #ffeef4 ; padding: 4% 0;}

/* 비용 결과 */
.form .result {margin: 0 auto; width: 90%; margin-bottom: 2%; position: relative;}
.form .result .value {display: flex; position: absolute; left: 4%; bottom: 1.5%; width: 100%;}
.form .result .value .add_value {font-size: 120%; background-color: #fa639b; border-radius: 0.5rem; width: 12%; padding:2% 1%;
text-align: center; color: #fff; cursor: pointer; display: none;}
.form .result .value .add1_value {margin-right: 2%;}
.form .result .value .add2_value {}


@keyframes blink-effect {
    50% {opacity: 0;}
}

@media screen and (max-width: 500px){
	.form .description.orage-box > * {font-size: 63%;}
	.q_select {font-size: 90%;}
	.form .question_box .q_select label, label.selected_label, .form .agBox .disagree {
		padding: 2% 1%;
		width: 22%;
	}
	.form .user_info input {font-size: 110%;}
	.form .result .value {left: 2%;}
	.form .result .value .add_value {font-size: 90%; width: 15%; padding: 1%;}
	
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

		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
		<div class="description orage-box">
			<p id="event-period"></p>
			<span>대상 : ${resVo.target} </span>
        </div>	
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>

        <div class="question_container">
            <div class="question_box">
				<div class="question">
					<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.png"></div>
					<div class="q_select">
						<label>30대<input type="radio" name="tage" value="30"></label>
						<label>40대<input type="radio" name="tage" value="40"></label>
						<label>50대<input type="radio" name="tage" value="50"></label>
						<label>60대 이상<input type="radio" name="tage" value="60"></label>
					</div>
				</div>
				<div class="question">
					<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.png"></div>
					<div class="q_select">
						<label>주름<input type="radio" name="tadd1" value="주름"></label>
						<label>처짐<input type="radio" name="tadd1" value="처짐"></label>
						<label>탄력<input type="radio" name="tadd1" value="탄력"></label>
						<label>기타<input type="radio" name="tadd1" value="기타"></label>
					</div>
				</div>        

				<div class="formGroup">
					<div class="user_info">
						<div class="user_name">
							<img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_07.png">
							<input type="text" name="name" id="name" value="" class="inp" required autocomplete="off">
						</div>
						<div class="user_phone">
							<img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_08.png">
							<input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11">
						</div>
					</div>
				</div>

				<div class="agBox">
					<div class="question">
						<a href="#" class="btn-agreement">
							<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_09.png"></div>
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
							<li>개인정보 취급 위탁을 받는자 : (주)리스타, (주)테크랩스, (주)메타케어</li>
							<li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
							<br>
							<li>개인정보 취급 위탁을 받는자 : (주)리팅랩스, (주)리팅부산, 리팅성형외과의원 서울점, 리팅성형외과의원 부산점</li>
							<li>개인정보 취급 위탁을 하는 업무의 내용 : 이벤트, 전산관리 위탁</li>
							<br>
							<li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
						</ol>
					</div>
					<div class="img-area result">
						<div class="value">
							<p class="add_value add1_value"></p>
							<p class="add_value add2_value"></p>
						</div>
						<img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_010.png">
						<span id="cursor"></span>
					</div>
					<div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>	
					<!-- <div class="description">			
						<div class="ad_txt">안심하세요! <?=$this->landing['agent']?>에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
					</div>	 -->
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
		<input type="hidden" id="age" 			name="age" value=""/>
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

	
	$('li.btn_submit').bind('click',function() {
		$('#form-1').submit();
	})

	$('input[name="tadd1"]').bind('click', function() {
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});
	$('input[name="tage"]').bind('click', function() {
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});

	$('.agBox label').bind('click',function(){
		$('input[name="agBox"]').closest('.agBox').addClass('on');
	})
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
	})
	$('a.disagree').bind('click',function(){
		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');
	})
	
	// radio value값 츨략
	$('input:radio[name="tadd1"]').click(function(){
		var checked = $(this).val();
		$('.add1_value').show();
		$('.add1_value').html(checked);
	})

	$('input:radio[name="tage"]').click(function(){
		let checked = $(this).val();
		let labelText = $(this).closest('label').text().trim();
		$('.add2_value').show();
		$('.add2_value').html(labelText)
	})

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		let tage = procForm.querySelector('input[name="tage"]:checked');
		
		if (!tage) {
			alert("연령을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='age']").value = tage.value;
		}
		
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문1 항목을 선택해주세요.");
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
		
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>