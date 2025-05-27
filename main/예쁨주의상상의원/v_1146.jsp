<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><style>
 * {letter-spacing: -0.04em; box-sizing: border-box; font-family: 'MinSans', sans-serif;}
#wrap {overflow: hidden;}
body {font-size: 10px;}

:root {
    --main-border-color: #ddd;

    --color-pink: #fe178e;

    --q_color:#7cbfd5;

    --marking-color: #d8f2fb;
}

.form {position: relative; background-color: transparent;}

/* 설문 셀렉 원 공통 CSS */
.form .question_box .q_select .select_label .sel-circle--outer {--circle-size: 3.5em; position: relative; padding: 0.6em; width: var(--circle-size); height: var(--circle-size); border-radius: 999px; border: 0.15em solid #3c3c3c; background-color: #fff;}
.form .question_box .q_select .select_label .sel-circle--outer .sel-circle--inner {width: 100%; height: 100%; border-radius: 999px; background-color: #fff;}
.form .question_box .q_select .select_label:has(.inp:checked) .sel-circle--outer {border-color: var(--color-pink);}
.form .question_box .q_select .select_label:has(.inp:checked) .sel-circle--outer .sel-circle--inner {background-color: var(--color-pink);}

/* 설문 CSS */
.form .question_box {padding: 2.5em 3em 4em; background-color: #fff;}
.form .question_box .question {padding-bottom: 0.8em; margin-bottom: 2.4em; display: flex; gap: 1.5em; align-items: center; justify-content: center; font-weight: 500; border-bottom: 0.01em solid var(--main-border-color);}
.form .question_box .question .question_label {font-size: 5.7em; font-weight: 600; color: var(--q_color);}
.form .question_box .question .question_text {font-size: 5em;}
.form .question_box .question .marking {z-index: 1; position: relative; font-weight: 700;}
.form .question_box .question .marking::before {z-index: -1; display: block; content: ''; position: absolute; top: 51%; left: 50%; transform: translate(-50%, -50%); height: 0.78em; width: calc(100% + 0.1em); background-color: var(--marking-color);}
.form .question_box .q_select {display: grid; grid-template-columns: repeat(4, 1fr); gap: 1.5em;}
.form .question_box .q_select .select_label {display: flex; gap: 1em; align-items: center; justify-content: center;}
.form .question_box .q_select .select_label .inp + .sel_item span {display: block; font-size: 3.1em; line-height: 1.1; font-weight: 500; color: #000;}

.form .formContents {padding: 2.5em 4em; background-color: #f7f7f7;}

/* input_box CSS */
.form .input_box {display: grid; grid-template-columns: repeat(2, 1fr); gap: 1.2em;}
.form .input_box .input_row {border-radius: 1em; border: 0.3em solid var(--main-border-color); background-color: #fff;}
.form .input_box .input_row:last-child {grid-column: 1/3;}
.form .input_box .input_row .inp {padding: 0.8em; width: 100%; text-align: center; font-size: 3em;}
.form .input_box .input_row .inp::placeholder {color: #9a9a9a;}

/* submit CSS */
.form .submit {padding: 0; cursor: pointer;}
.form .submit input[type="submit"] {padding: 0.4em 0; width: 100%; border: 0; border-radius: 0.4em; font-size: 4.3em; font-weight: 800; cursor: pointer; color: #fff;}
.form .submit input[type="submit"]:first-child {background-color: var(--color-pink);}
/* .form .submit input[type="submit"]:last-child {background-color: #2c1a24;} */

.form .description {font-size: 1.6em; color: #4d4d4d;}
.form .description.top {margin-bottom: 0.7em;}
.form .description.bottom {margin-top: 0.7em;}
.form .agBox {margin: 1em auto; font-size: 1.8em; width: 100%;}
.form .agreement {font-size: 1.6em;}
.form input[type="checkbox"] + span:before {border: 1px solid #000;}

/* 실시간 신청 현황 */
.sign_wrap {width: max-content; overflow: hidden; background: #fff;}
.sign {padding: 1% 0; display: flex; gap:2%;}
.subscribe {background: none; display: flex; gap: 1%; padding: 0; width: max-content; animation: slide 30s linear infinite;}
.subscribe:nth-child(2) {margin-left: 1%;}
.subscribe .content {border-radius: 1.5em; padding: 1% 1%; background-color: #696975; color: #fff; border-bottom: none; font-size: 150%; flex-shrink: 0;}
.subscribe .content .msg { padding: 10% 0; font-family: 'noto sans kr'; font-size: 150%;}
.subscribe .content .name {font-family: 'noto sans kr';}
.subscribe .content .date {font-family: 'noto sans kr';}
.subscribe .btn_moreSubscribe {display:none;}

/* 신정현황 애니메이션 */

@keyframes slide {
	0% {transform: translateX(0);}
	100% {transform: translateX(-100%);}
}

@keyframes scroll {
    0% { transform: translateX(0); -webkit-transform: translateX(0); }
    100% { transform: translateX(calc(-100% - var(--gap))); -webkit-transform: translateX(calc(-100% - var(--gap)));}
}

@media screen and (max-width: 768px){
    body {font-size: 1.25vw;}

    .form .agreement, .form .description {font-size: 2.8vw;}
    .form .agBox {font-size: 2.6vw;}
    .subscribe_group .content {font-size: 2.4vw;}
}

@media screen and (max-width: 500px){
    .subscribe .content {width: 120px; padding: 2% 2%;}
}
</style>

<div id="wrap"> 
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

            <div class="question_box">
                <div class="question">
                    <span class="question_label">Q.</span>
                    <span class="question_text"><span class="marking">희망 몸무게</span>는?</span>
                </div>
                <div class="q_select">
                    <label class="select_label">
                        <div class="sel-circle--outer"><div class="sel-circle--inner"></div></div>
                        <input type="radio" name="tadd1" class="inp" value="45kg 이하">
                        <div class="sel_item"><span>45kg 이하</span></div>
                    </label>
                    <label class="select_label">
                        <div class="sel-circle--outer"><div class="sel-circle--inner"></div></div>
                        <input type="radio" name="tadd1" class="inp" value="45~50kg">
                        <div class="sel_item"><span>45~50kg</span></div>
                    </label>
                    <label class="select_label">
                        <div class="sel-circle--outer"><div class="sel-circle--inner"></div></div>
                        <input type="radio" name="tadd1" class="inp" value="50~55kg">
                        <div class="sel_item"><span>50~55kg</span></div>
                    </label>
                    <label class="select_label">
                        <div class="sel-circle--outer"><div class="sel-circle--inner"></div></div>
                        <input type="radio" name="tadd1" class="inp" value="60kg 이하">
                        <div class="sel_item"><span>60kg 이하</span></div>
                    </label>
                </div>
            </div>
            
            <div class="formContents">
                <div class="description top">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를<br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>

                <div class="input_box">
                    <label class="input_row">
                        <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" maxlength="7" placeholder="이름">
                    </label>
                    <label class="input_row">
                        <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이" data-min="20" data-max="65">
                    </label>
                    <label class="input_row">
                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-'없이)">
                    </label>
                </div>

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

                <div class="submit">
                    <input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png">
                </div>

                <div class="description bottom">
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
    </div>

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.jpg"></div>
    </div>

    <div class="form">
        <form id="form-2" method="POST" accept-charset="utf-8">

            <div class="question_box">
                <div class="question">
                    <span class="question_label">Q.</span>
                    <span class="question_text"><strong class="marking">희망 몸무게</strong>는?</span>
                </div>
                <div class="q_select">
                    <label class="select_label">
                        <div class="sel-circle--outer"><div class="sel-circle--inner"></div></div>
                        <input type="radio" name="tadd1" class="inp" value="45kg 이하">
                        <div class="sel_item"><span>45kg 이하</span></div>
                    </label>
                    <label class="select_label">
                        <div class="sel-circle--outer"><div class="sel-circle--inner"></div></div>
                        <input type="radio" name="tadd1" class="inp" value="45~50kg">
                        <div class="sel_item"><span>45~50kg</span></div>
                    </label>
                    <label class="select_label">
                        <div class="sel-circle--outer"><div class="sel-circle--inner"></div></div>
                        <input type="radio" name="tadd1" class="inp" value="50~55kg">
                        <div class="sel_item"><span>50~55kg</span></div>
                    </label>
                    <label class="select_label">
                        <div class="sel-circle--outer"><div class="sel-circle--inner"></div></div>
                        <input type="radio" name="tadd1" class="inp" value="60kg 이하">
                        <div class="sel_item"><span>60kg 이하</span></div>
                    </label>
                </div>
            </div>
            
            <div class="formContents">
                <div class="description top">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를<br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>

                <div class="input_box">
                    <label class="input_row">
                        <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" maxlength="7" placeholder="이름">
                    </label>
                    <label class="input_row">
                        <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                    </label>
                    <label class="input_row">
                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-'없이)">
                    </label>
                </div>

                <div class="agBox">
                    <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="javascript:void(0);" class="btn-agreement">[자세히 보기]</a>
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

                <div class="submit">
                    <input type="image" onclick="fnForm('form-2')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png">
                </div>

                <div class="description bottom">
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
    </div>

    <!-- 신청자 현황 -->
    <div class="sign_wrap">
        <div class="container sign">
            <div class="subscribe" data-limit="10"></div>
            <div class="subscribe" data-limit="10"></div>
        </div>
    </div>
        
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>

</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    /* 기간항목 start */
	initDate();
	/* 기간항목 end */

    // 신청 현황 리스트
    $(document).ready(function(){
        getComment('1146');
        $('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
            $('.btn_moreSubscribe').prop('disabled', true);
            e.preventDefault();
            getComment('1146');
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