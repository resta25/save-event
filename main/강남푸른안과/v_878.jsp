<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
p.notice{background-color: #fff; margin: 0 auto; text-align: center; color: #a3a3a3; padding:2% 0;}
.form-layer{position: relative; z-index: 3;}

.form .formContents{padding:2% 0 5%;}
.form .formContents .agreement{width:88%;}
.form .formContents input[type="checkbox"] + span:before{border-color:#979797;}
.form input[type="checkbox"] + span:after, .form input[type="radio"] + span:after {border-color:#006abe;}
.form .formContents .bg-color{position:relative;margin:5% 6%;background:#fff;border:3px solid #000000;}

/* 2024 추가 css */
.form .formContents .description {width:auto;margin:5% 4%;padding:2%;background:#f2f2f2;box-sizing:border-box;border-radius:15px;color:#000000;text-align:left;}
.form .formContents .description p {color:#000000;}
.form .formContents .line-bar {background:#e2e2e2;width:100%;height:2px;}
.formGroup {padding:5% 4% 0;}
.form .table_box{width:100%;padding:0;background:#f2f2f2;border-radius:15px;margin-bottom:15px;}
.form .table_box:last-of-type {margin-bottom:0;}
.form .table_box table{border-collapse:separate; margin:0 auto;}
.form .table_box table td {border-radius:8px;background:none;padding:10px 15px;height:auto;color:#000000;}
.form .table_box table td.top {padding:10px 15px 0;font-weight:bold;color:#000000;}
.form .inp-phone {width:80%;}
.form .agBox {width:90%;margin:5% auto 2%;text-align:left;}
.form .agBox .btn-agreement {color:#000000;}
.form .submit input[type="image"] {width:100%;}
.form .formContents .user {margin:5% 0;text-align:center;font-size:80%;color:#000000;}
/* //2024 추가 css */

.form .question_box{padding:4% 0 0;}
.form .question_box img{width:100%;}
.form .question_box .question{margin: 0 auto; width: 88%;}
.form .question_box .q_select{padding-left: 7%;}
.form .question_box .q_select label{padding:5% 7% 7% 0; font-size:200%;}
.form input[type="radio"]:checked + span:after{border-color:#00aad8;}

.btn-bg{width:91%; margin:5% auto 2%;}
.submit-wrap {margin:0 4%;}
.submit{position: absolute; bottom:4%; left: 50%; width:90%; transform: translateX(-50%); z-index: 3;}


@media screen and (max-width: 500px){
    /* 2024 추가 css */
    .form .formContents .description p {font-size:85%;}
    .form .description .ad_txt {font-size:80%;}
    .form .agBox .btn-agreement {font-size:85%;}
    /* //2024 추가 css */
	.form .question_box .q_select label{padding:5% 5% 7% 0; font-size: 5.575vw;}
    .form .submit input[type="image"]{width:100%;}
}

@media screen and (max-width: 415px){
    .form .question_box .q_select label{font-size: 5vw;}
}

@media screen and (max-width: 375px){
}
</style>

<!--------------------- 광고주 명이 없는 랜딩입니다 !!!! 복사 시 유의하세요 !!!! --------------------->
<div id="wrap"> 
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
	</div>

    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8"> 

        <div class="question_box">
            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
            <div class="q_select">
                <label><input type="radio" name="tadd1" value="예"><span>예</span></label>
                <label><input type="radio" name="tadd1" value="아니오"><span>아니오</span></label>
            </div>
            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>
            <div class="q_select">
                <label><input type="radio" name="tadd2" value="50대"><span>50대</span></label>
                <label><input type="radio" name="tadd2" value="60대"><span>60대</span></label>
                <label><input type="radio" name="tadd2" value="70대 이상"><span>70대 이상</span></label>
            </div>
        </div>
		<div class="formContents">
            <div class="bg-color">
                <!-- 이벤트 기간 -->
                <div class="description">
                    <p id="event-period"></p>
                    <!--------------------- 광고주 명이 없는 랜딩입니다 !!!! 복사 시 유의하세요 !!!! --------------------->
                    <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                <!-- //이벤트 기간 -->
                <div class="line-bar"></div>
                <!-- DB -->
                <div class="form-box-top">
                    <div class="formGroup">
                        <div class="table_box">
                            <table>
                                <tr>
                                    <td class="top">이름</td>
                                </tr>	
                                <tr>
                                    <td>
                                        <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off"/>
                                    </td>
                                </tr>	
                            </table>
                        </div>
                        <div class="table_box">
                            <table>
                                <tr>
                                    <td class="top">전화번호</td>
                                </tr>	
                                <tr>
                                    <td>
                                        <input type="tel" name="phone" id="phone" class="inp inp-phone" required autocomplete="off" maxlength="11"/>
                                    </td>
                                </tr>	
                            </table>
                        </div>
                    </div>	
                </div>
                <!-- //DB -->
                <!-- 개인정보처리방침 -->
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
                        <li>개인정보 취급 위탁을 받는자 : (주)리스타</li>
                        <li>개인정보 취급 위탁을 하는 업무의 내용 : 고객정보 저장 및 서버관리</li>
                        <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                    </ol>
                </div>
                
                <!-- //개인정보처리방침 -->
                <div class="img-area btn-bg">
                    <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.gif">
                    <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
                </div>
                <div class="user">
                    <span>대상 : ${resVo.target} </span>
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
        <p class="notice">시술 수술 결과는 개인에 따라 차이가 있을 수 있습니다.</p>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
		getComment('878');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('878');
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
    //  // 연락처 010 제외 입력시
    // $('.submit').bind('click',function(){
	// 	var phoneNum = $('input[name="phone_add"]').val();
	// 	$('input[name="phone"]').val('010'+phoneNum);
	// });

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
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		var required = {
			'name': '이름'
			//,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>