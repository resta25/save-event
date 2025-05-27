<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {font-family: 'Sandoll GyeokdongGL2';}
#wrap {overflow: hidden;}

.form{position: relative;}

.form.top .form_bg{padding: 3% 0 0; background: linear-gradient(180deg, rgba(185,224,219,1) 0%, rgba(0,0,0,1) 100%);}
.form .form_bg img{width: 100%;}

.form .form_box{background-color: #f8f8f8;}

/* 설문 */
.form .form_box .question_box .question{}
.form .form_box .question_box .question img{width: 100%;}
.form .form_box .question_box .q_select{display: flex; flex-wrap: wrap; padding: 0 5%; justify-content: center; background-color: #fff; padding: 5%;}
.form .form_box .question_box .q_select label{margin: 2%; font-size: 150%;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before {border-radius: 100%;}

/* 이벤트기간 */
.form .form_box .description.top{width: 85%; margin: 4% auto 2%; padding: 2%; box-sizing: border-box; background-color: #f4f4f4; border-radius: 0.5em; word-break: keep-all;}
.form .form_box .description.top > p{color: #00594d; font-size: 110%; font-weight: bold; text-align: left;}
.ad_txt {font-size: 100%; word-break: keep-all; text-align: center; color: #000; line-height: 1.5; font-family: 'noto sans kr'; margin: 5% 0;}
.form .form_box .description.bottom{padding: 2% 0;}

/* db단 */

/* 공통 */
.form .formGroup .box_top {display: flex; justify-content: space-between; margin: 0 5% 2%;}
.form .formGroup .box_top .user_info {}
.form .formGroup .user_info input {font-size: 150%; text-align: center; padding: 7% 0; background-color: #fff;}

.form .formGroup .box_top .user_info input::placeholder {color: #ddd; }
/* user_name */
.form .formGroup .box_top .user_info.user_name {margin-right: 3%; width: 50%;}
.form .formGroup .box_top .user_info.user_name input{width: 100%;}

/* user_age */
.form .formGroup .box_top .user_info.user_age {width: 50%;}
.form .formGroup .box_top .user_info.user_age input{width: 100%;}

/* user_phone */
.form .formGroup .user_info.user_phone {width: 90%; margin: 0 auto;}
.form .formGroup .user_info.user_phone input{width: 100%; padding: 5% 0;}
.form .formGroup .user_info.user_phone input::placeholder{color: #ddd;}

/* 개인정보 동의 체크박스 */
.form .agBox{ width: 100%; padding: 1% 0 0; color: #000; margin: 2% 0;}
.form .agBox a, .form .agBox span {font-family: 'noto sans kr';}

/* submit */

.submit_row {display: flex; justify-content: center; gap: 2%;}
.submit

/* 실시간 신청 현황 */
.sign_wrap {width: max-content; overflow: hidden;}
.sign {padding: 2% 0; display: flex; gap:2%;}
.top_txt {font-size: 250%; font-family: 'noto sans kr'; font-weight: 700; text-align: center; padding: 2% 0;}
.subscribe {background: none; display: flex; gap: 1%; padding: 0; width: max-content; animation: slide 20s linear infinite; }
.subscribe:nth-child(2){margin-left:1%;}
.subscribe .content {border-radius: 0.8em; padding: 0 1% 1%; background-color: #fff; flex-shrink: 0;}
.subscribe .content .msg {font-size: 150%; padding: 10% 0; font-family: 'noto sans kr'; flex-shrink}
.subscribe .content .name {font-family: 'noto sans kr';}
.subscribe .content .date {font-family: 'noto sans kr';}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 65%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(24, 23, 23, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

/* 신정현황 애니메이션 */
@keyframes slide {
	0% {transform: translateX(0);}
	100% {transform: translateX(-100%);}
}

@media screen and (max-width: 500px){
	.agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
}

@media screen and (max-width: 415px){
}

@media screen and (max-width: 375px){
}

/* font - noto sans */
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap');
</style>

<!-- font -->
<script type="module" src="https://ryj9d86xjh.execute-api.ap-northeast-2.amazonaws.com/v1/api/js/drop_fontstream_js/?sid=gAAAAABmVrmvqwDITtEP3dZ9ExESjTa9OpFAigrOm2ZPYGU6ft8djZGQIU1yQ3r0su3FaSf0axFkohrXyaKaegenr6RoQEiP7-JAsQY0pw8OMqGTa9ZyeRu3pU6VsHI6jTXJ8iol5cH9EWjPgvN1-rVyWH30953SJ5wSbgE1nYE6oTLOKOiWgLjQllTCg2GzljPK8tIqC1RMn_u2izCzhoBGvFaf7-Ss6OOyVTaZayu8y8I21-wqWinpRYFJNyDcOX4Vgab9RPcS" charset="utf-8"></script>

<!-- 개인정보처리방침 모달창 -->
<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
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

<div id="wrap"> 
	<div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.gif"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
	</div>
	
    <div class="form top">
		<form id="form-1" method="POST" accept-charset="utf-8">
			
		<div class="form_box">
			<div class="question_box">
				<div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="5kg 이하" data-output="#output4"><span>5kg 이하</span></label>
                    <label><input type="radio" name="tadd1" value="5~10kg" data-output="#output4"><span>5~10kg</span></label>
                    <label><input type="radio" name="tadd1" value="10kg 이상" data-output="#output4"><span>10kg 이상</span></label>
                </div>
			</div>
			<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
			
			<div class="formGroup">
				<div class="box_top">
					<div class="user_info user_name">
						<input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름"/>
					</div>
					<div class="user_info user_age">
						<input type="tel" name="age" id="age" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
					</div>
				</div>
				<div class="user_info user_phone">
					<input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="전화번호('-'없이 입력)"/>
				</div>
			</div>

			<div class="agBox">
				<label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="javascript:void(0);" class="agree_txt">[자세히 보기]</a>
			</div>
			<div class="submit_row">
				<div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit_01" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
				<div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit_02" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.jpg" /></div>
			</div>
			
			<div class="description bottom">
				<span>대상 :  ${resVo.target} </span>
			</div>

			
			<div class="sign_wrap">
				<div class="top_txt">실시간 신청현황</div>
				<div class="container sign">
					<div class="subscribe" data-limit="10"></div>
					<div class="subscribe" data-limit="10"></div>
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
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_06.jpg"></div>
    </div>

    <div class="form">
		<form id="form-2" method="POST" accept-charset="utf-8">
			
		<div class="form_box">
			<div class="question_box">
				<div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="5kg 이하" data-output="#output4"><span>5kg 이하</span></label>
                    <label><input type="radio" name="tadd1" value="5~10kg" data-output="#output4"><span>5~10kg</span></label>
                    <label><input type="radio" name="tadd1" value="10kg 이상" data-output="#output4"><span>10kg 이상</span></label>
                </div>
			</div>
			<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
			
			<div class="formGroup">
				<div class="box_top">
					<div class="user_info user_name">
						<input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름"/>
					</div>
					<div class="user_info user_age">
						<input type="tel" name="age" id="age" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
					</div>
				</div>
				<div class="user_info user_phone">
					<input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="전화번호('-'없이 입력)"/>
				</div>
			</div>

			<div class="agBox">
				<label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="agree_txt">[자세히 보기]</a>
			</div>
			<div class="submit_row">
				<div class="submit"><input type="image" value="" class="btn_submit_01" onclick="fnForm('form-2')" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
				<div class="submit"><input type="image" value="" class="btn_submit_02" onclick="fnForm('form-2')" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.jpg" /></div>
			</div>
			
			<div class="description bottom">
				<span>대상 :  ${resVo.target} </span>
			</div>

			
			<div class="sign_wrap">
				<div class="top_txt">실시간 신청현황</div>
				<div class="container sign">
					<div class="subscribe" data-limit="10"></div>
					<div class="subscribe" data-limit="10"></div>
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
	// 신청 현황 리스트
	$(document).ready(function(){
		getComment('847');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('847');
		});
		//드레그, 우클릭 방지
		blockSourceView()
	})
	
	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				
				$(obj).append(html);
			}
		});
	}

	// 개인정보처리방침
	$('.agree_txt').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });
	
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
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