<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {letter-spacing: -0.05em; box-sizing: border-box; font-family: 'Noto Sans KR', sans-serif;}

body {font-size: 10px;}

:root {
    --common-gap: 1em;
    --common-padding: 4%;
    --common-border-radius: 0.3em;

    --font-size-sel: 4.5em;
    --font-size-question: 4em;

    /* 버튼 스타일 */
    --btn-padding: 0.5em;
    --btn-width: 80%;
    --btn-font-size: 5em;
    --btn-font-weight: 600;
    --btn-border-radius: 9999px;
    --btn-color: #fff;
    --btn-bgc: #000;

    --color-point: #0526cf; /* 포인트 컬러 */
    --color-marking: #dfffff; /* 마킹 컬러 */
}

section:not(section[data-value="1"]) {display: none;}

section {padding: 3em 3em 10em; background-color: #f4f6f8;}
section .inner {padding: 5em 3em 6em; border-radius: 1.5em; background-color: #fff; box-shadow: rgba(6, 4, 57, 0.05) 0px 1.5em 2em 0px;}

.form .question_box .question {margin-bottom: 5%; text-align: center; font-size: var(--font-size-question); font-weight: 700;}
.form .question_box .question .c_point {color: var(--color-point);}
.form .question_box .question .marking {z-index: 1; position: relative;}
.form .question_box .question .marking::before {z-index: -1; display: block; content: ''; position: absolute; left: 50%; bottom: -1%; transform: translateX(-50%); height: 0.6em; width: 103%; background-color: var(--color-marking);}

.box_img {margin: 0 auto 3em; width: 31%;}
.next_btn {display: flex; justify-content: center; align-items: center; gap: 0.5em; margin: 0 auto; padding: var(--btn-padding); width: var(--btn-width); text-align: center; border-radius: var(--btn-border-radius); font-size: var(--btn-font-size); font-weight: var(--btn-font-weight); cursor: pointer; color: var(--btn-color); background-color: var(--btn-bgc);}
.next_btn .arrow_icon {padding-top: 0.1em; width: 0.45em;}
.next_btn .arrow_icon img {display: block;}

/* select - custom_sels */
.form .question_box .q_select {display: grid; align-items: center; gap: var(--common-gap); padding: 0 var(--common-padding);}
.form .question_box .q_select.custom_sels.array2 {grid-template-columns: repeat(2, 1fr);}
.form .question_box .q_select.custom_sels label {position: relative; display: block; width: 100%; height: 100%;}
.form .question_box .q_select.custom_sels label .inp::after {display: none; content: ''; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
.form .question_box .q_select.custom_sels label .inp + .sel_item {padding: 0.5em 0; display: block; appearance: none; position: relative; letter-spacing: -0.04em; text-align: center; font-size: var(--font-size-sel); font-weight: 500; border-radius: var(--common-border-radius); color: #000; background-color: #e5e5e5;} /* 셀렉 박스 기본 */
.form .question_box .q_select.custom_sels label .inp:checked + .sel_item {color: #fff; background-color: var(--color-point);} /* 셀렉 박스 checked */

/* input_box */
.form .input_box {padding: 0 var(--common-padding); display: grid; gap: var(--common-gap);}
.form .input_box .input_row .inp {padding: 0.7em 0; text-align: center; font-size: 3.5em; border: 0.08em solid #ddd; border-radius: var(--common-border-radius); background-color: #f7f7f7;}
.form .input_box .input_row .inp::placeholder {color: #aaa;}

.form .agBox {margin: 1.3em 0; width: 100%; font-size: 1.7em;}
.form .agreement {font-size: 1.7em;}

/* submit btn css */
.form .submit {padding: 0;}
.form .submit input[type="submit"] {margin: 0 auto; padding: var(--btn-padding); width: var(--btn-width); text-align: center; border: none; border-radius: var(--btn-border-radius); font-size: var(--btn-font-size); font-weight: var(--btn-font-weight); color: var(--btn-color); background-color: var(--btn-bgc);}
.form .description p {margin: 0; font-size: 100%; font-weight: normal;}
.description.bottom {padding: 1.2em 0; width: 100%; display: flex; gap: 1.4em; align-items: center; justify-content: center; font-size: 1.3em; font-weight: 400; background-color: #eee;}

@media screen and (max-width: 768px) {
    body {font-size: 1.25vw;}
}
</style>

<div id="wrap"> 
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <video id="location" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/241105.mp4" type="video/mp4"></video>
        <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
	</div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
            <section data-value="1">
                <div class="inner">
                    <div class="question_box">
                        <div class="question">
                            <span class="c_point">혜택 제공</span>을 위한<br>
                            <span class="marking">간단한 설문 조사 참여 부탁드립니다.</span>
                        </div>
                        <div class="img-area box_img"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_01.jpg"></div>
                        <div class="next_btn" onclick="goToNextPage(1);">
                            <span>설문시작</span>
                            <div class="img-area arrow_icon"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_02.png"></div>
                        </div>
                    </div>
                </div>
            </section>

            <section data-value="2">
                <div class="inner">
                    <div class="question_box">
                        <div class="question">
                            <span class="c_point">백내장 수술 이력</span>이 있으신가요?
                        </div>
                        <div class="q_select custom_sels array2">
                            <label><input type="radio" class="inp" name="tadd1" value="" onclick="alert('혜택 제공 대상이 아닙니다.')"><div class="sel_item">예</div></label>
                            <label><input type="radio" class="inp" name="tadd1" value="아니요" onchange="goToNextPage(2);"><div class="sel_item">아니요</div></label>
                        </div>
                    </div>
                </div>
            </section>

            <section data-value="3">
                <div class="inner">
                    <div class="question_box">
                        <div class="question">
                            <span class="c_point">연령대</span>가 어떻게 되시나요?
                        </div>
                        <div class="q_select custom_sels array2">
                            <label><input type="radio" class="inp" name="tadd2" value="60대" onchange="goToNextPage(3);"><div class="sel_item">60대</div></label>
                            <label><input type="radio" class="inp" name="tadd2" value="70대" onchange="goToNextPage(3);"><div class="sel_item">70대</div></label>
                        </div>
                    </div>
                </div>
            </section>

            <section data-value="4">
                <div class="inner">
                    <div class="question_box">
                        <div class="question">
                            <span class="c_point">현재 거주 지역</span>을 선택해 주세요.
                        </div>
                        <div class="q_select custom_sels array2">
                            <label><input type="radio" class="inp" name="tadd3" value="서울/경기" onchange="goToNextPage(4);"><div class="sel_item">서울/경기</div></label>
                            <label><input type="radio" class="inp" name="tadd3" value="기타" onchange="goToNextPage(4);"><div class="sel_item">기타</div></label>
                        </div>
                    </div>
                </div>
            </section>

            <section data-value="5">
                <div class="inner">
                    <div class="question_box">
                        <div class="question">
                            <span class="c_point">성함</span>과 <span class="c_point">전화번호</span>를 입력해 주시면<br>
                            <span class="marking">혜택 제공을 위해 연락드리겠습니다.</span>
                        </div>
                        <div class="input_box">
                            <label class="input_row">
                                <input type="text" name="name" class="inp" id="name" required="" autocomplete="off" maxlength="10" placeholder="이름">
                            </label>
                            <label class="input_row">
                                <input type="tel" name="phone" class="inp" id="phone" required="" autocomplete="off" maxlength="11" placeholder="전화번호 ('-' 제외)">
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
								<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
								<li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
                            </ol><br/>
                            <h3>개인정보 취급 위탁</h3>
                            <ol>
                                <li>개인정보 취급 위탁을 받는자 :(주)테크랩스, (주)리스타</li>
                                <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li><br>
                                <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                            </ol>
                        </div>
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
                    </div>
                </div>
            </section>

            <div class="container">
                <div class="description bottom">
                    <p id="event-period"></p>
                    <div>대상 : ${resVo.target}</div>
                </div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
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
	
	<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
			
		initDate();
	});
	
    // 다음 페이지로 이동
	function goToNextPage(pageNum) {
		$(this).prev().find('input').prop('checked', true);
	    $('[data-value="' + pageNum + '"]').fadeOut(function() {
	        $('*[data-value="' + (pageNum + 1) + '"]').fadeIn();
	        $(document).scrollTop(0);
	    });
	}

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
		if (!selectedRadio1) {
			alert("설문2 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}
		
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`);
		if (!selectedRadio3) {
			alert("설문3 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
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
			,'add2': '설문2'
			,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>