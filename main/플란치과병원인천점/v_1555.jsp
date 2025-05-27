<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
* {box-sizing: border-box; font-family: 'Noto Sans KR', sans-serif;}

body {font-size: 10px;}

:root {
    --bg-main: #fff;
    --color-main: #0084ff;
    --gap-common: 3em;

    --bg-note-frame: #d9dae1;
    --bg-note-inner: #fff;
    --border-radius-note: 2em;

    --font-size-input: 2.3em;

    --bg-gage: #b7feff;
}

#wrap {background-color: var(--bg-main);}

.form {margin-top: -16%; padding: 0 2.5em 5em; background-color: #2c2c2c;}

/* 게이지 */
.gage::before {position: absolute; left: 0; top: 0; display: block; width: 0; height: 100%; content: ''; background: var(--bg-gage);}
.gage.active::before {transition: all 1s ease-out; width: 100%;}

/* note css */
.note_container .note_clip {position: absolute; top: 2.5%; left: 50%; transform: translateX(-50%); width: 42%;}
.note_container .note_clip img {width: 100%;}
.note_container {position: relative; padding: 7% 3.5% 6%; border-radius: var(--border-radius-note); background: var(--bg-note-frame);}
.note_container .note_inner {padding: 11% 4% 5%; background: var(--bg-note-inner);}
.note_container .note_inner .notice_text {margin-bottom: 0.3em; letter-spacing: -0.05em; font-size: 2.4em; font-weight: 600; color: var(--color-main);} /* 필수 선택 텍스트 css */

.note_container .note_inner .question_container {padding: var(--gap-common) 0; display: grid; gap: 1em; border-top: 0.2em solid #000; border-bottom: 0.2em solid #000;}
.note_container .note_inner .question_container .question_box {padding: 2% 3%; position: relative; display: flex; gap: 2em; align-items: center; overflow: hidden; border-radius: 0.8em; border: 0.3em solid #111; background-color: #fff;}
.note_container .note_inner .question_container .question_box .question {z-index: 1; display: flex; justify-content: space-between; align-items: center; width: 17.2%; font-size: 2.9em; text-align: left; letter-spacing: -1px; font-weight: bold; color: var(--color-main);}
.note_container .note_inner .question_container .question_box .q_select {display: flex; gap: 1.5em; align-items: center; text-align: left;}
.note_container .note_inner .question_container .question_box:nth-of-type(1) .q_select {gap: 3em;}
.note_container .note_inner .question_container .question_box .q_select label {font-size: 2.5em; color: #000;}

/* 비활성화 */
.note_container .note_inner .question_container .question_box.disabled {border: 1px solid #ddd; background-color: #ececec;}
.note_container .note_inner .question_container .question_box.disabled .question {color: #5a5a5a;}
.note_container .note_inner .question_container .question_box.disabled .q_select label {opacity: 0.4;}

/* 셀렉 박스 기본 */
.note_container .note_inner .question_container .question_box .q_select label .inp + .sel_item {position: relative; padding-left: 1.7em; font-weight: 500; color: #000;} 
.note_container .note_inner .question_container .question_box .q_select label .inp + .sel_item::before {position: absolute; left: 0; top: 50%; transform: translateY(-50%); display: flex; align-items: center; justify-content: center; width: 1.5em; height: 1.5em; text-align: center; font-size: 0.7em; border-radius: 999px; content: '●'; border: 0.18em solid #aaa; color: #aaa;} /* 셀렉 원 */

/* 셀렉 박스 checked */
.note_container .note_inner .question_container .question_box .q_select label .inp:checked + .sel_item {color: var(--color-main);}
.note_container .note_inner .question_container .question_box .q_select label .inp:checked + .sel_item::before {content: '●'; color: var(--color-main); border: 0.18em solid var(--color-main);} /* 셀렉 원 */

.input_box {padding: var(--gap-common) 0; display: grid; grid-template-columns: repeat(2, 1fr); gap: 0.7em; align-items: center;}
.input_box .input_row {z-index: 1; position: relative; border: 0.3em solid #000; border-radius: 1em; background-color: #fff; overflow: hidden;}
.input_box .input_row.disabled {border: 0.1em solid #ddd; background-color: #ececec;}
.input_box .input_row .inp {z-index: 1; padding: 0.7em 0.3em; position: relative; text-align: center; font-size: var(--font-size-input);}
.input_box .input_row .inp::placeholder {color: #999;}

/* 결과창 */
.result_box {padding: 3% 0; display: flex; gap: 0.3em; align-items: center; justify-content: center; letter-spacing: -0.05em; font-size: 2.8em; font-weight: 500; border: 2px solid #111; border-radius: 0.3em;}
.result_box .namePrint {padding: 0 2%; width: 5em; height: 1.5em; text-align: center; background-color: #eee;}

.form .agBox {margin: 1em auto;; width: 100%; font-size: 1.4em;}
.form .description {font-size: 1.6em;}
.form .description.top {padding: 0.5em 0 1em;}
.form .description.bottom {padding: 1em 0; border-radius: 0.8em;}
.form .agreement {width: 100%; font-size: 1.6em;}
.form .submit {padding: 0;}
.form .submit input[type="image"] {width: 100%; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

/* 신청자 현황 */
.subscribe .content {font-size: 1.2rem;}


@keyframes scroll {
    0% { transform: translateX(0); -webkit-transform: translateX(0); }
    100% { transform: translateX(calc(-100% - var(--gap))); -webkit-transform: translateX(calc(-100% - var(--gap)));}
}

/* 버튼 효과 */
@keyframes pulsating {
    50% {transform: scale(0.95);}
}

@media screen and (max-width: 768px){
    body {font-size: 1.25vw;}
    .subscribe .content {font-size: 0.8rem;}
}
</style>

<div id="wrap"> 
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
	</div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 

            <div class="note_container">
                <div class="note_clip"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_01.png"></div>

                <div class="note_inner">
                    <div class="notice_text">※ 필수 선택</div>

                    <div class="question_container">
                        <div class="question_box gage">
                            <div class="question"><span>필</span><span>요</span><span>개</span><span>수</span></div>
                            <div class="q_select">
                                <label><input type="radio" class="inp" name="tadd1" value="1개" onclick="enableNextEl(1,$(this),'radio');"><div class="sel_item">1개</div></label>
                                <label><input type="radio" class="inp" name="tadd1" value="2개" onclick="enableNextEl(1,$(this),'radio');"><div class="sel_item">2개</div></label>
                                <label><input type="radio" class="inp" name="tadd1" value="3개" onclick="enableNextEl(1,$(this),'radio');"><div class="sel_item">3개</div></label>
                                <label><input type="radio" class="inp" name="tadd1" value="4개 이상" onclick="enableNextEl(1,$(this),'radio');"><div class="sel_item">4개 이상</div></label>
                            </div>
                        </div>
                        <div class="question_box gage disabled">
                            <div class="question"><span>연</span><span>령</span></div>
                            <div class="q_select">
                                <label><input type="radio" class="inp" name="tage" value="30" onclick="enableNextEl(2,$(this),'radio');"><div class="sel_item">30대</div></label>
                                <label><input type="radio" class="inp" name="tage" value="40" onclick="enableNextEl(2,$(this),'radio');"><div class="sel_item">40대</div></label>
                                <label><input type="radio" class="inp" name="tage" value="50" onclick="enableNextEl(2,$(this),'radio');"><div class="sel_item">50대</div></label>
                                <label><input type="radio" class="inp" name="tage" value="60" onclick="enableNextEl(2,$(this),'radio');"><div class="sel_item">60대 이상</div></label>
                            </div>
                        </div>
                    </div>

                    <div class="input_box">
                        <label class="input_row gage disabled">
                            <input type="text" name="name" id="name" class="inp" required="" disabled autocomplete="off" maxlength="10" placeholder="이름">
                        </label>
                        <label class="input_row gage disabled">
                            <input type="tel" name="phone" id="phone" class="inp" required="" disabled autocomplete="off" maxlength="11" placeholder="연락처">
                        </label>
                    </div>

                    <div class="result_box">
                        <span class="namePrint"></span><span>님은 혜택적용</span> <strong><span class="possible">가능</span> or 불가능</strong> <span>합니다.</span>
                    </div>

                    <div class="agBox">
                        <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                    </div>
                    <div class="agreement">
                        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
                        <div class="agreementContent">
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
                    <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div> 
                    <div class="description top">
                        <span id="target">대상 : ${resVo.target}</span>
                    </div>
                    <div class="description bottom">
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <p id="event-period"></p>
                    </div>
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
            <input type="hidden" id="age" 			name="age" value=""/>
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
        <div class="img-area bottom"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_02.png"></div>
        <!-- 신청자 현황 -->
        <div class="subscribe" data-limit="10"></div>

		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function(){
	    initDate();/* 기간항목 start */
	    blockSourceView();//드래그, 우클릭 방지
		
		getComment('1555'); // 댓글 관련 함수
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1555');
		});
	});

	// 댓글 더보기
	function returnComment(resultData, meoreData){
		var today = new Date();   
			var month = today.getMonth() + 1;
			var dateNum;
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				
				$(obj).append(html);
			}
			if(meoreData > 10) {
				$(obj).append('<button type="button" class="btn_moreSubscribe">댓글 더보기 &raquo;</button>');	
			}
		});
	}
	

    // 설문 셀렉 시 다음 셀렉 게이지 & 활성화
    function enableNextEl(num, obj, type) {
        let getName = obj.attr('name'); // 현재 선택된 input의 name 값 가져오기
        let nextName; //다음 설문

        if (type === 'radio') { // 다음 설문이 radio일 경우
            if (num === 1) {
                nextName = $('input[type="radio"][name="tage"]'); // 두 번째 질문이 나이(age)일 경우 처리
            } else {
                nextName = $('input[type="radio"][name="tadd' + (num + 1) + '"]'); // 그 외의 경우는 add(num + 1)
            }
        } 

        let currentQuestionBox = obj.closest('div.question_box.gage'); //현재 설문
        let nextQuestionBox = nextName.closest('div.question_box.gage'); //다음 설문

        nextName.attr('disabled', false); 
        currentQuestionBox.addClass('active'); 
        nextQuestionBox.removeClass('disabled'); 
    }

    function enableNextEl(num, obj, type) {
        let getName = obj.attr('name'); // 현재 선택된 input의 name 값 가져오기
        let nextName; // 다음 설문

        if (type === 'radio') { // 다음 설문이 radio일 경우
            if (num === 1) {
                nextName = $('input[type="radio"][name="tage"]'); // 두 번째 질문이 나이(age)일 경우 처리
            } else if (num === 2) {
                $('input[name="name"]').attr('disabled', false); // 이름 필드 활성화
                $('input[name="name"]').closest('.input_box .input_row').removeClass('disabled');
                $('input[name="phone"]').attr('disabled', true);  // 전화번호는 여전히 비활성화
                nextName = $('input[type="radio"][name="add' + (num + 1) + '"]'); // 그 외의 경우는 add(num + 1)
            }
        }

        let currentQuestionBox = obj.closest('div.question_box.gage'); //현재 설문
        let nextQuestionBox = nextName.closest('div.question_box.gage'); //다음 설문

        nextName.attr('disabled', false); 
        currentQuestionBox.addClass('active'); 
        nextQuestionBox.removeClass('disabled'); 
    }

    // input 게이지 & 활성화
	function toggleInputState(isValid, nextInputName, currentInput) {
	    if (isValid) {
	        if (nextInputName) {
	            $('input[name="' + nextInputName + '"]').attr('disabled', false);
	        }
	        currentInput.closest('.input_row').addClass('active');
	    } else {
	        if (nextInputName) {
	            $('input[name="' + nextInputName + '"]').attr('disabled', true);
	        }
	        currentInput.closest('.input_row').removeClass('active');
	    }
	}

    $(document).ready(function() {
        // 이름 2글자 이상 입력 시
        $('input[name="name"]').on('keyup input change', function() {
            const name = $(this).val();
            const isNameValid = name.length >= 2;
            toggleInputState(isNameValid, 'phone', $(this)); // 전화번호 필드 활성화 여부 결정

            if (isNameValid) {
                $('input[name="phone"]').attr('disabled', false); 
                $('input[name="phone"]').closest('.input_box .input_row').removeClass('disabled'); 
            } else {
                $('input[name="phone"]').attr('disabled', true); 
                // $('input[name="phone"]').closest('.input_box .input_row').addClass('disabled'); 
            }

            $(".namePrint").text(name); // 이름 출력
            checkConditionsForPossible(); 
        });

        $('input[name="phone"]').on('keyup input change', function() {
            const phone = $(this).val();
            const isPhoneValid = phone.length === 11 && phone.substring(0, 3) === "010"; // 전화번호가 010으로 시작하고 11자리인지 확인
            toggleInputState(isPhoneValid, null, $(this)); 

            checkConditionsForPossible();
        });

        function checkConditionsForPossible() {
            const isAddSelected = $('input[name="tadd1"]:checked').length > 0; // add 선택
            const isAgeSelected = $('input[name="tage"]:checked').length > 0; // age 선택
            const isNameValid = $('input[name="name"]').val().length >= 2; // 이름이 2글자 이상
            const isPhoneValid = $('input[name="phone"]').val().length === 11 && $('input[name="phone"]').val().substring(0, 3) === "010"; 

            // 모든 조건 충족 시 '가능' 텍스트에 빨간색 적용
            const possibleTextColor = (isAddSelected && isAgeSelected && isNameValid && isPhoneValid) ? '#f00' : '#000';
            $('.result_box .possible').css('color', possibleTextColor);
        }
    });

    // safari vh
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
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		
		let tage = procForm.querySelector('input[name="tage"]:checked');
		if (!tage) {
			alert("연령 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='age']").value = tage.value;
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