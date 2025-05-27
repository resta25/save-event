<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {margin: 0; padding: 0; box-sizing: border-box !important; font-family: 'Noto Sans KR', sans-serif;}

body::-webkit-scrollbar {display: none;}

.hide {display: none !important;}
.bg_main {background-color: #f4fcff;}
.c_red {color: #3843d0;}
.mb_3{margin-bottom: 3%;}

#wrap {height: 100vh; background-color: #f4fcff;}
.form {margin-top: 5%; padding: 0 3%; overflow-y: scroll; background-color: transparent;}
.form::-webkit-scrollbar {display: none;}

/* 동의, 미동의 버튼 */
.form .agreeBox {display: flex; justify-content: flex-end; width: 26%; gap: 2%;}

/* 공통 폰트 사이즈 */
.chat_box, .input_box .next_btn, .form .inp {font-size: 28px; letter-spacing: -1px;}
.chat_box, .input_box, .chat_set.left .progress_box .progress_txt {border-radius: 0.5em;}

/* 공통 border */
.chat_set.left .chat_profile img, .chat_set.left .chat_box {border: 1px solid #ddd;}

.chat_set:not(:last-child) {margin-bottom: 4%;}

.top_fixed_img {z-index: 99; position: sticky; top: 0; padding: 5% 3% 2%; background-color: #f4fcff;}
.top_fixed_img img:nth-child(2) {padding: 0 10%;}
.bottom{display:none;}

/* 채팅 left */
.chat_set.left {display: grid; grid-template-columns: 1fr 9fr; gap: 2%;}
.chat_set.left:not(:first-of-type){align-items: end;}
.chat_set.left .chat_profile img {width: 100%; border-radius: 99em;}
.chat_set.left .progress_box .progress_txt {display: inline-block; margin-bottom: 1%; padding: 0.2em 0.4em 0.3em; font-size: 24px; font-weight: 700;background-color: #dfddf2;}
.chat_set.left .chat_box {width: auto; height:auto; display: inline-block; padding: 0.4em 0.7em; background-color: #fff;}

/* 채팅 right */
.chat_set.right {display: flex; justify-content: flex-end;}
.chat_set.right .chat_box {padding: 0.3em 0.6em 0.4em; font-weight: 700; background-color: #011ca9; color:#ffffff;}
.chat_set.right .chat_box.agree_btn, .chat_set.right .chat_box.disagree_btn {display: block; cursor: pointer; text-align: center;}
.chat_set.right .chat_box.agree_btn.selected, .chat_set.right .chat_box.input_box_changed {background-color: #99a9ff;}
.chat_set[data-value="4"] .chat_box.disagree_btn{margin:0 0 0 5px;padding:0;background-color:transparent;}
.form .chat_set.right .disagree_btn {background:#6d6d6d;}

/* chat_box 로딩 */
.chat_set.left .chat_box {position: relative; overflow: hidden;}

/* 설문 */
.question_box .q_select label {position: relative; cursor: pointer;}
.question_box .q_select label input::after {display: none; content: ''; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
.question_box .q_select label input:checked + .chat_box { background-color: #99a9ff;}

.form .submit{padding:0;}
.form .description {text-align: right; padding-bottom: 3%;}
.form .description p {font-weight: normal;}
.form .description p, .form .description .ad_txt, .form .description span {padding: 0; font-size: 0.8rem;}
.agree_txt {cursor: pointer; font-weight: 700; text-decoration: none;}

/* DB단 */
.input_box {width:88%; background:#e8ebfe; border-radius:15px; padding:5%;}
.input_box ul {margin-bottom: 3%;}
.input_box ul li{border-radius: 0.3em; background:#fff;}
.input_box ul li:first-child{margin-bottom: 2%;}
.input_box ul li > div{border-radius: 0 0.3em 0.3em 0;padding:2% 2% 0;font-size:100%;color: #000000;}
.input_box ul li > strong {display:inline-block;vertical-align:middle;padding:2% 0 2% 2%;font-size:100%;}
.input_box ul li .inp{padding:2%; font-size:120%; background: #fff; text-align: center; border-radius: 0.3em;}
.input_box .next_btn {margin-top:2%;padding:0.2em 0.7em;text-align:center;font-weight:700;border-radius:0.3em;cursor: pointer; background-color:#011ca9; color:#fff;display:flex;justify-content:center;align-items:center;}
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

@media screen and (max-width: 480px){
    /* 공통 폰트 사이즈 */
    .chat_box, .input_box .next_btn, .form .inp{font-size: 4vw;}
    .chat_set.left .progress_box .progress_txt {font-size: 3.2vw;}
    .form .description{font-size: 2vw;}
    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
    .form .agreeBox {width: 30%;}
    .form .description p, .form .description .ad_txt, .form .description span {font-size: 0.6rem;}
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
<div class="agreeModalBox">
    <div class="closeBtn">X</div>
    <div class="newAgreement">
        <!-- <?php $privacy_url = $this->landing['homepage_url']?$this->landing['homepage_url']:$this->landing['agreement_url'];?> -->
        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" target="_blank">개인정보 처리방침</a></div>
        <h3>개인정보 수집 및 이용 동의</h3>
        <ol>
			<li>개인정보 수집주체 : ${resVo.agent}</li>
			<li>개인정보 수집항목 : ${resVo.objectItems}</li>
			<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
			<li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
            <br>
            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
        </ol>
    </div>
</div>
<div id="wrap">
    <div class="container bg_main">
        <div class="img-area top_fixed_img">
            <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png">
            <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png">
        </div>

        <div class="form">
            <form id="form-1" method="POST" accept-charset="utf-8"> 

            <audio id="location" playsinline><source src="//static.resta.co.kr/event/v_${eventSeq}/audio_01.mp3" type="audio/mp3"></source></audio>

                <!-- chat01 -->
                <div class="chat_set left" data-value="1">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="class">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">25%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt">
                                    원활한 서비스 이용을 위해<br>
                                    <u class="agree_txt">개인정보처리방침 동의</u>를 부탁드립니다.
                                </div>                         
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chat_set right hide" data-value="1">
                    <input name="agBox" type="checkbox" checked>
                    <div class="agreeBox">
                        <div class="chat_box agree_btn">동의</div>
                        <a href="javascript:windowClose()" class="chat_box disagree_btn">미동의</a>
                    </div>
                </div>

                <div class="chat_set left hide" data-value="2">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">50%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt"><b>희망하시는 서비스</b>를 선택해주세요</div>
                                <div class="loader_box">
                                    <span class="loader"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chat_set question_box right hide" data-value="2">
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="비용 문의"><div class="chat_box">비용 문의</div></label>
                        <label><input type="radio" name="tadd1" value="예약하기"><div class="chat_box">예약하기</div></label>
                        <label><input type="radio" name="tadd1" value="병원 위치"><div class="chat_box">병원 위치</div></label>
                        <label><input type="radio" name="tadd1" value="기타"><div class="chat_box">기타</div></label>
                    </div>
                </div>

                <div class="chat_set left hide" data-value="3">
                    <div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
                    <div class="">
                        <div class="progress_box">
                            <span class="progress_txt">진행상황 <span class="c_red">100%</span></span>
                        </div>
                        <div class="chat_container">
                            <div class="chat_box">
                                <div class="chat_txt">편리한 서비스 이용을 위해<br><b>성함과 연락처</b>를 적어주세요</div>                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="chat_set right hide" data-value="3">
                    <div class="input_box">
                        <ul>
                            <li>
                                <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="성함"/>
                            </li>
                            <li>
                                <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처"/>
                            </li>
                        </ul>
                        <div class="submit"><input type="image" class="btn_submit" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
                    </div>
                    <div class="chat_box input_box_changed hide"></div>
                </div>

                <div class="chat_set right hide" data-value="3">
                    <div class="description">
                        <p id="event-period"></p>
                        <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span>대상 :  ${resVo.target} </span>
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
    $('.agree_btn').on('click', function() {
        $(this).addClass('selected');
    });

    // 설문 답변 셀렉 시, 나머지 셀렉 없애기
    $('.question_box .q_select label input').on('click', function() {
        var selectedInputName = $(this).attr('name');
        $('.question_box .q_select label input[name="' + selectedInputName + '"]:not(:checked) + .chat_box').css('display', 'none');
    });

    function showNextComment(currentValue, nextValue, isLeft) {
        var selector = isLeft ? '.chat_set.left' : '.chat_set.right';
        $('.chat_set.left[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn();
        if (selector) {
            $('.chat_set.right[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn();
        }
    }

    showNextComment(0, 1, false); // 맨 처음 대화창 이펙트

    // 동의 버튼 클릭 시
    $('.agree_btn').on('click', function () {
        $(this).text('동의');
        $('.disagree_btn').hide();
        showNextComment(1, 2, true); // Show next chat_set.left
        showNextComment(1, 2, false); // Show next chat_set.right
        scrollToBottom();
        
        setTimeout(function() {
            $('#location').trigger('play');
        }, 500);
    });

    $('input[name="tadd1"]').on('click',function(){
        setTimeout(function(){ $('#location').trigger('play'); },500);
        $('#location').attr('src', `//static.resta.co.kr/event/v_${eventSeq}/audio_02.mp3`)
    })

    // add1, add2 설문 셀렉 시
    $('input[name*="tadd"]').on('change', function () {
        var currentValue = $(this).closest('.chat_set').data('value');
        var nextValue = currentValue + 1;

        showNextComment(currentValue, nextValue, true); // Show next chat_set.left
        showNextComment(currentValue, nextValue, false); // Show next chat_set.right
        scrollToBottom();
    });

    // 이름 입력란 - 다음 버튼 클릭 시
    $('.input_box .next_btn').on('click', function () {
        var nameValue = $('input[name="name"]').val();
        var phoneValue = $('input[name="phone"]').val();

        if(nameValue.length > 1 && phoneValue.length == 11) {
            $('.chat_set[data-value="4"] .chat_box.input_box_changed').text(nameValue).removeClass('hide').hide().show();
            $('.chat_set[data-value="4"] .input_box').addClass('hide');

            showNextComment(3, 4, true); // Show next chat_set.left
            showNextComment(3, 4, false); // Show next chat_set.right
            $('.bottom').show();
            scrollToBottom();
        } else {
            alert('성함과 연락처를 적어주세요.');
        }
    });

    // 원하는 위치로 이동
    function scrollToBottom() {
        $("html, body").animate({ scrollTop: $(document).height() }, 1000, 'linear');
    }

    // 버튼 클릭 시 현재 열린 창 닫기
    function windowClose() {
        alert ("미동의시 설문에 참여하실 수 없습니다.")
    }

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