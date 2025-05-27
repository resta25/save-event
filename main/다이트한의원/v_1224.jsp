<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url('../css/common_new.css');
.hide{display:none;}
#wrap {font-family: 'noto sans kr';}

.page{background-color:#efefef;}
.page .container {margin:0 auto; padding:5%; border-radius:10px; box-sizing: border-box; background-color:#fff;}

.form .question_box .question{margin-bottom:4%; padding: 0 10%;}
.form .question_box .question span{font-size:34px; font-weight:900;}
.form .question_box .q_select {display: flex; align-items: center; justify-content: space-between;}
.form .question_box .q_select label{display:block; width: calc(100% / 4);}
.form .question_box .q_select label span{padding-left:15%; font-size: 3rem;}

/* 이름, 나이, 연락처 입력칸 */
.user_info {display: grid; border: 1px solid #cfcfcf; border-radius: 0.8em; margin: 3% 0;}
.user_info .user_input:nth-child(1) {grid-column: span 2;}
.user_info .user_input {grid-column: span 1;}
.user_info .user_input:nth-child(1) {border-top-left-radius: 0.7em; border-top-right-radius: 0.7em; border-bottom: 1px solid #cfcfcf;}
.user_info .user_input:nth-child(2) {border-bottom-left-radius: 0.7em; border-right: 1px solid #cfcfcf;}
.user_info .user_input:nth-child(3) {border-bottom-right-radius: 0.7em;}
.user_input {background: #f5f5f5;}
.form .user_input input {font-size: 3.7rem; text-align: center; padding: 2.5rem 0; }

.form .submit {width: 60%; margin: 0 auto;}
.form .submit input[type="image"] {width: 100%;}

/* 이벤트, 안심문구, 대상 */
.form .description {padding-bottom: 3.3rem;}
.form .description p,
.form .description .ad_txt,
.form .description span {font-size: 1.4rem;}

/* 개인정보 처리방침 */
.form .agBox {font-size: 1.4rem;}

/* 신청자 현황 */
.form .subscribe_box .img-area {width: 50%; margin:0 auto;}
.form .subscribe_box .subscribe {padding: 2.6rem 0;}
.form .subscribe_box .subscribe .content {border: 1px solid #9d9d9c; padding: 2.6rem 0 2.1rem 3.3rem; margin-bottom: 1.9rem;}
.form .subscribe_box .subscribe .content div {font-size: 1.85rem; letter-spacing: -0.039rem; padding: 0;}
.form .subscribe_box .subscribe .content .name {}
.form .subscribe_box .subscribe .content .msg {}
.form .subscribe_box .subscribe .content .date {}
.form .subscribe_box .subscribe .none {font-size: 1.85rem;}

@media screen and (max-width: 768px) {
    .form .question_box .question span{font-size: 5.2vw;}
    .form .question_box .q_select label span{font-size: 3rem; padding-left: 20%;}
    .form .user_input input {font-size: 2.4rem;}
}

@media screen and (max-width: 480px) {
    .form .question_box .q_select label span {font-size: 1.5rem;}
    .form .user_input input {font-size: 2rem;}
    .form .subscribe_box .subscribe .content div {font-size: 1.3rem;}
    .form .subscribe_box .subscribe .content {padding: 1.6rem 0 1.1rem 2.3rem;}
    .form .description p, .form .description .ad_txt, .form .description span {padding: 0; font-size: 1.2rem;}
    .form .agBox {font-size: 1.2rem;}
}

@media screen and (max-width: 360px) {
    .form .question_box .q_select label span {font-size: 1.4rem;}
    .form .user_input input {padding: 1.5rem 0; font-size: 1.6rem;}
}

</style>
<div id="wrap">
	<div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 
            
			<div class="formContents">
				<div class="container">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
					<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.gif"></div>
					<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
				</div>

				<section class="page" id="page-1">
                    <div class="container">
                        <div class="question_box">
                            <div class="question img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" value="3-5kg"><span>3-5kg</span></label>
                                <label><input type="radio" name="tadd1" value="6-8kg"><span>6-8kg</span></label>
                                <label><input type="radio" name="tadd1" value="9-11kg"><span>9-11kg</span></label>
                                <label><input type="radio" name="tadd1" value="13kg 이상"><span>13kg 이상</span></label>
                            </div>
                        </div>
                    </div>

					<div class="container">
						<div class="formGroup">
							<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.png"></div>
                            <div class="user_info">
                                <div class="user_input">
                                    <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름"/>
                                </div>
                                <div class="user_input">
                                    <input type="tel" name="age" id="age" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
                                </div>
                                <div class="user_input">
                                    <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처"/>
                                </div>
                                <input type="hidden" name="branch" id="branch" class="inp" required value="gangnam">
                            </div>
						</div>
                        <div class="agBox">
                            <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div>
                        <div class="agreement">
                            <!-- <?php $privacy_url = $this->landing['homepage_url']?$this->landing['homepage_url']:$this->landing['agreement_url'];?> -->
                            <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" target="_blank">개인정보처리방침 확인하러가기</a></div>
                            <h3>개인정보처리방침</h3>
                            <ol>
								<li>개인정보 수집주체 : ${resVo.agent}</li>
								<li>개인정보 수집항목 : ${resVo.objectItems}</li>
								<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
								<li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
                            </ol>
                        </div>
						<div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>

						<div class="description top">
                            <p id="event-period"></p>
							<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span>대상 : ${resVo.target} </span>
						</div>

                        <div class="subscribe_box">
                            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_02.png"></div>
                            <div class="subscribe" data-limit="10"></div>
                        </div>
					</div>
				</section>

				<!-- <section class="page hide" id="page-2">
					<div class="container">
						<div class="formGroup">
							<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.png"></div>
                            <div class="user_info">
                                <div class="user_input">
                                    <input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="이름"/>
                                </div>
                                <div class="user_input">
                                    <input type="tel" name="age" id="age" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
                                </div>
                                <div class="user_input">
                                    <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처"/>
                                </div>
                                <input type="hidden" name="branch" id="branch" class="inp" required value="gangnam">
                            </div>
						</div>
                        <div class="agBox">
                            <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div>
                        <div class="agreement">
                            <div class="button"><a href="<?=$privacy_url?>" target="_agreement" target="_blank">개인정보처리방침 확인하러가기</a></div>
                            <h3>개인정보처리방침</h3>
                            <ol>
                                <li>개인정보 수집주체 : <?=$this->landing['agent']?></li>
                                <li>개인정보 수집항목 : <?=$this->landing['object_items']?></li>
                                <li>개인정보 수집 및 이용목적 : <?=$this->landing['agent']?>에서 <?=$this->landing['object']?> 상담활용(문자)</li>
                                <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
                            </ol>
                        </div>
						<div class="submit"><input type="image" onclick="fnForm(event);" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
						<div class="description bottom">
                        </div>
						<div class="description top">
                            <p>이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
							<div class="ad_txt">안심하세요! <?=$this->landing['agent']?>에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span>대상 : <?=$this->landing['target']?></span>
						</div>
					</div>
				</section> -->

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
			<input type="hidden" id="add1" 			name="add1" value=""/>
			<input type="hidden" id="add2" 			name="add2" value=""/>
			<input type="hidden" id="add3" 			name="add3" value=""/>
			<input type="hidden" id="add4" 			name="add4" value=""/>
			<input type="hidden" id="add5" 			name="add5" value=""/>
			<input type="hidden" id="add6" 			name="add6" value=""/>
		</form>
	</div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
		getComment('1224');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1224');
		});
	});
	
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
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>