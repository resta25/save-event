<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#wrap {font-family: 'noto sans kr'; background: #fff;}
.form {padding: 5% 10%;}

/* 설문영역 */
.form .question_box {}
.form .question_box .question {width: 100%;}
.form .question_box .question img {width: 100%;}
.form .question_box .q_select {width: 100%; display: flex; justify-content: space-between; gap: 2%; margin: 2% 0 5%;}
.form .question_box .q_select label {}
.form .question_box .q_select label span {font-size: 200%; text-align: center;}

/* db단 */
.form .formGroup {}
.form .formGroup .user_info {display: flex; align-items: center; margin-bottom: 2%; border: 1px solid #d0d0d0; padding: 1%;}
.form .formGroup .user_info .legend {width: 40%;}
.form .formGroup .user_info .legend img {width: 100%;}
.form .formGroup .user_info input {font-size: 200%;}

@media screen and (max-width: 480px){
    .form {padding: 5%;}
    .form .formGroup .user_info input,
    .form .question_box .q_select label span {font-size: 130%;}
}

@media screen and (max-width: 430px){
    .form .formGroup .user_info input,
    .form .question_box .q_select label span {font-size: 120%;}
}

@media screen and (max-width: 390px){
    .form .formGroup .user_info input,
    .form .question_box .q_select label span {font-size: 110%;}
}

</style>

<div id="wrap"> 
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
    
        <div class="question_box">
            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
            <div class="q_select">
                <label><input type="radio" name="tadd1" value="팔자주름"><span>팔자주름</span></label>
                <label><input type="radio" name="tadd1" value="처진피부"><span>처진피부</span></label><br>
                <label><input type="radio" name="tadd1" value="피부탄력"><span>피부탄력</span></label>
                <label><input type="radio" name="tadd1" value="여러부위"><span>여러부위</span></label>
            </div>
        </div>

        <div class="formGroup">
            <div class="user_info user_name">
                <span class="legend"><img src="//static.resta.co.kr/event/v_${eventSeq}/name_01.png"></span>
                <input type="text" name="name" id="name" class="inp" required value="" autocomplete="off" >
            </div>
            <div class="user_info user_phone">
                <span class="legend"><img src="//static.resta.co.kr/event/v_${eventSeq}/number_01.png"></span>
                <input type="tel" name="phone" id="phone" class="inp" value="" required="" autocomplete="off" maxlength="11">
            </div>

            <div class="agBox">
                <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
            </div>
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
            
            <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>

            <div class="description">
                <p id="event-period"></p>
                <div class="ad_txt">안심하세요! 본 페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span>대상 : ${resVo.target} </span>
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
		<!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.png"></div> -->
		<!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div> -->
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
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

		/*
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		var required = {
			'name': '이름'
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>