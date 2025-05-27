<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
* {margin: 0; padding: 0; box-sizing: border-box !important; font-family: 'Noto Sans KR', sans-serif;}

body::-webkit-scrollbar {display: none;}

.hide {display: none !important;}
.bg_main {background-color: rgb(236, 236, 236);}
.c_red {color:#fff500;}
.mb_3{margin-bottom: 3%;}
.bottom{display:none;}

#wrap {height: 100vh; background-color:#e9f3ff;}
.form {margin-top: 5%; padding: 0 3% 5%; overflow-y: scroll; background-color: transparent;}
.form::-webkit-scrollbar {display: none;}

/* 공통 폰트 사이즈 */
.chat_box, .input_box .next_btn, .form .inp{font-size: 28px; letter-spacing: -1px;}
.chat_box, .input_box, .chat_set.left .progress_box .progress_txt {border-radius: 0.5em;}

/* 공통 border */
.chat_set.left .chat_profile img, .chat_set.left .chat_box {border: 1px solid #ddd;}

.chat_set:not(:last-child) {margin-bottom: 4%;}

/* 채팅 left */
.chat_set.left {display: grid; grid-template-columns: 1fr 9fr; gap: 2%;}
.chat_set.left .chat_profile img {width: 100%; border-radius: 99em;}
.chat_set.left .progress_box .progress_txt {display: inline-block; margin-bottom: 1%; padding: 0.2em 0.4em 0.3em; font-size: 24px; font-weight: 700;background-color:#0069fd; color:#fff;}
.chat_set.left .chat_box {width: 6em; height: 2.3em; display: inline-block; padding: 0.4em 0.7em; background-color: #fff; transform-origin: left top; animation: .3s chatBoxSizeUp 0.5s forwards;}
.chat_set.left .chat_box .chat_txt {opacity: 0; animation: 0.3s fadeIn 0.6s forwards;}
.chat_set.left .chat_box .chat_txt em {font-weight: 700; text-decoration: none; font-style: normal;}

/* 채팅 right */
.chat_set.right {display: flex; justify-content: flex-end;}
.chat_set.right .chat_box {padding: 0.3em 0.6em 0.4em; font-weight: 700; background-color: #ffe3a0;}
.chat_set.right .chat_box.agree_btn, .chat_set.right .chat_box.disagree_btn {display: block; cursor: pointer;}
.chat_set.right .chat_box.disagree_btn { background-color: #4f4e52; }
.chat_set.right .chat_box.agree_btn.selected, .chat_set.right .chat_box.input_box_changed {background-color: #a44a15; color: #fff;}

/* chat_box 로딩 */
.chat_set.left .chat_box {position: relative; overflow: hidden;}
.loader_box {position: absolute; top: 0; left: 0; display: flex; align-items: center; justify-content: center; width: 100%; height: 100%; background-color: #fff;}
.loader_box .loader {position: relative; z-index: 9; width: 0.5em; height: 0.5em; border-radius: 50%; background-color: #000; box-shadow: 1em 0 #000, -1em 0 #000; animation: flash 0.3s ease-out infinite alternate;}

/* 이벤트기간 */

.form .form_box .description.top{width: 85%; margin: 4% auto 2%; padding: 2%; box-sizing: border-box; background-color: #f4f4f4; border-radius: 0.5em; word-break: keep-all;}
.form .form_box .description.top > p{color: #00594d; font-size: 110%; font-weight: bold; text-align: left;}
.form .form_box .description.top .ad_txt{font-size: 100%; word-break: keep-all; text-align: left; color: #000;}
.form .form_box .description.bottom{color: #fffffc;}

.form .formContents .table_box{padding: 0; width: 85%;}
.form .formContents .table_box table tr td{background-color: #f2f2f2; height: auto;}
.form .formContents .table_box.top table{border-collapse: separate; margin: 0;}
.form .formContents .table_box.top table tr:first-child td{height: auto; padding: 2% 2% 0; border-radius: 0.5em 0.5em 0 0; font-size: 90%; color: #000;}
.form .formContents .table_box.top table tr:last-child td{padding: 1% 2%; border-radius: 0 0 0.5em 0.5em;}
.form .formContents .table_box.top table tr td:nth-of-type(2){background-color: transparent; width: 7px;}


.form .formContents .table_box.tel table tr:first-child td{height: auto; padding: 2% 2% 0; border-radius: 0.5em 0.5em 0 0; font-size: 90%; color: #000;}
.form .formContents .table_box.tel table tr:last-child td{padding: 1% 2%; border-radius: 0 0 0.5em 0.5em;}
.form .formContents .table_box.tel table tr:last-child td .inp{width: 85%; padding-left: 1%;}
.form .table_box table th, .form .table_box table td {background: #eee !important; border-radius: 1rem; padding: 7px 16px !important; font-size:1.75rem;}

.form .table_box {width:100% !important;}

/* 설문 */
.question_box .q_select {display: flex; flex-flow: row wrap; gap: 1%; justify-content: flex-end; width: 100%;}
.question_box .q_select label {position: relative; cursor: pointer; width: max-content;}
.question_box .q_select label input::after {display: none; content: ''; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);}
.question_box .q_select label input:checked + .chat_box {background-color: #a44a15; color: #fff;}

/* 설문 개별 */
.chat_set[data-value="2"] .q_select label:nth-child(odd) {margin-bottom: 1%;}

.input_box {width: 60%; display: grid; grid-template-columns: 3fr 1fr; padding-left: 1em; border-radius: 0.5em; border: 0.2em solid #a44a15; background-color: #fff;}
.input_box .next_btn {padding: 0.2em 0.7em; text-align: center; font-weight: 700; border-radius: 0.3em 0 0 0.3em; cursor: pointer; background-color: #a44a15; color:#fff; width: 100%;}

.form .submit{padding:0; width: 20%;}
input[type="image"] {width:100%; }
.form .description {text-align: left; border-radius: 1rem; width: auto; font-size: 45%;}
.form .description p {font-size: 140%;}
.form .description .ad_txt { font-size: 110%;}
.form .description span {font-size: 100%;}
.agree_txt {text-decoration: none;}
.em {color: #a44a15;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 65%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 1% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

.form .formGroup .table_box table tr:last-child td input::placeholder {color:#afafaf;}

/* 개인정보처리방침 */
.form .agBox {width: 100%; font-size: 70%;}

@media screen and (max-width: 500px){
    /* 공통 폰트 사이즈 */
    .chat_box, .input_box .next_btn, .form .inp {font-size: 4vw;}
    .chat_set.left .progress_box .progress_txt {font-size: 3.2vw;}

    .form .description{font-size: 2vw;}

    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
    .form .table_box table th, .form .table_box table td {font-size: 100%;}
    .form .table_box {padding: 0;}
}

@media screen and (max-width: 375px){
}
/* loader animation */
@keyframes flash {
    0% { background-color: #0002; box-shadow: 1em 0 #0002, -1em 0 #000; }
    50% { background-color: #000; box-shadow: 1em 0 #0002, -1em 0 #0002; }
    100% { background-color: #0002; box-shadow: 1em 0 #000, -1em 0 #0002;}
}

@keyframes chatBoxSizeUp {
    100% {width: auto; height: auto;}
}

@keyframes fadeIn {
    0% {opacity: 0;}
    100% {opacity: 1;}
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
</div>
<div id="wrap">
    <div class="container bg_main">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
    
        <div class="form">
			<form id="form-1" method="POST" accept-charset="utf-8">

			<!-- chat01 -->
			<div class="chat_set left" data-value="1">
				<div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
				<div class="chat_container">
					<div class="chat_box">
						<div class="chat_txt">
							<div class="chat_txt">안녕하세요!<br><b class="em">서울대학교 의과대학 출신 대표 원장님</b>께서 직접 상담과 진료를 도와드립니다.</div>
						</div>
						<div class="loader_box">
							<span class="loader"></span>
						</div>                         
					</div>

					<div class="chat_box">
						<div class="chat_txt"> <div class="chat_txt"><b class="em">노안 · 백내장 증상</b>이 있으신가요? </div></div>
						<div class="loader_box"> <span class="loader"></span> </div>                         
					</div>
				</div>
			</div>

			<div class="chat_set right hide question_box" data-value="1">
				<div class="q_select">
					<label><input type="radio" name="tadd1" value="예"><div class="chat_box">예</div></label>
					<label><input type="radio" name="tadd1" value="아니오"><div class="chat_box">아니오</div></label>
				</div>
			</div>

			<!-- chat02 -->
			<div class="chat_set left hide" data-value="2">
				<div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
				<div class="">
					<div class="chat_container">
						<div class="chat_box">
							<div class="chat_txt">가장 <b class="em">불편한 증상</b>은 어떻게 되세요? </div>
							<div class="loader_box">
								<span class="loader"></span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="chat_set question_box right hide" data-value="2">
				<div class="q_select">
					<label><input type="radio" name="tadd2" value="눈이 흐릿하고 침침함"><div class="chat_box">눈이 흐릿하고 침침함</div></label>
					<label><input type="radio" name="tadd2" value="가까운 글씨가 안보임"><div class="chat_box">가까운 글씨가 안보임</div></label>
					<label><input type="radio" name="tadd2" value="시야가 뿌옇고 눈이 뻑뻑함"><div class="chat_box">시야가 뿌옇고 눈이 뻑뻑함</div></label>
					<label><input type="radio" name="tadd2" value="기타"><div class="chat_box">기타</div></label>
				</div>
			</div>

			<!-- chat03 -->
			<div class="chat_set left hide" data-value="3">
				<div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
				<div class="">
					<div class="chat_container">
						<div class="chat_box">
							<div class="chat_txt"><b>연령대</b>를 선택해주세요</div>
							<div class="loader_box">
								<span class="loader"></span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="chat_set question_box right hide" data-value="3">
				<div class="q_select">
					<label><input type="radio" name="tadd3" value="40대"><div class="chat_box">40대</div></label>
					<label><input type="radio" name="tadd3" value="50대"><div class="chat_box">50대</div></label>
					<label><input type="radio" name="tadd3" value="60대"><div class="chat_box">60대</div></label>
					<label><input type="radio" name="tadd3" value="70대 이상"><div class="chat_box">70대 이상</div></label>
				</div>
			</div>

			<!-- chat04 -->
			<div class="chat_set left hide" data-value="4">
				<div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
				<div class="">
					<div class="chat_container">
						<div class="chat_box">
							<div class="chat_txt">노안 · 백내장 혜택 받으실<br><b>귀하의 성함</b>을 입력해 주세요.</div>
							<div class="loader_box">
								<span class="loader"></span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="chat_set right hide" id="page-4" data-value="4">
				<div class="input_box">
					<input type="text" name="name" id="name" class="inp" required autocomplete="off" placeholder="성함"/>
					<span class="next_btn">다음</span>
				</div>
				<div class="chat_box input_box_changed hide"></div>
			</div>

			<!-- chat05 -->
			<div class="chat_set left hide" data-value="5">
				<div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
				<div class="">
					<div class="chat_container">
						<div class="chat_box">
							<div class="chat_txt">노안 · 백내장 혜택 받으실<br><b>귀하의 연락처</b>를 입력해 주세요</div>
							<div class="loader_box">
								<span class="loader"></span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="chat_set right hide" id="page-5" data-value="5">
				<div class="input_box">
					<input type="tel" name="phone" id="phone" class="inp" autocomplete="off" aria-autocomplete="none" maxlength="11" placeholder="연락처">
					<span class="next_btn">다음</span>
				</div>
				<div class="chat_box input_box_changed hide"></div>
			</div>

			<!-- chat06 -->
			<div class="chat_set left hide" data-value="6">
				<div class="chat_profile"><img src="//static.resta.co.kr/event/v_${eventSeq}/profile.png"></div>
				<div class="">
					<div class="chat_container">
						<div class="chat_box">
							<div class="chat_txt">
								<div class="agBox">
									<input name="agBox" type="checkbox" checked>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함<a href="#" class="agree_txt">[자세히 보기]</a>
								</div>
								<div class="description">
									<p id="event-period"></p>
									<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
									<span>대상 : ${resVo.target}</span>
								</div>
							</div>
							<div class="loader_box">
								<span class="loader"></span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="chat_set right hide" id="page-6" data-value="6">
				<div class="submit submit_agree">
					<input type="image" value="" class="btn_submit" onclick="fnForm('form-1')" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"/>
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
		<div class="container_bottom hide">
			<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
			<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
		</div>
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

	$(document).ready(function(){
		
		initDate();
		
		//드레그, 우클릭 방지
		blockSourceView()
	})

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

    // 설문 답변 셀렉 시, 나머지 셀렉 없애기
    $('.question_box .q_select label input').on('click', function() {
        var selectedInputName = $(this).attr('name');
        $('.question_box .q_select label input[name="' + selectedInputName + '"]:not(:checked) + .chat_box').css('display', 'none');
    });

    function showNextComment(currentValue, nextValue, isLeft) {
        var selector = isLeft ? '.chat_set.left' : '.chat_set.right';
        $('.chat_set.left[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn(function() {
            $(this).find('.loader_box').delay(200).fadeOut(); // loader
        });

        if (selector) {
            setTimeout(function () {
                $('.chat_set.right[data-value="' + nextValue + '"]').removeClass('hide').hide().fadeIn(function () {
                });
            }, 1000);
        }
    }
    showNextComment(0, 1, false); // 맨 처음 대화창 이펙트

    // add 설문 셀렉 시
    $('input[name*="tadd"]').on('change', function () {
        var currentValue = $(this).closest('.chat_set').data('value');
        var nextValue = currentValue + 1;

        showNextComment(currentValue, nextValue, true); // Show next chat_set.left
        showNextComment(currentValue, nextValue, false); // Show next chat_set.right
        scrollToBottom();
    });

    // 이름 입력란 - 다음 버튼 클릭 시
    $('.chat_set[data-value="4"] .input_box .next_btn').on('click', function () {
        var nameValue = $('input[name="name"]').val();

        if(nameValue.length > 1) {
            $('.chat_set[data-value="4"] .chat_box.input_box_changed').text(nameValue).removeClass('hide').hide().fadeIn();
            $('.chat_set[data-value="4"] .input_box').addClass('hide');

            showNextComment(4,5, true); // Show next chat_set.left
            showNextComment(4,5, false); // Show next chat_set.right
            $('.bottom').show();
            scrollToBottom();
        } else {
            alert('정확한 이름을 입력해 주세요.');
        }
    });

    // 연락처 입력란 - 다음 버튼 클릭 시
    $('.chat_set[data-value="5"] .input_box .next_btn').on('click', function () {
        var nameValue = $('input[name="phone"]').val();

        if(nameValue.length > 1) {
            $('.chat_set[data-value="5"] .chat_box.input_box_changed').text(nameValue).removeClass('hide').hide().fadeIn();
            $('.chat_set[data-value="5"] .input_box').addClass('hide');

            showNextComment(5,6, true); // Show next chat_set.left
            showNextComment(5,6, false); // Show next chat_set.right
			$('.container_bottom').removeClass('hide')
            $('.bottom').show();
            scrollToBottom();
        } else {
            alert('정확한 연락처를 입력해 주세요.');
        }
    });

    // 원하는 위치로 이동
    function scrollToBottom() {
        $("html, body").delay(1200).animate({ scrollTop: $(document).height() }, 1000, 'linear');
    }

    // 버튼 클릭 시 현재 열린 창 닫기
    function windowClose() {
        window.close();
        self.close();
        window.opener = window.location.href;
        window.open('about:blank', '_self').close();
    }

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`);
		if (!selectedRadio3) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
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
			// , 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>