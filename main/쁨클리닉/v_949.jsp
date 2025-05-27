<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {box-sizing: border-box; font-family: 'Noto Sans KR', sans-serif;}

body {font-size: 10px;}

:root {
    --bgc-main: #ffdfdc;
    --padding-grid: 8%;

    /* 질문 숫자 컬러 */
    --color-q-number: #e75a58;

    /* 버튼 */
    --btn-width: 100%;
    --btn-font-size: 4.5em;
    --btn-bgc: #8d3524;
    --btn-color-text: #fff;

    /* basic-box */
    --basic-box-padding: 2.1em;
    --basic-box-font-size: 3.5em;
    --basic-box-border: 1px solid #ddd ;
    --basic-box-border-radius: 1.4em;
}

#wrap, .form {background-color: var(--bgc-main);}

.page:not(.page[data-value="1"]) {display: none;}
.page .sectionInner {padding: 6% var(--padding-grid) 10%; min-height: 66vh; border-radius: 4em 4em 0 0; background-color: #fff;}

/* 게이지 바 */
.gage-area {position: relative; width: 100%; padding: 2% var(--padding-grid) 6%;}

/* 버튼 css */
.next_btn {margin: 3% auto 0; padding: 2% 0; width: var(--btn-width); text-align: center; letter-spacing: -0.05em; font-size: var(--btn-font-size); font-weight: 500; cursor: pointer; border: none; border-radius: 0.3em !important; color: var(--btn-color-text); background-color: var(--btn-bgc);}

/* 질문 텍스트 */
.question {display: flex; align-items: end; gap: 4%; margin-bottom: 4%;}
.question .q_num {line-height: 1; font-size: 14.5em; font-weight: 400; color: var(--color-q-number);}
.question .q_text {line-height: 1.3; letter-spacing: -0.05em; font-size: 5em; color: #212121;}

.form .question_box {text-align: left;}
.form .question_box img {width: 100%;}
.form .question_box .q_select {display: grid; gap: 1.5em;}
.form .question_box .q_select.array2 {grid-template-columns: repeat(2, 1fr);}
.form .question_box .q_select.array3 {grid-template-columns: repeat(3, 1fr);}
.form .question_box .q_select label {display: block; padding: var(--basic-box-padding); border: var(--basic-box-border); border-radius: var(--basic-box-border-radius); color: #212121;}
.form .question_box .q_select label span {display: block; font-size: var(--basic-box-font-size); color: #212121;}

/* input_box */
.input_box {display: grid; gap: 1em;}
.input_box .input_row {width: 100%; padding: var(--basic-box-padding); border: var(--basic-box-border); border-radius: var(--basic-box-border-radius); box-shadow: var(--basic-box-shadow);}
.input_box .input_row .inp {font-size: var(--basic-box-font-size);}

.form .input_box .input_row.selects_row {display: grid; grid-template-columns: 10em 1fr; gap: 4em;}
.form .input_box .input_row.selects_row .input_info {display: flex; align-items: center; justify-content: space-between; font-size: var(--basic-box-font-size); font-weight: 400; color: #212121;}
.form .input_box .input_row.selects_row .inp {font-size: var(--basic-box-font-size);}
.form .input_box .input_row.selects_row .select_box {display: flex; flex-wrap: wrap; align-items: center; gap: 0.4em 1em;}
.form .input_box .input_row.selects_row .select_box label {font-size: var(--basic-box-font-size);}
.form .input_box .input_row.selects_row .select_box input[type="radio"] + span {padding-left: 1.2em;}
.form .input_box .input_row.selects_row .select_box input[type="radio"] + span:before {width: 0.8em; height: 0.8em; border: 0.08em solid #aaa;}
.form .input_box .input_row.selects_row .select_box input[type="radio"] + span:after {width: 1em; height: 0.5em; border-width: 0 0 0.2em 0.2em;}

.form .description {margin-top: 2%; font-size: 1.6em;}
.form .agBox {margin: 3% 0; width: 100%; font-size: 1.6em;}
.form .agreement {font-size: 1.6em;}
.form .submit {padding: 0;}
.form input[type="submit"] {margin-top: 0; background-color: #ff453d;}
.form .agreement {width: 100%;}

/* radio 사이즈 업 커스텀 */
.form input[type="radio"] + span:before {width: 0.8em; height: 0.8em; border-color: #212121;}
.form input[type="radio"] + span {padding-left: 1.3em;}
.form input[type="radio"] + span:after {width: 0.95em; height: 0.4em; border-width: 0 0 0.18em 0.18em;}

@media screen and (max-width: 768px){
    body {font-size: 1.25vw;}
}
</style>

<div id="wrap">
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
        <div class="gage-area img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage_01.png"></div> <!-- 게이지 바 -->
    </div>

	<div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 

            <section class="page" data-value="1">
                <div class="sectionInner">
                    <div class="question_box">
                        <div class="question">
                            <div class="q_num">1</div>
                            <div class="q_text"><strong>쥬베룩 볼륨</strong>을<br>알고 계신가요?</div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd1" value="예" onchange="goToNextPage(1);"><span>예</span></label>
                            <label><input type="radio" name="tadd1" value="아니오" onchange="goToNextPage(1);"><span>아니오</span></label>
                        </div>
                    </div>
                    <div class="next_btn" onclick="goToNextPage(1);">계속하기</div>
                </div>
            </section>

            <section class="page" data-value="2">
                <div class="sectionInner">
                    <div class="question_box">
                        <div class="question">
                            <div class="q_num">2</div>
                            <div class="q_text"><strong>고민 사항</strong>이 어떻게<br>되시나요?</div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd2" value="피부탄력" onchange="goToNextPage(2);"><span>피부탄력</span></label>
                            <label><input type="radio" name="tadd2" value="피부결" onchange="goToNextPage(2);"><span>피부결</span></label>
                            <label><input type="radio" name="tadd2" value="피부톤" onchange="goToNextPage(2);"><span>피부톤</span></label>
                            <label><input type="radio" name="tadd2" value="복합적 문제" onchange="goToNextPage(2);"><span>복합적 문제</span></label>
                        </div>
                    </div>
                    <div class="next_btn" onclick="goToNextPage(2);">계속하기</div>
                </div>
            </section>

            <section class="page" data-value="3">
                <div class="sectionInner">
                    <div class="question_box">
                        <div class="question">
                            <div class="q_num">3</div>
                            <div class="q_text"><strong>연령대</strong>가 어떻게<br>되시나요?</div>
                        </div>
                        <div class="q_select">
                            <label><input type="radio" name="tadd3" value="20대" onchange="goToNextPage(3);"><span>20대</span></label>
                            <label><input type="radio" name="tadd3" value="30대" onchange="goToNextPage(3);"><span>30대</span></label>
                            <label><input type="radio" name="tadd3" value="40대" onchange="goToNextPage(3);"><span>40대</span></label>
                            <label><input type="radio" name="tadd3" value="50대 이상" onchange="goToNextPage(3);"><span>50대 이상</span></label>
                        </div>
                    </div>
                    <div class="next_btn" onclick="goToNextPage(3);">계속하기</div>
                </div>
            </section>

            <section class="page" data-value="4">
                <div class="sectionInner">
                    <div class="question_box">
                        <div class="question">
                            <div class="q_num">4</div>
                            <div class="q_text">귀하의 <strong>성함과 연락처</strong>를<br>입력해 주세요</div>
                        </div>
                        <div class="input_box">
                            <label class="input_row">
                                <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="성함">
                            </label>
                            <label class="input_row">
                                <input type="tel" name="phone" id="phone" class="inp"  required="" autocomplete="off" maxlength="11" placeholder="전화번호 ('-'제외)">
                            </label>
                            <div class="input_row selects_row">
                                <div class="input_info"><span>지</span><span>점</span></div>
                                <div class="select_box">
                                    <label><input type="radio" name="branch" id="branch" value="신논현"><span>신논현</span></label>
                                    <!-- <label><input type="radio" name="branch" value="제주"><span>제주</span></label> -->
                                </div>
                            </div>
                        </div>
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
                    <div class="submit"><input type="submit" onclick="fnForm('form-1')" class="next_btn" value="설문제출 완료"></div>
                    <div class="description">
                        <p id="event-period"></p>
                        <span>대상 : 대상 : ${resVo.target}</span>
                    </div>
                </div>
            </section>
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
	$(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
	});
    // 페이지 이동 함수
    function processPageTransition(pageNum) {
		$('[data-value="' + pageNum + '"]').fadeOut(function() {
            $('[data-value="' + (pageNum + 1) + '"]').fadeIn();
			$('.gage-area img').attr('src', '//static.resta.co.kr/event/v_' + ${eventSeq} + '/gage_0' + (pageNum + 1) + '.png'); // 게이지 바
        });
    }
    
    // add radio 체크 유효성
	function goToNextPage(pageNum) {
	    switch (pageNum) {
	        // case 4: // 4페이지 (이름)
	        //     if (!validateName()) return false;
	        //     processPageTransition(pageNum);
	        //     break;
	        default: // 나머지 페이지
            if ($("input[name='tadd" + pageNum + "']").is(':checked')) {
                processPageTransition(pageNum);
            } else {
                alert("설문 항목을 선택해 주세요.");
                return false;
            }
            break;
	    }
	}

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`);
		if (!selectedRadio3) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		}
		
		let selectedRadio4 = procForm.querySelector(`input[name="branch"]:checked`);
		if (!selectedRadio4) {
			alert("지점 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='branch']").value = selectedRadio4.value;
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
			,'branch': '지점'
			,'add1': '설문1'
			,'add2': '설문2'
			,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>