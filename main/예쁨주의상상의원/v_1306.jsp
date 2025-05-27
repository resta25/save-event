<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.bg_wh{background-color: #fff;}
.mb-1{margin-bottom: 1% !important;}
.mb-5{margin: 10% 0 !important;}
.relative{position: relative;}

/* 설문 영역 */
.formContents {width: 90%; margin: 5% auto;}
.form .question {}
.form .question img {width: 100%;}
.form .question_box .question{margin-bottom: 2%; width: 100%;}
.form .question_box .q_select{display: flex; align-items: center; justify-content: center;}
.form .question_box .q_select label{margin-right: 4%; font-size: 200%;}
.form .question_box .q_select label:last-child{margin-right: 0;}
.form input[type="radio"] + span {font-weight: 600;}

/* db단 영역 */
.form .formGroup {}
.form .formGroup .user_info { display: flex; align-items: center; justify-content: center; gap: 1%; margin: 2% 0;}
.form .formGroup .user_info .title {display: block; width: 59%;}
.form .formGroup .user_info .title img {width: 100%;}
.form .formGroup .user_info input {font-size: 120%; padding: 3%; background: #f1f1f1; border: 3px solid #a6a6a6; border-radius: 0.8rem; text-align: center;}


.form .submit {width: 100%; margin: 5% auto;}
.form .submit input[type="image"]{width: 100%;}

/* 대상 */
.form .description.bottom {margin-top: 1%;}


@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}

@media screen and (max-width: 500px){
    .form .question_box .q_select label{font-size: 3.7vw; margin-right: 2%;}
    .form .formGroup .user_info input {border-width: 2px; border-radius: 0.5rem; font-size: 100%;}
}
</style>

<div id="wrap" class="bg_wh"> 
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
	</div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

        <div class="formContents">
            <div class="question_box mb-5">
                <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="20~29세"><span>20~29세</span></label>
                    <label><input type="radio" name="tadd1" value="30~39세"><span>30~39세</span></label>
                    <label><input type="radio" name="tadd1" value="40~49세"><span>40~49세</span></label>
                    <label><input type="radio" name="tadd1" value="50~59세"><span>50~59세</span></label>
                </div>
            </div>

            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>

			<div class="formGroup">
                <div class="user_info">
                    <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/name_01.png"></span>
                    <input type="text" name="name" class="inp" id="name" required autocomplete="off" placeholder="이름을 적어주세요"> <!-- 이름 -->
                </div>
                <div class="user_info">
                    <span class="title"><img src="//static.resta.co.kr/event/v_${eventSeq}/number_01.png"></span>
                    <input type="tel" name="phone" class="inp" id="phone" required="" autocomplete="off" maxlength="11" placeholder="전화번호를 적어주세요"> <!-- 전화번호 -->
                </div>
                <input type="hidden" name="branch" class="inp" id="branch" required="" value="상상대전점"> <!-- 지점고정값 -->
			</div>

            <div class="agBox">
                <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="javascript:void(0);" class="btn-agreement">[자세히 보기]</a>
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

            <div class="description bottom">
                <p id="event-period"></p>
                <!-- <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div> -->
                <span>대상 : ${resVo.target}> </span>
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
	</div>

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
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
			//, 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>