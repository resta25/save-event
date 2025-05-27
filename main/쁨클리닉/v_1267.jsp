<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {font-family: "Noto Sans KR", sans-serif;}
.img-area img {margin: 0;}
.form .question_box {
    padding: 1% 0 3%;
}
.form .question_box .question {
    margin: 0 auto 2%;
    width: 100%;
}
.form .question_box .q_select {
    text-align: center;
}
.form .question_box .q_select label {
    padding: 1%;
    width: 20%;
}
.form .q_select label img {width: 100%;}

.form .q_select.place {justify-content: center; align-items: center; position: absolute; top: 30%; left: 9%; width: 100%;}
.form .q_select.place label:nth-child(1) {width: 16%; margin-right: 3%;}
.form .q_select.place label:nth-child(2) {width: 20%;}

.form .formContents {padding: 2% 0;}
.form .description {
    width: 98%;
    text-align: center;
    margin: 0 auto;
    padding: 0;
}
.form .description p {
    font-weight: bold;
    font-size: 95%;
    margin: 0 auto;
    padding: 0.5% 0;
    letter-spacing: -0.5px;
}
.form .user_info {width: 80%; margin: 0 auto; padding: 5% 0 3%;}
.form .user_info div {margin-bottom: 3%; position: relative;}
.form .user_info div img {width: 100%;}

.form .submit {width: 70%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

.form .agBox {font-family: 'noto sans kr'; margin: 2% auto;}

/* 상단 카운트 box */
.count-box {position: absolute; top: 0.5%; left: 50%; transform: translateX(-50%); width: 80%;}
.remaining-count {position: absolute; top: 43%; transform: translateY(-50%); left: 51%; font-size: 200%; font-weight: 700; color: #282828;}

/* db단 이름, 나이, 연락처 */
.db-box {}
.db-box .user-info {display: flex; align-items: center; width: 87%; margin: 0 auto;}
.db-box .user-info:not(:last-child) {margin-bottom: 1%;}
.db-box .user-info .title{display: block; width: 15%; font-size: 120%; color: #575757; font-weight: 700;}
.db-box .user-info input{background: #ededed; border-radius: 0.8rem; padding: 2%;}

@media screen and (max-width: 500px){
	.form .question {top: 14%;}
	.form .inp {top: 13%;}
	.form .description {font-size: 85%;}
    .remaining-count {font-size: 110%; top: 45%;}
    .db-box .user-info .title {width: 20%;}
}
</style>

<div id="wrap">
    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8"> 

            <div class="container">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
                <div class="count-box">
                    <div class="img-area">
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/floating.png">
                        <span class="remaining-count">45</span>
                    </div>
                </div>
                <div class="video-wrap">
                    <div class="video-box"><video id="location" playsinline au muted loop src="//static.resta.co.kr/event/v_${eventSeq}/video.mp4" type="video/mp4"></video></div>
                    <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
                </div>
            </div>

            <div class="question_container">
                <div class="question_box">
                    <div class="question">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.jpg"></div>
                    </div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="얇은입술"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="radio" name="tadd1" value="비대칭입술"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                        <label><input type="radio" name="tadd1" value="처진입꼬리"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                        <label><input type="radio" name="tadd1" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                    </div>
                </div>

                <div class="formContents">

                    <div class="formGroup">
                        <div class="db-box">
                            <div class="user-info user-name">
                                <span class="title">이름</span>
                                <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름을 입력해주세요.">
                            </div>
                            <div class="user-info user-age">
                                <span class="title">나이</span>
                                <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해주세요.">
                            </div>
                            <div class="user-info user-phone">
                                <span class="title">연락처</span>
                                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해주세요. (-제외)">
                            </div>
                        </div>
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

                    <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>

                    <div class="description">
                        <div class="description orage-box">
                            <p id="event-period"></p>
                        </div>	
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span>대상 : ${resVo.target}</span>
                    </div>
                    
                </div>
            </div>

            <input type="hidden" id="branch" name="branch" value="잠실"/> <!-- 지점 고정값 1/4 -->
			
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
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.png"></div>
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
    // 신청 인원 카운트다운 기능
    let remainingCount = 45; // 초기 인원수
    const $countElement = $('.remaining-count'); // 숫자를 표시하는 요소

    // 카운트다운 시작
    const countdownInterval = setInterval(() => {
        if (remainingCount > 0) {
            remainingCount--; // 1명 차감
            $countElement.text(remainingCount ); // 새로운 값 표시
        }
    }, 5000); // 5000ms = 5초 간격

	// 설문 클릭시 이미지변경
	$('input[name*=tadd], input[name=branch]').bind('click', function(){
		$('label', $(this).parents('.q_select')).each(function(i,t) {
			$('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
		});
		$('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
	});

	$('a.disagree').bind('click',function(){
		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');

		setTimeout(function(){ 
            $('input[name=agBox]').trigger('click')
        }, 500);
	})


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
			,'add1': '설문'
			// ,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>
