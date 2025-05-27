<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {box-sizing: border-box; font-family: 'Noto Sans KR', sans-serif;}
#wrap {overflow: hidden;}

/* 공통 폰트 사이즈 */
.label {font-size: 28px;}
.form .question_box.row .q_select label, .form .question_box.row .q_select .inp {font-size: 28px;}

.form{}

.subscribe .btn_moreSubscribe {display: none;}

/* 이벤트 종료 기간 */
.event_img {width: 70%; margin: 0 auto;}
.remaining-time {position: absolute; top: 48%; transform: translateY(-50%); right: 7%; font-size: 220%; color: #fff;}

/* 안심문구 */
.form .description .ad_txt {margin: 3% 0;}

/* label css */
.label {position: relative; padding: 0.3em 0; width: 100%; text-align: center; font-weight: 600; border: 1px solid #111; border-radius: 0.3em; overflow: hidden;}
.label span {position: inherit; z-index: 1;}

/* 이름, 나이, 연락처 입력칸 */
.question_container{}
.user_info {width: 80%; margin: 0 auto;}
.input_row {display: flex; align-items: center; justify-content: center; margin-bottom: 2%;}
.title {display: block; background: #ffbbd6; padding: 2% 5%; font-size: 150%; font-weight: 600; width: 40%; text-align: center;}
.form .inp {font-size: 150%; padding: 2% 5%; border: 1px solid #dadada;}

/* submit 영역 */
.submit_box {display: flex; justify-content: center; margin: 2% 0;}

/* question_box 활성화 시 효과 css */
/* .form .question_box.active .label::before{transition: all .8s ease-out; width: 100%;} */

/* question_box.row 기본 css */
/* .form .question_box.row {display: grid; grid-template-columns: 1.2fr 4fr;}
.form .question_box.row:not(:last-child) {margin-bottom: 0.7em;}
.form .question_box.row .q_select {padding-left: 2%; border-bottom: 1px solid #111;}
.form .question_box.row .q_select label {padding: 1% 0;}
.form .question_box.row .q_select label:not(:last-child){margin-right: 2%;} */

.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before{border: 1px solid #111;}
.form .agBox{width: 100%;}
.form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

/* 실시간 신청 현황 */
.sign_wrap {width: max-content; overflow: hidden; background: #fff;}
.sign {padding: 1% 0; display: flex; gap:2%;}
.subscribe {background: none; display: flex; gap: 1%; padding: 0; width: max-content; animation: slide 50s linear infinite;}
.subscribe .content {flex-shrink: 0; border-radius: 0.8em; background-color: #ffd5d5; width: 200px; border-bottom: none; padding: 1.5em;}
/* .subscribe .content {background: #efefef;} */
.subscribe .content .msg {font-size: 150%; font-family: 'noto sans kr'; margin-bottom: 5%;}
.subscribe .content .name {font-family: 'noto sans kr';}
.subscribe .content .date {font-family: 'noto sans kr';}

/* 신정현황 애니메이션 */

@keyframes slide {
	0% {transform: translateX(0);}
	100% {transform: translateX(-100%);}
}

/* 버튼 효과 */
@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}

@media screen and (max-width: 500px){
    .form .inp, .title, .remaining-time {font-size: 120%;}
    
}

</style>
<div id="wrap"> 
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <video id="location" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
        <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
	</div>
    
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
            <div class="img-area event_img">
                <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png">
                <span class="remaining-time"></span>
            </div>
            <div class="description">
                <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
            </div>
            <div class="question_container">
                <div class="user_info">
                    <div class="input_row user_name">
                        <span class="title">이름</span>
                        <input type="text" name="name" id="name" class="inp"  required="" autocomplete="off" placeholder="이름을 입력하세요">
                    </div>
                    <div class="input_row user_age">
                        <span class="title">나이</span>
                        <input type="tel" name="age" id="age" class="inp"  required="" autocomplete="off"  maxlength="2" placeholder="나이를 입력하세요">
                    </div>
                    <div class="input_row user_phone">
                        <span class="title">전화번호</span>
                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해 주세요">
                    </div>
                    <input type="hidden" name="branch" id="branch" class="inp" required="" value="노원점">
                </div>
            </div>

            <div class="formContents">
                <div class="agBox">
                    <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
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
                <div class="submit_box">
                    <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></div>
                    <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></div>
                </div>
                <div class="description">
                    <span>대상 : ${resVo.target}</span>
                    <p id="event-period"></p>
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

    <!-- 신청자 현황 -->
    <div class="sign_wrap">
        <div class="container sign">
            <div class="subscribe" data-limit="5"></div>
            <div class="subscribe" data-limit="5"></div>
        </div>
    </div>

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
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
		
		getComment('1182');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1182');
		});
		
	    function updateRemainingTime() {
	        const now = new Date(); // 현재 시간
	        const endOfMonth = new Date(now.getFullYear(), now.getMonth() + 1, 0, 23, 59, 59); // 해당 월의 마지막 날 23:59:59
	
	        const remainingTime = endOfMonth - now; // 남은 시간 (밀리초 단위)
	
	        // 새 달이 시작되면 다음 달 계산
	        if (remainingTime <= 0) {
	            setTimeout(updateRemainingTime, 1000); // 바로 업데이트
	            return;
	        }
	
	        const remainingDays = Math.floor(remainingTime / (1000 * 60 * 60 * 24)); // 남은 일
	        const remainingHours = Math.floor((remainingTime % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)); // 남은 시간
	        const remainingMinutes = Math.floor((remainingTime % (1000 * 60 * 60)) / (1000 * 60)); // 남은 분
	
	        // 두 자리 숫자로 표시
			const formattedHours = remainingHours < 10 ? '0' + remainingHours : remainingHours;
			const formattedMinutes = remainingMinutes < 10 ? '0' + remainingMinutes : remainingMinutes;

			// 남은 시간을 표시
			$('.remaining-time').text(remainingDays + ': ' + formattedHours + ': ' + formattedMinutes);
	    }
	
	    // 매 분마다 업데이트
	    updateRemainingTime(); // 초기 실행
	    setInterval(updateRemainingTime, 60 * 1000); // 1분 간격으로 업데이트
	});

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var newMemo = data[v].memo.replace("~!", "");
				
				var html  = '<div class="content" data-id="'+ data[v].eid +'">';
					html += '	<div class="msg">'+ newMemo +'</div>';
					html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				$(obj).append(html);
			}
		});
	}
    // 설문 click or keyup 시 다음 셀렉 활성화, CSS
    function enableNextEl(obj) {
        let currentValue = obj.getAttribute('data-value');
        let currentQuestionBox = obj.closest('.question_box');
        let nextQuestionBoxes = document.querySelectorAll('.question_box[data-value="'+ (Number(currentValue) + 1) +'"]');
        
        nextQuestionBoxes.forEach(function(nextQuestionBox) {
            let nextInputs = nextQuestionBox.querySelectorAll('input');
            nextInputs.forEach(function(nextInput) {
                nextInput.removeAttribute('disabled');
            });
            nextQuestionBox.classList.remove('disabled');
        });

        currentQuestionBox.classList.add('active');
    }

    // 이미지 변경 스크립트 추가
    $('input[name="add1"]').change(function() {
        if ($(this).is(':checked')) {
            $(".namePrint").attr("src", "//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg");
        }
    });

    // 화면에 터치 시 이름 입력 필드 포커싱
    document.getElementById("wrap").addEventListener("touchstart", () => {
        document.getElementById('user_name').focus();
    }, {once: true}) 

	function fnForm(formId){
			/* form 자동 처리 방지 */
			event.preventDefault();
			/* form id로 proc */
			let procForm = document.getElementById(formId);
			
			/*
			let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
			if (!selectedRadio1) {
				alert("설문1 항목을 선택해주세요.");
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
			*/


			var required = {
				'name': '이름'
				,'age': '나이'
				,'phone': '전화번호'
				// ,'add1': '설문'
				// ,'add2': '설문'
				// ,'add3': '설문'
				// ,'branch': '지점'
				,'agBox': '개인정보'
			};
			
			validateForm(procForm, required);
		}
</script> 