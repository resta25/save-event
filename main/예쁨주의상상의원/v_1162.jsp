<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#wrap {font-family: 'noto sans kr';}
.form .formContents {padding-bottom: 4%; background-color: #fafafa;}

.form .question_box {padding:3% 0; text-align:center;}
.form .question_box img {width:100%;}
.form .question_box .question {margin: 0 auto 2%; width: 100%;}
.form .question_box .q_select label {padding:0 1.5%; font-size:150%;}

/* input css*/
.input_box {margin: 2% auto; width: 80%;}
.input_box .input_row:not(:last-child) {margin-bottom: 1.5%;}
.input_box .input_row .input_label {width: auto; text-align: left; font-size: 28px; font-weight: 400; color: #000;}
.input_box .input_row .inp {padding: 0.8em 0; text-align: center; font-size: 24px; border: 1px solid #9c9c9c; border-radius: 0.5em; background-color: #fff;}
.input_box .input_row .inp::placeholder {color: #797979;}

@media screen and (max-width: 768px) {
    .form .question_box .question {width: 90%;}
    .form .question_box .q_select label {font-size: 4vw;}

    .input_box .input_row .inp {font-size: 4vw;}
}
</style>

<div id="wrap">
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

            <div class="formContents">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="5kg 이하"><span>5kg 이하</span></label>
                        <label><input type="radio" name="tadd1" value="5-10kg"><span>5-10kg</span></label>
                        <label><input type="radio" name="tadd1" value="10-20kg"><span>10-20kg</span></label>
                        <label><input type="radio" name="tadd1" value="20kg 이상"><span>20kg 이상</span></label>
                    </div>
                </div>

                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                    
                <div class="formGroup">
                    <div class="input_box">
                        <div class="input_row">
                            <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름">
                        </div>
                        <div class="input_row">
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                        </div>
                        <div class="input_row">
                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-')없이 입력">
                        </div>
						<input type="hidden" name="branch" id="branch" class="inp" required="" value="상상부산점">
                    </div>
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
                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
                <div class="description">
                    <span>대상 : ${resVo.target}</span>
                </div>
            </div>

            <div class="container">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.jpg"></div>
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_06.jpg"></div>
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

    <div class="form">
		<form id="form-2" method="POST" accept-charset="utf-8">

            <div class="formContents">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="5kg 이하"><span>5kg 이하</span></label>
                        <label><input type="radio" name="tadd1" value="5-10kg"><span>5-10kg</span></label>
                        <label><input type="radio" name="tadd1" value="10-20kg"><span>10-20kg</span></label>
                        <label><input type="radio" name="tadd1" value="20kg 이상"><span>20kg 이상</span></label>
                    </div>
                </div>

                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                    
                <div class="formGroup">
                    <div class="input_box">
                        <div class="input_row">
                            <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름">
                        </div>
                        <div class="input_row">
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                        </div>
                        <div class="input_row">
                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-')없이 입력">
                        </div>
						<input type="hidden" name="branch" id="branch" class="inp" required="" value="상상부산점">
                    </div>
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
                <div class="submit"><input type="image" onclick="fnForm('form-2')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
                <div class="description">
                    <span>대상 : ${resVo.target}</span>
                </div>
            </div>

            <div class="container">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_10.jpg"></div>
                <div class="subscribe" data-limit="10"></div>
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
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	/* 기간항목 start */
	initDate();
	/* 기간항목 end */

    // 신청 현황 리스트
    $(document).ready(function(){
        getComment('1162');
        $('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
            $('.btn_moreSubscribe').prop('disabled', true);
            e.preventDefault();
            getComment('1162');
        });
        //드레그, 우클릭 방지
        blockSourceView()
    })
	
	function returnComment(resultData, meoreData){
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