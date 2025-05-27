<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.hide{display:none;}

/* section{background-color: #eef8ff;} */

.bg_w{background-color: #fff;}
/* .bg_gray{background-color: #eef8ff;} */

.border_radius{border-radius: 50px 50px 0 0;}

.gageBar{padding: 0 4% 4%; background-color: #eef8ff;}

.next_btn{margin: 0 auto; padding-bottom: 7%; width: 86%; cursor: pointer;}

.form .question_box{padding: 12% 7% 5%;}
.question img{width: 100%;}
.question{margin-bottom: 8%; width: 87%;}
.form .question_box .q_select label{display: block; margin: 2% 0; padding: 4%; border: 2px solid #dadada; border-radius: 10px; font-size: 35px;}

.add_txt{margin-bottom: 6%; display: block; text-align: center; letter-spacing: -1px; font-size: 20px; font-weight: 500;}

.form .formContents{padding: 3% 0;}
.form .inp{padding: 4%; font-size: 28px; border: 2px solid #dadada; border-radius: 10px;}

.description.bottom{padding: 1% 0; color: #777; background-color: #f7f7f7;}
.description.bottom p{padding-bottom: 0;}

@media screen and (max-width: 500px){
    .form .question_box .q_select label{font-size: 4.5vw;}
    .add_txt{font-size: 3.5vw;}

    .form .inp{font-size: 4.5vw;}
}

@media screen and (max-width: 375px){
}
</style>

<div id="wrap">
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
    </div>
    
    <div class="form bg_gray">
        <form id="form-1" method="POST" accept-charset="utf-8"> 

        <section class="section01">
            <div class="img-area gageBar"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage1.png"></div>
            <div class="bg_w border_radius">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="60대" onclick="pageFuc(1,$(this))"><span>60대</span></label>
                        <label><input type="radio" name="tadd1" value="70대 이상" onclick="pageFuc(1,$(this))"><span>70대 이상</span></label>
                    </div>
                </div>
                <!-- <div class="img-area next_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/next_btn_01.png" onclick="pageFuc(1,$(this))"></div> -->
            </div>
            <div class="container">
                <div class="description bottom">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>	
            </div>
        </section>

        <section class="section02 hide">
            <div class="img-area gageBar"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage2.png"></div>
            <div class="bg_w border_radius">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd2" value="백내장" onclick="pageFuc(2,$(this))"><span>백내장</span></label>
                        <label><input type="radio" name="tadd2" value="노안시력" onclick="pageFuc(2,$(this))"><span>노안시력</span></label>
                        <label><input type="radio" name="tadd2" value="백내장+노안시력" onclick="pageFuc(2,$(this))"><span>백내장+노안시력</span></label>
                    </div>
                </div>
                <!-- <div class="img-area next_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/next_btn_01.png" onclick="pageFuc(2,$(this))"></div> -->
            </div>
            <div class="container">
                <div class="description bottom">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>	
            </div>
        </section>

        <section class="section03 hide">
            <div class="img-area gageBar"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage3.png"></div>
            <div class="bg_w border_radius">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_03.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd3" value="수도권(서울, 인천, 경기도)" onclick="pageFuc(3,$(this))"><span>수도권(서울, 인천, 경기도)</span></label>
                        <label><input type="radio" name="tadd3" value="기타 지역" onclick="pageFuc(3,$(this))"><span>기타 지역</span></label>
                    </div>
                </div>
                <span class="add_txt">* 기타지역 선택 시 혜택이 <span style="color: #f00;">불가</span>할 수 있습니다.</span>
                <!-- <div class="img-area next_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/next_btn_01.png" onclick="pageFuc(3,$(this))"></div> -->
            </div>
            <div class="container">
                <div class="description bottom">
					<p id="event-period"></p>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>	
            </div>
        </section>

        <section class="section04 hide">
            <div class="img-area gageBar"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage4.png"></div>
            <div class="bg_w border_radius">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_04.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd4" value="예" onclick="alert('혜택 제공 대상이 아닙니다.')"><span>예</span></label>
                        <label><input type="radio" name="tadd4" value="아니요" onclick="pageFuc(4,$(this))"><span>아니요</span></label>
                    </div>
                </div>
                <!-- <div class="img-area next_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/next_btn_01.png" onclick="pageFuc(4,$(this))"></div> -->
            </div>
            <div class="container">
                <div class="description bottom">
					<p id="event-period"></p>
					<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>	
            </div>
        </section>

        <section class="section05 hide">
            <div class="img-area gageBar"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage5.png"></div>
            <div class="bg_w border_radius">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_05.png"></div>
                    <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름">
                </div>
                <span class="add_txt">* 60초 이내로 짧은 양식을 작성해 주시기만 하면 됩니다.</span>
                <div class="img-area next_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/next_btn_01.png" onclick="pageNameFuc(5,$(this))"></div>
            </div>
            <div class="container">
                <div class="description bottom">
					<p id="event-period"></p>
					<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>	
            </div>
        </section>

        <section class="section06 hide">
            <div class="img-area gageBar"><img src="//static.resta.co.kr/event/v_${eventSeq}/gage6.png"></div>
            <div class="formContents bg_w border_radius">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_06.png"></div>
                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="휴대폰 번호 ('-'제외)">
                </div>
                <span class="add_txt">* 60초 이내로 짧은 양식을 작성해 주시기만 하면 됩니다.</span>
                <div class="agBox">
                    <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
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
                <div class="description top">
                    <span>대상 :  ${resVo.target} </span>
                </div>
            </div>
            <div class="container">
                <div class="description bottom">
					<p id="event-period"></p>
					<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>	
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
		<input type="hidden" id="age" 			name="age" value=""/>
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
	});
	
    // 버튼 페이지 이동 함수 (설문)
	function pageFuc(num, obj) {
        if($('input[name="tadd' + num + '"]').is(':checked')) {
            $('.section0' + num).fadeOut(function() {
                $('.section0' + (num + 1)).fadeIn();
                $(document).scrollTop(0);
            });
        } else {
            alert('설문을 체크해 주세요.');
        }
	}

	// 버튼 페이지 이동 함수 (이름)
	function pageNameFuc(num, obj) {
        if ($('input:text[name=name]').val().length > 1) {
            $('.section0' + num).fadeOut(function() {
                $('.section0' + (num + 1)).fadeIn();
                $(document).scrollTop(0);
            });
        } else {
            alert("이름을 입력해주세요.");
            $('input:text[name=name]').focus();
        }
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
		if (!selectedRadio2) {
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
		
		let selectedRadio4 = procForm.querySelector(`input[name="tadd4"]:checked`);
		if (!selectedRadio4) {
			alert("설문4 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add4']").value = selectedRadio4.value;
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
			,'add4': '설문4'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>