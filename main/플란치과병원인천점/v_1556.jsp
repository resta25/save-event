<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
#wrap {background: #452410; font-family: 'GmarketSansMedium';}
.form {}

/* 설문영역 */
.form .question img {width: 100%;}
.form .question {width: 80%; margin: 0 auto 5%;}
.form .question_box {background: #002014; padding: 5%;}
.form .question_box .q_select {display: flex; flex-flow: row wrap; justify-content: center; gap: 1%;}
.form .question_box .q_select .question {width: 80%; margin: 0 auto;}
.form .question_box .q_select label {width: 24%;}
.form .question_box .q_select label img {width: 100%;}

/* db영역 */
.formGroup {background: #003722; padding: 5%;}
.form .user_info input {background: #f9f9f9; border: 1px solid #ddd; padding: 3% 0; text-align: center; font-size: 150%; border-radius: 1.5em;}
.form .user_info input:nth-child(1) {margin-bottom: 1%;}

/* 개인정보처리방침 */
.form .agBox {margin: 3% auto; color: #fff;}
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after {border-color: #fff;}

/* 안심문구, 대상, 기간 */
.form .description {color: #fff; margin-top: 3%;}


/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 65%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}


@media screen and (max-width: 430px){
}

@media screen and (max-width: 395px){
}

@media screen and (max-width: 378px){
}
</style>
<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
		<div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target); return false;"  target="_blank">개인정보 처리방침</a></div>
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
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

		<div class="formContents"> 
            <div class="question_box">
                <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="1개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                    <label><input type="radio" name="tadd1" value="2개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                    <label><input type="radio" name="tadd1" value="3개"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                    <label><input type="radio" name="tadd1" value="4개 이상"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                </div>
            </div>

            <div class="formGroup">
                <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
                <div class="user_info">
                    <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름">
                    <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="전화번호('-'없이)"/>
                </div>

                <div class="agBox">
                    <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                </div>

                <div class="submit"><input type="image" class="btn_submit" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
                <div class="description">
                    <p id="event-period"></p>
                    <span id="target">대상 : ${resVo.target} </span>
                </div>
            </div>
		</div>
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
		</form>
	</div>
    <div class="container bottom">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer_04.jpg"></div>
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function(){
	    initDate();/* 기간항목 start */
	    blockSourceView();//드래그, 우클릭 방지
	});


    //add1 이미지 on/off 변경
    $('input[name*="tadd"]').bind('click', function() {
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

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
			// , 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>