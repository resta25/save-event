<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.pd{padding: 3% 9% 2%;}

.form .question_box{text-align: center; padding:5% 0 3%; background-color: #ffe7e5;}
.form .question_box img{width:100%;}
.form .question_box .question img{margin: 0 auto; width: 87%;}
.form .question_box .q_select label{padding:4% 1% 5%;}
.form .question_box .q_select label span{font-size:30px;}

.form .table_box.rowBorder table th, .form .table_box.rowBorder table td{border-color:#ff7f93;}

.form .formContents{padding:0 0 5%; background-color: #ffe7e5; position: relative; z-index: 5;}
.form .formContents .submit{position: absolute; bottom: 10%; left: 50%; transform: translateX(-50%); width: 80%;}

.form .formContents .bg-box{position: relative; padding:5% 0;}
.form .formContents .bg-box::after{display:block; content:''; width:90%; height: 70%; background-color: #ffd7d9; top: 0; position: absolute;    left: 5%;    z-index: -1; border-radius: 30px;}

.form .table_box table th img{height:65%;}
.form input[type="checkbox"] + span:before, .form input[type="radio"] + span:before{border-color:#000;}

@media screen and (max-width: 500px){  
	.form .question_box .q_select label span{font-size:1.25rem;}

    .form .table_box{width:80%;}
}

@media screen and (max-width: 415px){
    .form .question_box .q_select label span{font-size:1rem;}
}
</style>

<div class="overlay"></div>
<div id="wrap"> 
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
	</div>

    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8">
     
        <div class="question_box">
            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
            <div class="q_select">
                <label><input type="radio" name="tadd1" value="복부"><span>복부</span></label>
                <label><input type="radio" name="tadd1" value="팔뚝"><span>팔뚝</span></label>
                <label><input type="radio" name="tadd1" value="허벅지"><span>허벅지</span></label>
                <label><input type="radio" name="tadd1" value="상담 후 결정"><span>상담 후 결정</span></label>
            </div>
            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
            <div class="q_select">
                <label><input type="radio" name="tadd2" value="20대"><span>20대</span></label>
                <label><input type="radio" name="tadd2" value="30대"><span>30대</span></label>
                <label><input type="radio" name="tadd2" value="40대"><span>40대</span></label>
                <label><input type="radio" name="tadd2" value="50대"><span>50대</span></label>
            </div>
        </div>  

		<div class="formContents">  
            <div class="bg-box">
                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요! 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                <div class="formGroup">
                    <div class="table_box rowBorder">
                        <table>
                            <tr>
                                <th><img src="//static.resta.co.kr/event/v_${eventSeq}/name.png"></th> <!-- 이름 -->
                                <td><input type="text" name="name" id="name" class="inp" required autocomplete="off"/></td>
                            </tr>					
                            <tr>
                                <th><img src="//static.resta.co.kr/event/v_${eventSeq}/number.png"></th> <!-- 전화번호 -->
                                <td><input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11"/></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="agBox">
                    <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="javascript:void(0);" class="btn-agreement">[자세히 보기]</a>
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
                <div class="img-area pd">
                    <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.gif">
                    <div class="submit"><input type="image" onclick="fnForm('form-1')" class="btn_submit" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"/></div>
                </div>
            
                <div class="description bottom">
                    <span>대상 : ${resVo.target}</span>
                </div>
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

    <div class="container">
		<div class="subscribe" data-limit="10"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div> 
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();

        //기간항목
		initDate();

		//신청현황
		getComment('388');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('388');
		});
	});
	
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
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문'
			,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>