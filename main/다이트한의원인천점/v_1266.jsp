<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.hide{display:none;}

.notice_txt {margin-bottom: 3%; text-align: center; font-size: 10px;}
.notice_txt span {letter-spacing: -0.05em; font-size: 2.3em;}

.main_01{position:absolute;}
.page{padding:5%; background-color:#efefef;}
.page .container {margin:0 auto; padding:3%; border-radius:10px; box-sizing: border-box; background-color:#fff;}

.form .question_box .question{margin-bottom:4%;}
.form .question_box .question span{font-size:34px; font-weight:900;}
.form .question_box .q_select label{display:block; margin:3% 0;}
.form .question_box .q_select label:last-child{margin-bottom:0;}
.form .question_box .q_select label span{padding-left:5%; font-size:28px;}

.form .table_box table th{text-align: left; font-size: 20px;}
.form .submit {margin:2% 0;}
.submit input{width:90%;}

/* 신청자 현황 count */
.subscribe {display: none;}
.count_box {font-size: 2em; margin-top: 1.5em; text-align: center; font-weight: 700;}
#eventCnt {color: #5dff87;}

@media screen and (max-width: 768px) {
	.form .question_box .question span{font-size: 5.2vw;}
	.form .question_box .q_select label span{font-size: 4.2vw;}

	.form .table_box table th{font-size: 4vw;}
	.form .question_box, .input_box, .notice_txt {font-size: 6px;}

	.count_box {font-size: 4vw;} /* 신청자 수 CSS */
}

</style>
<div id="wrap">
	<div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8">
            
			<div class="formContents">
				<div class="container">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_00.jpg"></div>
					<div class="img-area main_01"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
					<video id="location" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/20220504.mp4" type="video/mp4"></video>
					<script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
				</div>

				<section class="page" id="page-1">
                    <div class="container">
                        <div class="question_box">
                            <div class="question"><span>* 최종 감량 몸무게는?</span></div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" value="3-5kg"><span>3-5kg</span></label>
                                <label><input type="radio" name="tadd1" value="6-8kg"><span>6-8kg</span></label>
                                <label><input type="radio" name="tadd1" value="9-11kg"><span>9-11kg</span></label>
                                <label><input type="radio" name="tadd1" value="13kg 이상"><span>13kg 이상</span></label>
                            </div>
                        </div>
                    </div>
				</section>

				<section class="page hide" id="page-2">
					<div class="container">
						<div class="formGroup">
							<div class="notice_txt"><span>* 이벤트 혜택 당첨되신 분들께 개별 연락드릴 예정입니다.</span></div>
							<div class="table_box rowBorder">
								<table>
									<tbody>
										<tr>
											<th><label for="name">이름</label></th> <!-- 이름 -->
											<td><input type="text" id="name" name="name" class="inp" required="" autocomplete="off"></td>
										</tr>
										<tr>
											<th><label for="age">나이</label></th> <!-- 나이 -->
											<td><input type="tel" id="age" name="age" class="inp" required="" autocomplete="off" maxlength="2"></td>
										</tr>
										<tr>
											<th><label for="phone">전화번호</label></th> <!-- 전화번호 -->
											<td><input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11"></td>
										</tr>
										<input type="hidden" id="branch" name="branch" required="" value="bupyeong">
									</tbody>
								</table>
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
						<div class="description bottom">
                            <span>대상 : ${resVo.target} </span>
						</div>
						<div class="description top">
                            <p id="event-period"></p>
							<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
						</div>

						<div class="count_box">
							<span id="eventCnt"></span>명이 참여했습니다.
						</div>
					</div>
				</section>
				<div class="subscribe" data-limit=""></div>
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
		eventCount('1266');
	});

    var paging_start = false; //연속페이징 방지
	function next_page(){
        var page_num = $('.page:visible').index();
		if(page_num>=$('section').length) return false;
        var $section = $('#page-1');
		$section.hide('slide', {'direction':'left'}, 'fast', function() {
			$section.next().effect('slide', {'direction':'right'}, 'fast', function() {
				paging_start = false;
			});
		});
	}

	$('input[name="tadd1"]').click(function(){
		if(paging_start) return false;
		if($('input[name="tadd1"]').is(':checked')) setTimeout(next_page, 300);
		paging_start = true;
	});
    
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