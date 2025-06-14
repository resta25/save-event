<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#wrap {font-family: 'noto sans kr';}
.form .formContents {padding-bottom: 4%;}

.form .question_box {padding:3% 0; text-align:center;}
.form .question_box img {width:100%;}
.form .question_box .question {margin: 5% auto; width: 70%;}
.form .question_box .q_select label {padding:0 1.5%; font-size:150%;}

.form .db-box {background: #fff898; padding: 3% 0;}

/* input css*/
.input_box {margin: 2% auto; width: 80%;}
.input_box .input_row {border: 1px solid #000; display: flex; align-items: center; background: #fff; padding-left: 2%;}
.input_box .input_row .title {width: 35%;}
.input_box .input_row .title img {width: 100%;}
.input_box .input_row:not(:last-child) {margin-bottom: 1.5%;}
.input_box .input_row .input_label {width: auto; text-align: left; font-size: 28px; font-weight: 400; color: #000;}
.input_box .input_row .inp {padding: 0.8em 0; font-size: 24px;}
.input_box .input_row .inp::placeholder {color: #797979;}

.form .submit {padding: 0;}
.form input[type="submit"] {width: 500px; height: 100px;margin-top: 0; background-color: #ff453d;}

@media screen and (max-width: 768px) {
    .form .question_box .question {width: 90%;}
    .form .question_box .q_select label {font-size: 4vw;}

    .input_box .input_row .inp {font-size: 4vw;}
}
</style>

<div id="wrap">
    <div class="container">
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_00.jpg"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
            <div class="formContents">
                <div class="question_box">
                    <div class="question"><img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="5kg 이하"><span>5kg 이하</span></label>
                        <label><input type="radio" name="tadd1" value="5-10kg"><span>5-10kg</span></label>
                        <label><input type="radio" name="tadd1" value="10-20kg"><span>10-20kg</span></label>
                        <label><input type="radio" name="tadd1" value="20kg 이상"><span>20kg 이상</span></label>
                    </div>
                </div>
                <div class="db-box">
                    <div class="description">
                        <!--<p>이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>-->
						<p id="event-period"></p>
                        <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    </div>
                        
                    <div class="formGroup">
                        <div class="input_box">
                            <div class="input_row">
                                <span class="title"><img src="//static.savemkt.com/event/v_${eventSeq}/name_01.png" alt=""></span>
                                <input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름">
                            </div>
                            <div class="input_row">
                                <span class="title"><img src="//static.savemkt.com/event/v_${eventSeq}/age.png" alt=""></span>
                                <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                            </div>
                            <div class="input_row">
                                <span class="title"><img src="//static.savemkt.com/event/v_${eventSeq}/phone_01.png" alt=""></span>
                                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-')없이 입력">
                            </div>
                            <input type="hidden" name="branch" id="branch" class="inp" required="" value="상상부산점">
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
                    <div class="submit"><input type="submit" onclick="fnForm('form-1')" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb.png"></div>
                    <div class="description">
                        <span>대상 : ${resVo.target}</span>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg"></div>
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div>
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_05.jpg"></div>
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_06.jpg"></div>
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

    <div class="form">
        <form id="form-2" method="POST" accept-charset="utf-8"> 

            <div class="formContents">
                <div class="question_box">
                    <div class="question"><img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="5kg 이하"><span>5kg 이하</span></label>
                        <label><input type="radio" name="tadd1" value="5-10kg"><span>5-10kg</span></label>
                        <label><input type="radio" name="tadd1" value="10-20kg"><span>10-20kg</span></label>
                        <label><input type="radio" name="tadd1" value="20kg 이상"><span>20kg 이상</span></label>
                    </div>
                </div>

                <div class="db-box">
                    <div class="description">
                        <!--<p>이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>-->
						<p id="event-period"></p>
						<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    </div>
                        
                    <div class="formGroup">
                        <div class="input_box">
                            <div class="input_row">
                                <span class="title"><img src="//static.savemkt.com/event/v_${eventSeq}/name_01.png" alt=""></span>
                                <input type="text" name="name" id="name" value="" class="inp" required="" autocomplete="off" placeholder="이름">
                            </div>
                            <div class="input_row">
                                <span class="title"><img src="//static.savemkt.com/event/v_${eventSeq}/age.png" alt=""></span>
                                <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                            </div>
                            <div class="input_row">
                                <span class="title"><img src="//static.savemkt.com/event/v_${eventSeq}/phone_01.png" alt=""></span>
                                <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-')없이 입력">
                            </div>
                            <input type="hidden" name="branch" id="branch" class="inp" required="" value="상상강남">
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
                    <div class="submit"><input type="image" onclick="fnForm('form-2')" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb.png"></div>
                    <div class="description">
                        <span>대상 : ${resVo.target}</span>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_10.jpg"></div>
                <div class="subscribe" data-limit="10"></div>
            </div>
			<!-- Form 필수값 start -->
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
			<!-- Form 필수값 end -->
		</form>
	</div>

		<div class="container">
		<div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
	</div>
	
</div>
<!-- 필수 js start -->
<!--view_script start -->${resVo.viewScript}<!--view_script end-->
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<!-- 필수 js end -->
<!--
	PHP to JSP
	1. 상단에 설정 필요 (2줄로 입력해야함)
	 - 	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%> 
	2. 이미지 경로 변경
	 - <?php echo $this->no;?> -> ${eventSeq}
	3. 변수
	 - ${resVo.agent} : 모모의원
	 - ${resVo.objectItems} : 이름,나이,전화번호,설문
	 - ${resVo.objectName} : 모발이식
	 - ${resVo.target} : GDN 및 유튜브 이용자
-->
<script> 
	/*
	* 페이지마다 존재하던 사이즈 재조절은 공통으로 모든페이지에 자동적용 
	* setScreenSize();
	* window.addEventListener('resize', setScreenSize);
	*/
	
	/*
	* 드레그, 우클릭 방지
	* blockSourceView()
	*/
	
	/*
	* 기간 항목 넣기
	* initDate()
	* <p id="event-period"></p> 아이디 설정 필요
	*/

	/*
	* 신청자 리스트 불러오기
	* getComment(이벤트번호) : getComment('1345');
	* div class="subscribe" 하위에 생성 클래스 설정 확인
	*/
	getComment('1345');
	$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
		$('.btn_moreSubscribe').prop('disabled', true);
		e.preventDefault();
		getComment();
	});
	
	/*
	* 이벤트 카운트 가져오기
	* eventCount(이벤트번호) : eventCount('1342');
	* <span id="eventCnt"> 아이디 설정 필요
	*/
	
	/*
	* 신청하기 처리
	* fnForm(form id)
	*/
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("라디오 버튼이 선택되지 않았습니다.");
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
			,'phone': '전화번호'
			, 'age': '나이'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>