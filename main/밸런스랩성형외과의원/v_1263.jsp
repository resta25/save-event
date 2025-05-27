<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.bg_main{background-color: #303030;}
.color_point{color: #ffe537;}
#wrap {background: #ebebeb;}

/* 이벤트 기간 */
.description.bottom{text-align: center;}
.description.bottom p{margin: 2% 0; font-size: 80%;}

/* 셀렉 */
.tab-menu{padding: 15% 3% 3%; margin: 0 auto; width: 86%; border-radius: 1.5em; position: relative;}
.tab-menu > .img-area {position: absolute; top: 0; left: 50%; transform: translateX(-50%); z-index: 9; width: 80%;}
.tab-menu .tab-link{padding-bottom: 3%;}
.tab-menu .tab-link .tab-content{display: none; padding: 4% 5%; overflow: hidden; border-top: none; border-radius: 0 0 0.9rem 0.9rem; background: #fff; width: 88%; margin: 0 auto;}

.form{border-radius: 0 0 0.9rem 0.9rem; background: none;}
.form .formContents{padding:3% 0 0; background-color: #fff;}
.form .agBox{width: 100%;}

/* DB 입력창 */
.formGroup{padding: 2% 0 5%; display: grid; grid-template-columns: 5fr 2fr; box-sizing: border-box; gap: 10px;}
.formGroup .gridBox{width: 100%; display: grid; grid-template-columns: 1fr 1fr; gap: 10px; box-sizing: border-box;}
.formGroup .gridBox input{padding: 1.3rem 1rem; width: 100%; height: 100%; text-align: center; border: none; box-sizing: border-box; font-size: 18px;}
.formGroup .gridBox label{display: block; width: 100%; border: 1px solid #999; border-radius: 0.4rem; overflow: hidden; box-sizing: border-box;}
.formGroup .gridBox label:nth-child(3){grid-column: 1/3;}

/* submit 버튼 */
.form .submit{padding: 0;}
.form .submit input[type="image"] {width: 100% !important;}
.form .submit input{position: inherit; z-index: 1; display: inline-block; width: 100%; height: 100%; border: none; cursor: pointer; vertical-align: middle; background: transparent;}
.form .submit .submitBtnTxt{position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); width: 100%; line-height: 1.1em; font-size: 38px; color: #fff; font-weight: bold;}

/* 신청자 현황 count */
.count_box {position: absolute; top: 1%; left: 50%; transform: translateX(-50%); font-size: 120%; color: #fff; padding: 2% 0; background: rgba(0, 0, 0, 0.3); width: 50%; text-align: center; border-radius: 2em; z-index: 9;}
#eventCnt {color: #fff192;}

@media screen and (max-width: 500px){
    .tab-menu .tab-link .tab-content{border-width: 2px;} 

    .description.bottom p{font-size: 2.5vw;}

    .formGroup, .formGroup .gridBox{gap: 4px;}
    .formGroup .gridBox input{padding: 10px; font-size: 3.5vw;}

    .form .submit .submitBtnTxt{font-size: 5vw;}
    .count_box {width: 70%; font-size: 100%;}
}

@media screen and (max-width: 375px){
}

</style>
<div id="wrap"> 
    <div class="count_box">
        현재까지 <span id="eventCnt"></span>명이 참여했습니다.
    </div>

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
	</div>

    <ul class="tab-menu bg_main">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_00.png"></div>
        <li class="tab-link" data-tab="tab-1">
            <div class="form">
                <form id="form-1" method="POST" accept-charset="utf-8"> 
                    <label class="img-area selectImg">
                        <input type="radio" name="add1" id="add1" value="팔뚝"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_01_off.png">
                    </label>
                    <div class="tab-content" div="" id="tab-1">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_01.png"></div>
                        <div class="formContents">
                            <div class="formGroup">
                                <div class="gridBox">
                                    <label><input type="text" id="name" name="name" required="" autocomplete="off" placeholder="이름"></label>
                                    <label><input type="tel" id="age" name="age" data-min="0" data-max="99" required="" autocomplete="off" maxlength="2" placeholder="나이"></label>
                                    <label><input type="tel" id="phone" name="phone" required="" autocomplete="off" maxlength="11" placeholder="연락처"></label>
                                </div>
                                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
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
                            <div class="description bottom">
                                <span>대상 :  ${resVo.target} </span>
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
        </li>
        <li class="tab-link" data-tab="tab-2">
            <div class="form">
                <form id="form-2" method="POST" accept-charset="utf-8"> 

                    <label class="img-area selectImg">
                        <input type="radio" name="add1" id="add1" value="복부"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_02_off.png">
                    </label>
                    <div class="tab-content" div="" id="tab-2">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_02.png"></div>
                        <div class="formContents">
                            <div class="formGroup">
                                <div class="gridBox">
                                    <label><input type="text" id="name" name="name" required="" autocomplete="off" placeholder="이름"></label>
                                    <label><input type="tel" id="age" name="age" data-min="0" data-max="99" required="" autocomplete="off" maxlength="2" placeholder="나이"></label>
                                    <label><input type="tel" id="phone" name="phone" required="" autocomplete="off" maxlength="11" placeholder="연락처"></label>
                                </div>
                                <div class="submit"><input type="image" onclick="fnForm('form-2')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
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
                            <div class="description bottom">
                                <span>대상 :  ${resVo.target} </span>
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
        </li>
        <li class="tab-link" data-tab="tab-3">
            <div class="form">
                <form id="form-3" method="POST" accept-charset="utf-8"> 

                    <label class="img-area selectImg">
                        <input type="radio" name="add1" id="add1" value="허벅지"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_03_off.png">
                    </label>
                    <div class="tab-content" div="" id="tab-3">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_03.png"></div>
                        <div class="formContents">
                            <div class="formGroup">
                                <div class="gridBox">
                                    <label><input type="text" id="name" name="name" required="" autocomplete="off" placeholder="이름"></label>
                                    <label><input type="tel" id="age" name="age" data-min="0" data-max="99" required="" autocomplete="off" maxlength="2" placeholder="나이"></label>
                                    <label><input type="tel" id="phone" name="phone" required="" autocomplete="off" maxlength="11" placeholder="연락처"></label>
                                </div>
                                <div class="submit"><input type="image" onclick="fnForm('form-3')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
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
                            <div class="description bottom">
                                <span>대상 :  ${resVo.target} </span>
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
        </li>
        <li class="tab-link" data-tab="tab-4">
            <div class="form">
                <form id="form-4" method="POST" accept-charset="utf-8"> 

                    <label class="img-area selectImg">
                        <input type="radio" name="add1" id="add1" value="등"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_04_off.png">
                    </label>

                    <div class="tab-content" div="" id="tab-4">
                        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_04.png"></div>
                        <div class="formContents">
                            <div class="formGroup">
                                <div class="gridBox">
                                    <label><input type="text" id="name" name="name" required="" autocomplete="off" placeholder="이름"></label>
                                    <label><input type="tel" id="age" name="age" data-min="0" data-max="99" required="" autocomplete="off" maxlength="2" placeholder="나이"></label>
                                    <label><input type="tel" id="phone" name="phone" required="" autocomplete="off" maxlength="11" placeholder="연락처"></label>
                                </div>
                                <div class="submit"><input type="image" onclick="fnForm('form-4')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
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
                            <div class="description bottom">
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
        </li>
    </ul>

    <div class="container">
        <div class="description bottom">
            <p id="event-period"></p>
        </div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
        <div class="subscribe" data-limit="10"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>

    <!-- 실시간 신청자 팝업 -->
	</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		
		eventCount('1263');
		initDate();
		getComment('1263');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1263');
		});
				
        $('.selectImg').click(function() {
            var selectImg = $(this).find('img');
            
            $('.selectImg img').each(function() {
                var src = $(this).attr('src');
                if (src.includes('_on.')) {
                    src = src.replace('_on.', '_off.');
                    $(this).attr('src', src);
                }
            });
            
            // 현재 클릭된 selectImg의 src 속성을 변경합니다.
            var currentSrc = selectImg.attr('src');
            if (currentSrc.includes('_off.')) {
                var newSrc = currentSrc.replace('_off.', '_on.');
                selectImg.attr('src', newSrc);
                
                // 해당 이미지의 부모 요소인 li 요소를 찾습니다.
                var li = selectImg.closest('.tab-link');
                
                // li 요소의 data-tab 속성 값을 가져옵니다.
                var tabId = li.data('tab');
                
                // 모든 tab-content를 slideUp합니다.
                $('.tab-content').not('#' + tabId).slideUp();
                
                // 해당 data-tab 속성 값에 해당하는 tab-content 요소를 찾아 slideDown시킵니다.
                $('#' + tabId).slideDown();
                
                setTimeout(function() {
                    $('html, body').animate({
                    scrollTop: li.offset().top - 10
                    }, 500);
                }, 500);
            }
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

    $('input[name*=tadd]').bind('click', function(){
		$('label', $(this).parents('.q_select')).each(function(i,t) {
			$('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
		});
		$('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
	});
    
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
				
		/*
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {			
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		let branch = procForm.querySelector(`select[name="branch"] option:checked`);
		if (!branch) {
			alert("지점 항목을 입력해주세요.");
			return;
		} else {
			procForm.querySelector("select[name='branch']").value = branch.value;
		}
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
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>