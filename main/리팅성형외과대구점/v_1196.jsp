<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');
#wrap{font-family: 'noto sans kr';  overflow: hidden;}

.q_select{font-size: 130%;}
.form .description {width: 100%;}
.form .description.orage-box {display: flex; justify-content: flex-start;}
.form .description.orage-box > *{font-size:90%; color:#fff; padding:2% 4%; position: absolute; top: 7%; z-index: 9;}
.form .description.orage-box p {left: 4%;}
.form .description.orage-box > span{right: 16%;}

.form .description .ad_txt {text-align: center; font-size: 120%; color: #d3b5ab;}

.form .question {position: relative;}
.form .question_box .question {width: 90%; margin: 0 auto; margin-bottom: 2%;}
.selected_area{background-color:#000; padding:3% 5%;}
.form .question_box .q_select{width: 70%; position: absolute; z-index: 1; display: flex; top: 27%; left: 28%;}
.form .question_box .q_select label, label.selected_label, .form .agBox .disagree{width: 20%; border-radius:2rem; margin-right:1%;text-align: center; color: #fff; cursor: pointer; padding: 3% 1%;}

.form .question_box .q_select label{background-color: #e2bca9;}
.form .question_box .q_select label.on, label.add1{background-color: #fe7902; color:#fff;}

/* user db입력칸 이름,연락처 공통 */
.form .user_info {width: 90%; margin: 0 auto;}
.form .user_info > div {position: relative; margin-bottom: 2%;}
.form .user_info img {width:100%;}
.form .user_info input {background: #f1d5c0;padding: 2%;font-size: 130%; border-radius: 0.5rem; width: 67%; height: 70%; position: absolute;left: 29%;top: 17%;}


.form .inp{font-size:100%;}
.form input[type="checkbox"] + span:before{border-color:#fff;}
.form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

.form .agBox{width: auto; font-size: 100%; text-align: left;}
.form .agBox .ag_btn {left: 50%;}
.form .agBox .disagree{background-color: #e2bca9; font-weight: normal;}
.form .agBox.on label{background-color:#fe7902;}

.bg {position: relative;}
.question_container {width: 100%; padding: 4% 0; position: absolute; top: 0; left: 50%; transform: translateX(-50%);}

/* 비용 결과 */
.form .result {margin: 0 auto; width: 90%; margin-bottom: 2%; position: relative;}
.form .result .value {display: flex; position: absolute; left: 5%; bottom: 5.5%; width: 100%;}
.form .result .value .add_value {font-size: 130%; width: 13%; background-color: #fe7902; border-radius: 2rem; padding: 2% 1%; text-align: center; color: #fff; cursor: pointer; display: none;}
.form .result .value .add1_value {margin-right: 1%;}
.form .result .value .add2_value {}

.question .q_select.last label {width: 150px;}

/* 개인정보 처리방침 */
.form .agreement {height: 200px; overflow: auto;}

@keyframes blink-effect {
    50% {opacity: 0;}
}

@media screen and (max-width: 500px){
	.q_select {font-size: 90%;}
	.form .question_box .q_select {top: 28%; left: 27%;}
	.form .question_box .q_select label, label.selected_label, .form .agBox .disagree {width: 22%;}
	.form .agBox .ag_btn {left: 50%;}
	.form .result .value {left: 4%;}
	.form .result .value .add_value {font-size: 90%; width: 14%; padding: 1% 1%;}
	.form .description .ad_txt {font-size: 70%;}
	.form .description.orage-box > * {font-size: 50%;}
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

		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
		<div class="description orage-box">
			<p id="event-period"></p>
			<span>대상 : ${resVo.target} </span>
        </div>	
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
		
		<div class="bg">
			<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
			<div class="question_container">
				<div class="question_box">
					<div class="question">
						<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
						<div class="q_select">
							<label>30대<input type="radio" name="tage" value="30"></label>
							<label>40대<input type="radio" name="tage" value="40"></label>
							<label>50대<input type="radio" name="tage" value="50"></label>
							<label>60대 이상<input type="radio" name="tage" value="60"></label>
						</div>
					</div>
					<div class="question">
						<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
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
							<!-- <div class="button"><a href="<?=$this->landing['agreement_url']?>" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div> -->
							<h3>개인정보 수집 • 이용 동의</h3>
							<ol>
								<li>리팅성형외과의원(이하 ‘본원’)은 회원가입, 원활한 고객 상담, 각종 서비스 제공을 위해 아래와 같이 이용자의 개인정보를<br>
								수집 • 이용하기 위하여 이용자의 동의를 받고자 합니다. 귀하는 개인정보의 선택적인 수집, 이용, 제공에 대한 동의를 거부할 수 있습니다.
								</li><br>
								<li>1. 개인정보의 수집 및 이용 목적 : 병원 상담 서비스 제공, 병원 진료 서비스 제공, 회원관리, 신규 서비스 안내 및 마케팅, 광고에의 활용</li>
								<li>2. 수집하는 개인정보의 항목 : 이름,나이,연락처,설문</li>
								<li>3. 보유 및 이용기간 : 회원탈퇴 혹은 위탁계약 종료 시까지 (고객 동의 철회 시 지체없이 파기)
								</li><br>
								<li>* 이용자는 ‘본원’에서의 개인정보에 대해 마케팅 활용 동의 및 수신 거부할 권리가 있으나<br>
								이 동의는 의료기관 상담 서비스 제공에 필수적이므로 위 사항에 동의 진행하셔야 병원 상담 신청이 가능합니다.
								</li><br>
								<li>* ‘본원’ 또는 개인정보취급방침 제4조 제1항에 기재된 위탁업체는 ‘본원’의 업무 내용을<br>
								이용자에게 전화 혹은 단문 메시지 등의 방법을 통해 홍보하고 상품 구입을 권유할 수 있으며 상담을 위해 이용자께 전문상담사가 입력하신 번호로 연락할 수 있습니다.
								</li><br>
								<li>* ‘본원’이 제공하는 서비스와 관련된 개인정보처리방침에 관련된 사항은<br>
								‘본원’의 개인정보처리방침(https://litingdaegu.co.kr/bbs/content.php?co_id=policy2)에 따릅니다.
								</li>
							</ol>
						</div>
						<div class="img-area result">
							<div class="value">
								<p class="add_value add1_value"></p>
								<p class="add_value add2_value"></p>
							</div>
							<img src="//static.resta.co.kr/event/v_${eventSeq}/q_06.png">
							<span id="cursor"></span>
						</div>
						<div class="submit"><input type="image" value="" onclick="fnForm('form-1')"" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/event_main_0.png" /></div>	
						<div class="description">			
							<div class="ad_txt">
								'멜팅 리프팅'이란<br>
								미니 리프팅의 업그레이드 버전으로<br>
								흉터가 없거나보이지 않을 수 있으며<br>
								반영구적인 유지기간으로<br>
								효과 증대와 만족스러운 결과를 도출합니다.
							</div>
						</div>	
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

	$('input[name*="tadd"]').bind('click', function() {
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});

	$('input[name*="age"]').bind('click', function() {
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
		// $('input[name="phone"]').val('010'+phoneNum);
	})
	$('a.disagree').bind('click',function(){
		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');
	})

	// radio value값 츨략
	$('input:radio[name="tage"]').click(function(){
		let checked = $(this).val();
		let labelText = $(this).closest('label').text().trim();
		$('.add1_value').show();
		$('.add1_value').html(labelText);
	})

	$('input:radio[name="tadd1"]').click(function(){
		var checked = $(this).val();
		$('.add2_value').show();
		$('.add2_value').html(checked)
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