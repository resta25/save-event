<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common.css">
<style>
    @font-face {
        font-family: 'Paperlogy';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-4Regular.woff2') format('woff2');
        font-weight: 400;
        font-style: normal;
    }
    @font-face {
        font-family: 'Paperlogy';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-6SemiBold.woff2') format('woff2');
        font-weight: 600;
        font-style: normal;
    }
    @font-face {
        font-family: 'Paperlogy';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-7Bold.woff2') format('woff2');
        font-weight: 700;
        font-style: normal;
    }

    * {box-sizing: border-box; font-family: 'Noto Sans KR', sans-serif;}

    /* 기본 css 초기화 */
    #page_landing_c main {max-width: 818px; background-color: transparent;}
    #page_landing_c .wrap_form {background-color: transparent; border: none;}
    #page_landing_c .wrap_curd {background-color: transparent;}
    .form input[type="checkbox"], .form input[type="radio"] {
        border: 0;
        clip: rect(0 0 0 0);
        height: 1px;
        margin: -1px;
        overflow: hidden;
        padding: 0;
        position: absolute;
        width: 1px;
    }
    input:is([type="checkbox"],[type="radio"]) {width: 0; height: 0;}
    .wrap_checkbox input:is([type="checkbox"],[type="radio"]) {width: 15px; height: 15px;}
    .btn_submit {background-color: transparent !important;}
    :is(#page_landing_a, #page_landing_c) .wrap_checkbox > div {justify-content: center;}
    #page_landing_c .wrap_curd input[type="radio"] {margin-left: 0;}

    :is(#page_landing_a, #page_landing_c) .wrap_curd .btn_submit {
        height: auto;
        padding: 10px 0;
        font-size: 28px;
        line-height: 2;
        font-weight: 700;
        max-width: 89.85%;
        margin: 3% auto 7.35%;
    }
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {background-color: transparent; border: none; outline: none; padding: 0; margin: 0;}
    .wrap_curd select {border-radius: 0;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {border: 1px solid #000; border-radius: 0;}
    #page_landing_c .wrap_checkbox {margin-bottom: 1%;}

    /* 공통 폰트 사이즈 */
    main {background: url("//static.savemkt.com/event/v_${eventSeq}/bg_01.jpg") no-repeat top center / 100% 100%;}
    .label {font-size: 28px;}
    .wrap_form .question_box.row .q_select label, .wrap_form .question_box.row .q_select .inp {font-size: 28px;}

    .wrap_form {padding-bottom: 10%;}
    .form-inner {background: #ffb9b9; border-radius: 1.88em; width: 96.27%; margin: 2.97% auto 0; text-align: center;}
    .wrap_form .formContents{padding: 0;}
    .title-img {width: 80%; margin: 0 auto 5%;}

    /* 설문 팝업 */
    .overlay {z-index: 998; position: absolute; top: 0; left: 0; display: none; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.7);}
    .popup-db {z-index: 999; position: absolute; top: 50%; left: 50%; transform: translate(-50%, 50%); max-width: 655px; width: 100%; margin: 0 auto; display: none; background: #fff; border-radius: 2.5rem; padding: 1.74% 2.785% 1.2%;}
    #page_landing_c main #event-period {line-height: 1; font-size: 130%; letter-spacing: -0.5px;}
    #page_landing_c main .ad_txt {font-size: 140%; line-height: 1.32; margin-top: 2%; letter-spacing: -0.5px;}

    /* 설문영역 */
    #page_landing_c .wrap_curd .q_select {width: 90%; margin: 0 auto;}
    #page_landing_c .wrap_curd .q_select label {width: 100%; margin-bottom: 2%; justify-content: center;}
    #page_landing_c .wrap_curd .q_select label img {width: 100%;}

    /* db영역 */
    #page_landing_c .wrap_curd .formGroup {margin-top: 5.5%;}
    #page_landing_c .wrap_curd .user_info, #page_landing_c .wrap_curd .question_box {display: flex; align-items: center; gap: 4%; width: 90%; margin: 3% auto;}
    #page_landing_c .wrap_curd .user_info .legend, #page_landing_c .wrap_curd .question_box .legend {font-family: 'Paperlogy'; font-weight: 600; font-size: 200%; width: 30%; text-align: right; flex-shrink: 0;}
    #page_landing_c .wrap_curd .user_info .user-input {width: 100%;}
    #page_landing_c .wrap_curd .user_info input {margin-left: 0; width: 100%;}
    #page_landing_c .wrap_curd .user_info input, #page_landing_c .wrap_curd select.q_select {height: 70px; border: 1px solid #000; border-radius: 0; font-size: 125%;}
    #page_landing_c .wrap_curd select.q_select {appearance: none; background: url("//static.savemkt.com/event/v_${eventSeq}/arrow-down.png") no-repeat center right 11px / 36px 36px;}

    .wrap_form .submit {height: 100%; margin: 0; padding: 0; height: 100%;}
    .wrap_form .submit input[type="image"]{height: 100%;}

     /* submit CSS */
    .wrap_form .submit {margin: 1em auto 0; padding: 0;}
    .wrap_form .btn_submit {background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb_01.png') no-repeat center center / 100% 100%;}
    #page_landing_c main .btn_submit img {
        display: block;
        width: 70%;
        height: 100%;
        margin: 0 auto;
        animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite;
    }
    .wrap_form .submit input[type="image"] {width: 100%;}
    .wrap_form .submit input[type="submit"] {padding: 0.6em 0; width: 100%; text-align: center; font-size: var(--submit-font-size); font-weight: 700; border: none; border-radius: 9999px; color: #fff; background-color: #ff008d;}

    .wrap_form .agBox{width: 100%;}
    form .description p{margin: 0;}

    .notice-area {max-width: 88.3%; margin: 0 auto 2%;}

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
    .btn-agreement {text-align: center; cursor: pointer;}

    @keyframes pulsating {
        50% {
            transform: scale(0.95);
        }
    }

    @media screen and (max-width: 500px){
        .wrap_form .inp {font-size: 100%;}
        .user-info {height: 5em;}
        .wrap_form .table_box table th, .wrap_form .table_box table td {height: auto; padding: 0;}
        .wrap_form .table_box.rowBorder table th, .wrap_form .table_box.rowBorder table td {padding: 0;}
        .wrap_form .description p,
        .wrap_form .description .ad_txt,
        .wrap_form .description span {padding: 0;}
        .wrap_form .submit {width: 70%;}

        .popup-db {top: 50%; transform: translate(-50%, -50%); padding: 5% 3%;}
        
        #page_landing_c main #event-period {font-size: 105%;}
        #page_landing_c main .ad_txt {font-size: 115%;}
        #page_landing_c .wrap_curd .user_info .legend, #page_landing_c .wrap_curd .question_box .legend {font-size: 150%;}
        #page_landing_c .wrap_curd .user_info input, #page_landing_c .wrap_curd select.q_select {height: 50px;}
        #page_landing_c .wrap_curd select.q_select {padding-left: 5px; background-size: 26px 26px;}

        :is(#page_landing_a, #page_landing_c) .wrap_checkbox > div label:nth-of-type(1) {font-size: 10px;}
        .popup-db {width: 95%;}
        #page_landing_c .wrap_curd .description #target {font-size: 10px;}
}
</style>

<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div class="wrap_form">
            <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png" alt="landing_top" class="landing_top">
                <div class="form-inner">
                    <div class="img-area title-img"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.png"></div>

                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="피코토닝"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_01.png"></label>
                        <label><input type="radio" name="tadd1" value="아쿠아필"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_02.png"></label>
                        <label><input type="radio" name="tadd1" value="리프테라2"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_03.png"></label>
                        <label><input type="radio" name="tadd1" value="쥬베룩볼륨"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_04.png"></label>
                        <label><input type="radio" name="tadd1" value="온다리프팅"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_05.png"></label>
                    </div>

                        <button type="button" class="btn_submit b_point img-area">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png" alt="">
                        </button>

                    <div class="popup-db">
                        <div class="formContents">                            
                            <div class="description">
                                <p id="event-period"></p>
                                <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를<br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            </div>
    
                        <div class="formGroup">
                            <div class="user_info user_name">
                                <span class="legend">이름</span>
                                <input type="text" name="name" id="name" class="inp" required placeholder="성함을 입력해 주세요."  autocomplete="off" >
                            </div>
                            <div class="user_info user_age">
                                <span class="legend">나이</span>
                                <div class="user-input phone">
                                    <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이를 입력해주세요.">
                                </div>
                                <!-- <input type="tel" name="phone" id="phone" class="inp" required="" placeholder="연락처를 입력해 주세요." autocomplete="off" maxlength="11"> -->
                            </div>
                            <div class="user_info user_phone">
                                <span class="legend">연락처</span>
                                <div class="user-input phone">
                                    <input type="tel" placeholder="연락처를 입력해주세요." id="phone" name="phone" maxlength="11" value="010">
                                </div>
                                <!-- <input type="tel" name="phone" id="phone" class="inp" required="" placeholder="연락처를 입력해 주세요." autocomplete="off" maxlength="11"> -->
                            </div>
                        </div>

                        <div class="question_box">
                            <span class="legend">지점선택</span>
                            <select class="q_select" name="tadd2" required>
                                <option value="">지점선택</option>
                            </select>
                        </div>
                        
                        <!-- <div class="agBox">
                            <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div> -->
                        
                        <div class="wrap_checkbox">
                            <div>
                                <label><input type="checkbox" name="agBox" id="privacyCheckbox" value="y" name="terms">개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</label>
                                <label id="agree">[자세히보기]</label>
                            </div>
                        </div>                        
                        <div class="description">
                            <span id="target">대상 :  ${resVo.target}</span>
                        </div>
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png"></div>

                        </div>
                    </div>
                </div>

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

                <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
                <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
                <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
            </form>
        </div>

        <div class="container">
            <div class="img-area notice-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.png"></div>
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
        </div>

        <div class="overlay"></div>
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p></p>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        ppeumAgreement(); //개인정보처리방침 전문
    });

    //설문 클릭시 이미지 on/off
    $('input[name*="tadd"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    // 이벤트 신청하기 버튼 클릭시 팝업 보여주기
    $(".b_point").on('click', function (e) {
        e.preventDefault(); // 버튼 기본 동작 방지 (필요시)

        // tadd1 라디오 중 체크된 게 있는지 확인
        if ($('input[name="tadd1"]:checked').length === 0) {
            alert("희망 이벤트를 선택해주세요.");
            return; // 함수 종료 → 팝업 안 열림
        }

        // 선택된 경우에만 팝업 표시
        $('.overlay').fadeIn(200);
        $('.popup-db').fadeIn(200);
    });

    $(".overlay").on('click', function (e) {
        $('.overlay').fadeOut(200);
        $('.popup-db').fadeOut(200);
    });

    // 라디오 선택 시 select 옵션 변경
    $('input[name="tadd1"]').on('change', function() {
    const selectedValue = $(this).val();
    const $select = $('.question_box select');
    
    // 옵션 데이터 정의
    const optionsMap = {
        '피코토닝': ['강남본점', '노원', '건대', '울산', '춘천', '천안'],
        '아쿠아필': ['강남본점', '노원', '건대', '울산', '춘천', '천안'],
        '리프테라2': ['강남본점', '노원', '울산', '춘천', '천안'],
        '쥬베룩볼륨': ['강남본점', '노원', '건대', '울산', '춘천', '천안'],
        '온다리프팅': ['강남본점', '노원', '건대']
    };

    // 선택된 값에 맞는 옵션 불러오기
    const options = optionsMap[selectedValue] || [];

    // select 초기화 후 새 옵션 추가
    $select.empty().append('<option value="">지점선택</option>');
    options.forEach(option => {
        $select.append('<option value="' + option + '">' + option + '</option>');
    });
    });
    
	var modal2 = document.getElementById("modal2");
	var agree = document.getElementById("agree");
	var close2 = document.getElementById("close");

	agree.onclick = function () {
	    modal2.style.display = "block";
	}

	close2.onclick = function () {
	    modal2.style.display = "none";
	}

    document.addEventListener('DOMContentLoaded', function() {
	    const phoneInput = document.getElementById('phone');

	    // 페이지 로드 시 기본값 설정
	    phoneInput.value = '010';

	    // 입력값이 사라지면 다시 '010' 넣기
	    phoneInput.addEventListener('input', function() {
	        if (!phoneInput.value.startsWith('010')) {
	            phoneInput.value = '010';
	        }
	    });
	});

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("희망 이벤트를 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

        let selectedRadio2 = procForm.querySelector('select[name="tadd2"]');
		if (!selectedRadio2) {
			alert("지점을 선택해주세요.");
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
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '희망지점'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>