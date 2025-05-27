<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {margin: 0; padding: 0; box-sizing: border-box !important; font-family: 'Noto Sans KR', sans-serif;}

body::-webkit-scrollbar {display: none;}

.hide {display: none !important;}
.bg_main {background-color: #f4f4f4;}
.c_red {color: #3843d0;}
.mb_3{margin-bottom: 3%;}

#wrap {height: 100vh; background-color: #f4f4f4;}
.form {margin-top: 5%; padding: 0 3%; overflow-y: scroll; background-color: transparent;}
.form::-webkit-scrollbar {display: none;}

/* 공통 폰트 사이즈 */
.chat_box, .input_box .next_btn, .form .inp {font-size: 28px; letter-spacing: -1px;}
.chat_box, .input_box, .chat_set.left .progress_box .progress_txt {border-radius: 0.5em;}

/* 공통 border */
.chat_set.left .chat_profile img, .chat_set.left .chat_box {border: 1px solid #ddd;}

.chat_set:not(:last-child) {margin-bottom: 4%;}

.top_fixed_img {z-index: 99; position: sticky; top: 0; padding: 5% 3% 2%; background-color: #f4f4f4;}
.bottom{display:none;}

/* 채팅 left */
.chat_set.left {display: grid; grid-template-columns: 1fr 9fr; gap: 2%;}
.chat_set.left:not(:first-of-type){align-items: end;}
.chat_set.left .chat_profile img {width: 100%; border-radius: 99em;}
.chat_set.left .progress_box .progress_txt {display: inline-block; margin-bottom: 1%; padding: 0.2em 0.4em 0.3em; font-size: 24px; font-weight: 700;background-color: #dfe1ed;}
.chat_set.left .chat_box {width: auto; height:auto; display: inline-block; padding: 0.4em 0.7em; background-color: #fff;}

/* 채팅 right */
.chat_set.right {display: flex; justify-content: flex-end;}
.chat_set.right .chat_box {padding: 0.3em 0.6em 0.4em; font-weight: 700; background-color: #3843d0; color:#ffffff;}
.chat_set.right .chat_box.agree_btn, .chat_set.right .chat_box.disagree_btn {display: block; cursor: pointer; text-align: center;}
.chat_set.right .chat_box.agree_btn.selected, .chat_set.right .chat_box.input_box_changed {background-color: #8ea1ff;}
.chat_set[data-value="4"] .chat_box.disagree_btn{margin:0 0 0 5px;padding:0;background-color:transparent;}

/* chat_box 로딩 */
.chat_set.left .chat_box {position: relative; overflow: hidden;}

/* 설문 */
.question_box .q_select label {position: relative; cursor: pointer;}
.question_box .q_select label input::after {display: none; content: ''; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
.question_box .q_select label input:checked + .chat_box { background-color: #8ea1ff;}

.form .submit{padding:0; border-radius: 0.5em; text-align: right;}
.form .description {text-align: right; font-size: 13px; opacity: .5;}
.agree_txt {cursor: pointer;}

/* DB단 */
.input_box {width:88%;background:#fff;border:1px solid #ddd;border-radius:15px;padding:5%;}
.input_box ul li{border-radius: 0.3em;background:#f4f4f4;}
.input_box ul li:first-child{margin-bottom: 2%;}
.input_box ul li > div{border-radius: 0 0.3em 0.3em 0;padding:2% 2% 0;font-size:100%;color: #000000;}
.input_box ul li > strong {display:inline-block;vertical-align:middle;padding:2% 0 2% 2%;font-size:100%;}
.input_box ul li .inp{width:86%;padding:2%;font-size:110%;}
.input_box .next_btn {margin-top:2%;padding:0.2em 0.7em;text-align:center;font-weight:700;border-radius:0.3em;cursor: pointer; background-color:#3644ce; color:#fff;display:flex;justify-content:center;align-items:center;}
.submit-wrap {display:flex;width:87%;}
.form .submit input[type="image"], .chat_set[data-value="4"] .chat_box.disagree_btn img{width:100%;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 65%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 145px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

@media screen and (max-width: 500px){
    /* 공통 폰트 사이즈 */
    .chat_box, .input_box .next_btn, .form .inp{font-size: 4vw;}
    .chat_set.left .progress_box .progress_txt {font-size: 3.2vw;}
    .form .description{font-size: 2vw;}
    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
}

@media screen and (max-width: 375px){
}
</style>

<!-- //INCLUDES -->
<link rel="preconnect" href="https://fonts.googleapis.com"> <!-- 구글폰트 Noto Sans -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> <!-- 구글폰트 Noto Sans -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> <!-- 구글폰트 Noto Sans -->
<!-- INCLUDES// -->

<div class="overlay"></div>
<div id="wrap">
    <div class="container bg_main">
        <div class="img-area top_fixed_img"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>

        <div class="form">
            <form id="form-1" method="POST" accept-charset="utf-8"> 
            <!-- <input type="hidden" name="phone" value="<?php echo $this->userProfile['phone']??"";?>"> -->

                <!-- chat01 -->
                <!-- <div class="chat_set left" data-value="1">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <div class="chat_box">
                            <div class="chat_txt">
                                <u class="agree_txt">개인정보 수집 및 이용</u>에 관한 내용을 확인하고 동의함.
                                안녕하세요! 본원에서는 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.
                            </div>                         
                        </div>
                    </div>
                </div>
                <div class="chat_set right hide" data-value="1">
                    <input name="agBox" type="checkbox" checked>
                    <div>
                        <div class="chat_box agree_btn mb_3">동의 / 시작</div>
                        <a href="javascript:windowClose()" class="chat_box disagree_btn">미동의 / 나가기</a>
                    </div>
                </div> -->
                <div class="chat_set left hide" data-value="1">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">25%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt">임플란트 필요한 개수를 선택해 주세요.</div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chat_set question_box right hide" data-value="1">
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="1개"><div class="chat_box">1개</div></label>
                        <label><input type="radio" name="tadd1" value="2개"><div class="chat_box">2개</div></label>
                        <label><input type="radio" name="tadd1" value="3개"><div class="chat_box">3개</div></label>
                        <label><input type="radio" name="tadd1" value="4개 이상"><div class="chat_box">4개 이상</div></label>
                    </div>
                </div>

                <!-- chat02 -->
                <!-- <div class="chat_set left hide" data-value="2">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">25%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt">임플란트 필요한 개수를 선택해 주세요.</div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chat_set question_box right hide" data-value="2">
                    <div class="q_select">
                        <label><input type="radio" name="add1" value="1개"><div class="chat_box">1개</div></label>
                        <label><input type="radio" name="add1" value="2개"><div class="chat_box">2개</div></label>
                        <label><input type="radio" name="add1" value="3개"><div class="chat_box">3개</div></label>
                        <label><input type="radio" name="add1" value="4개 이상"><div class="chat_box">4개 이상</div></label>
                    </div>
                </div> -->
                <div class="chat_set left hide" data-value="2">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">50%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt">임플란트 가장 고려하는 사항을 선택해 주세요.</div>                         
                            </div>
                        </div>
                    </div>
                </div>

                <div class="chat_set question_box right hide" data-value="2">
                    <div class="q_select">
                        <label><input type="radio" name="tadd2" value="비용"><div class="chat_box">비용</div></label>
                        <label><input type="radio" name="tadd2" value="의료진 경력"><div class="chat_box">의료진 경력</div></label>
                        <label><input type="radio" name="tadd2" value="병원 위치"><div class="chat_box">병원 위치</div></label>
                        <label><input type="radio" name="tadd2" value="기타"><div class="chat_box">기타</div></label>
                    </div>
                </div>

                <!-- chat03 -->
                <!-- <div class="chat_set left hide" data-value="3">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">50%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt">임플란트 가장 고려하는 사항을 선택해 주세요.</div>                         
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chat_set question_box right hide" data-value="3">
                    <div class="q_select">
                        <label><input type="radio" name="add2" value="비용"><div class="chat_box">비용</div></label>
                        <label><input type="radio" name="add2" value="의료진 경력"><div class="chat_box">의료진 경력</div></label>
                        <label><input type="radio" name="add2" value="병원 위치"><div class="chat_box">병원 위치</div></label>
                        <label><input type="radio" name="add2" value="기타"><div class="chat_box">기타</div></label>
                    </div>
                </div> -->
                <div class="chat_set left hide" data-value="3">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">75%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt">성함과 연락처를 적어주세요.</div>                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chat_set right hide" data-value="3">
                    <div class="input_box">
                        <ul>
                            <li>
                                <div>성함</div>
                                <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off"/>
                            </li>
                            <li>
                                <div>연락처</div>
                                <input type="tel" name="phone" id="phone" class="inp inp-phone" required autocomplete="off" maxlength="11"/>
                            </li>
                        </ul>
                        <span class="next_btn">다음</span>
                    </div>
                    <div class="chat_box input_box_changed hide"></div>
                </div>

                <!-- chat04 -->
                <!-- <div class="chat_set left hide" data-value="4">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">75%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt">성함이 어떻게 되시나요?</div>                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chat_set right hide" data-value="4">
                    <div class="input_box">
                        <input type="text" name="name" value="<?php echo $this->userProfile['name']??"";?>" class="inp" required autocomplete="off" placeholder="성함"/>
                        <span class="next_btn">다음</span>
                    </div>
                    <div class="chat_box input_box_changed hide"></div>
                </div> -->
                <div class="chat_set left hide" data-value="4">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="chat_container">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">100%</span></span>
                        </div>
                        <div class="chat_box">
                            <div class="chat_txt">
                                <u class="agree_txt">개인정보 수집 및 이용</u>에 관한 내용을 확인하고 동의함.
                                안녕하세요! 본원에서는 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.
                            </div>                         
                        </div>
                    </div>
                </div>

                <div class="chat_set right hide" data-value="4">
                    <input name="agBox" type="checkbox" checked>
                    <div class="submit-wrap">
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" class="btn_submit" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png" /></div>
                        <a href="javascript:windowClose()" class="chat_box disagree_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_04.png"></a>
                    </div>
                </div>
                <div class="chat_set right hide" data-value="4">
                    <div class="description">
                        <p id="event-period"></p>
                        대상 : ${resVo.target}                
                    </div>                  
                </div>
                

                <!-- chat05 -->
                <!-- <div class="chat_set left hide" data-value="5">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">100%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt">연락처가 어떻게 되시나요?</div>                            
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chat_set right hide" data-value="5">
                    <div class="input_box">
                        <input type="tel" name="phone" value="<?php echo $this->userProfile['phone']??"";?>" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처"/>
                        <div class="submit"><input type="image" class="btn_submit" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
                    </div>
                </div>
                <div class="chat_set right hide" data-value="5">
                    <div class="description">
                        이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?><br>
                        대상 : <?=$this->landing['target']?>                
                    </div>                  
                </div> -->
                <div class="agreeModalBox">
                    <div class="closeBtn">X</div>
                    <div class="newAgreement">
                        <!--<?php $privacy_url = $this->landing['homepage_url']?$this->landing['homepage_url']:$this->landing['agreement_url'];?>-->
                        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" target="_blank">개인정보처리방침 확인하러가기</a></div>
                        <h3>개인정보 수집 및 이용 동의</h3>
                        <ol>
                            <li>개인정보 수집주체 : ${resVo.agent}</li>
                            <li>개인정보 수집항목 : ${resVo.objectItems}</li>
                            <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(전화,문자)</li>
                            <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li><br>
                            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
                        </ol>
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

        <div class="img-area bottom"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
	});
	
    // 개인정보처리방침 클릭 시 오픈
    $('.agree_txt').on('click', function() {
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });

    // 개인정보처리방침 닫기 버튼 클릭 시 클로징
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });

    // 개인정보 동의 이벤트
    // $('.agree_btn').on('click', function() {
    //    $(this).addClass('selected');
    // });

    // 설문 답변 셀렉 시, 나머지 셀렉 없애기
    $('.question_box .q_select label input').on('click', function() {
        var selectedInputName = $(this).attr('name');

        $('.question_box .q_select label input[name="' + selectedInputName + '"]:not(:checked) + .chat_box').css('display', 'none');
    });

    function showNextComment(currentValue, nextValue, isLeft) {
        var selector = isLeft ? '.chat_set.left' : '.chat_set.right';

        $('.chat_set.left[data-value="' + nextValue + '"]').removeClass('hide').hide().show();

        if (selector) {
            $('.chat_set.right[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn(400);
        }
    }

    showNextComment(0, 1, false); // 맨 처음 대화창 이펙트

    // 동의 버튼 클릭 시
    // $('.agree_btn').on('click', function () {
    //    $(this).text('동의');
    //    $('.disagree_btn').hide();
    //    showNextComment(1, 2, true); // Show next chat_set.left
    //    showNextComment(1, 2, false); // Show next chat_set.right
    //    scrollToBottom();
    // });

    // add1, add2 설문 셀렉 시
    $('input[name*="tadd"]').on('change', function () {
        var currentValue = $(this).closest('.chat_set').data('value');
        var nextValue = currentValue + 1;

        showNextComment(currentValue, nextValue, true); // Show next chat_set.left
        showNextComment(currentValue, nextValue, false); // Show next chat_set.right
        scrollToBottom();
    });

    // 연락처 010 제외 입력시
    // $('.submit').bind('click',function(){
    //     var phoneNum = $('input[name="phone_add"]').val();
    //     $('input[name="phone"]').val('010'+phoneNum);
    // });

    // 이름 입력란 - 다음 버튼 클릭 시
    $('.input_box .next_btn').on('click', function (e) {
		e.preventDefault(); // 기본 폼 제출을 막음
		
        var nameValue = $('input[name="name"]').val();
        var phoneValue = $('input[name="phone"]').val();

        if(nameValue.length > 1 && phoneValue.length == 11) {
            $('.chat_set[data-value="4"] .chat_box.input_box_changed').text(nameValue).removeClass('hide').hide().show();
            $('.chat_set[data-value="4"] .input_box').addClass('hide');

            // showNextComment(4, 5, true); // Show next chat_set.left
            // showNextComment(4, 5, false); // Show next chat_set.right
             showNextComment(3, 4, true); // Show next chat_set.left
             showNextComment(3, 4, false); // Show next chat_set.right
            $('.bottom').show();
            scrollToBottom();
        } else {
            // alert('정확한 이름을 입력해 주세요.');
            alert('성함과 연락처를 적어주세요.');
        }
    });

    // 원하는 위치로 이동
    function scrollToBottom() {
        $("html, body").animate({ scrollTop: $(document).height() }, 1000, 'linear');
    }

    // 버튼 클릭 시 현재 열린 창 닫기
    function windowClose() {
        window.close();
        self.close();
        window.opener = window.location.href;
        window.open('about:blank', '_self').close();
    }
	
	$('input').on('keydown', function(e) {
		if (e.key === "Enter") {
			if($('input[name="name"]').val() != "" && $('input[name="phone"]').val() != ""){
		        e.preventDefault(); // 기본 폼 제출 동작을 막음
		    }
			
			var nameValue = $('input[name="name"]').val();
	        var phoneValue = $('input[name="phone"]').val();

	        if(nameValue.length > 1 && phoneValue.length == 11) {
	            $('.chat_set[data-value="4"] .chat_box.input_box_changed').text(nameValue).removeClass('hide').hide().show();
	            $('.chat_set[data-value="4"] .input_box').addClass('hide');

	            // showNextComment(4, 5, true); // Show next chat_set.left
	            // showNextComment(4, 5, false); // Show next chat_set.right
	             showNextComment(3, 4, true); // Show next chat_set.left
	             showNextComment(3, 4, false); // Show next chat_set.right
	            $('.bottom').show();
	            scrollToBottom();
	        }
		}
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

		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}
		
		/*
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		var required = {
			'name': '이름'
			//,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>