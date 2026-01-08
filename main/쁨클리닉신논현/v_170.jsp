<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<!-- <link rel="stylesheet" href="/css/base.css"> -->
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    @font-face {
        font-family: 'GmarketSans';
        font-weight: 700;
        font-style: normal;
        font-display: swap;
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.4/GmarketSansBold.woff') format('woff');
    }

    * {font-family: "Noto Sans KR", sans-serif; box-sizing: border-box;}
    #page_landing_c .wrap_curd {background: transparent;}
    #page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
    html{
        height: 100%;
    }
	.content {padding: 20px 10px;}
	.content + .content {border-top: 1px solid #ddd;}
	.content * {padding: 8px 10px;}
    .wrap_form .agBox {margin: 7px auto;}

    #page_landing_c main {max-width: 1080px;}
    #page_landing_c .wrap_form {padding: 0; border: 0; width: 100%; background: url("//static.savemkt.com/event/v_${eventSeq}/bg_01.jpg") no-repeat; background-size: 100%;}
    #page_landing_c .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}
    #page_landing_c .wrap_form .container .img-area {width: 95%; margin: 0 auto;}
    #page_landing_c .wrap_form .submit {position: relative; width: 100%; max-width: 491px; height: 189px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat top center / 100%; margin: 2% auto 0; padding: 4% 0;}
    #page_landing_c .wrap_form .submit .submit-box {display: flex; flex-direction: column; align-items: center; justify-content:  center; text-align: center; font-family: 'GangwonEducationTteontteon'; font-size: 400%; height: 100%;}
    #page_landing_c .wrap_form .submit input {margin: 0; padding: 0 !important; width: 30%; height: auto !important; cursor: pointer; border-radius: 0;}
    #wrap { width: 100%; background: url("//static.savemkt.com/event/v_${eventSeq}/bg_01.jpg") no-repeat; background-size: 100%; font-family: 'Pretendard';}
    .form {background: transparent;}
    .line {display: inline-block; width: 100%; content: ''; height: 1px; background: #1f1f1f;}

    /* 신청자 수 CSS */
    .remaining-box {padding: 3%; display: flex; align-items: center; justify-content: center; text-align: center; gap: 1em; color: #fff; background-color: #000;}
    .remaining-box .person_img {width: 2em;}
    .remaining-box .remaining-text {font-size: var(--remaining-font-size); font-weight: 600; line-height: 1;}
    .remaining-box .remaining-text .remaining-num {color: #d90004;}

    /* 상단 카운트 */
    .count-box {background: #ff6000; font-size: 2rem; text-align: center; padding: 0.5rem 2rem; width: max-content; border-radius: 2rem; margin: 3rem auto 2rem;}
    .count-box span {color: #fff000; font-family: 'Gmarket Sans'; font-weight: 400;}
    .count-box #count,
    .count-box #count2 {color: #fff; font-weight: 700;}
    .form .count-box {position: absolute; top: 2%; left: 50%; transform: translateX(-50%);}

    /* Hotevent roulette CSS */
    .spinmachine_container {position: relative; padding: 4.95% 0 9.77%;}
    .spinmachine_container > .img-area {width: 80%; margin: 0 auto;}
    .spinmachine_container .present_img {z-index: 1; position: absolute; left: 0; bottom: 0;}
    .spinmachine_container #spinmachine {position: relative; bottom: 0; padding: 7.5% 0 0; width: 100%; text-align: center; overflow: hidden;}
    .spinmachine_container #spin-start {z-index: 998; cursor: pointer; position: absolute; width: 79%; height: 79%; top: 47.5%; left: 50%; transform: translate(-50%, -50%); border-radius: 9999px;}
    .spinmachine_container #spin-pin {position: absolute; max-width: 65px; top: 3.5%; left: 50%; transform: translateX(-50%); width: 10%; z-index: 990;}
    .spinmachine_container #spin-img {width: 87%; margin: 0 auto;}
    .rotate {animation: rotate 3s cubic-bezier(0.25, 0.25, 0.1, 1) forwards; transform: rotate(360deg);} /* 룰렛 애니메이션 */
    .spinmachine_container #start-img {position: absolute; top: 52.5%; left: 50%; transform: translate(-50%, -50%); width: 23.5%;}

    .clear {clear: both;}

    .overlay {z-index: 998; position: fixed; top: 0; left: 0; bottom: 0; right: 0; display: none; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.7);}
    .popup-coupon {z-index: 999; position: absolute; top: 90%; left: 50%; transform: translate(-50%, 50%); max-width: 970px; width: 100%; margin: 0 auto; display: none;}

    /* form css */
    #page_landing_c .form {overflow: hidden; display: none; padding-bottom: 17%;}
    #page_landing_c .form .formContents {padding: 0 5% 5%;}
    #page_landing_c .form .formContents > .img-area {margin: 8.65% auto 9.27%; width: 88.9%;}
    #page_landing_c .form .form_bg_box {padding: 4rem 3.7rem 0; background-color: #f1eaff; border-radius: 36px;}
    #page_landing_c .form .form_box {width: 70%; margin: 5em auto 2em; display: grid; gap: 1.22em;}
    #page_landing_c .form .form_box .user-info {display: flex; align-items: center;}
    #page_landing_c .form .legend {width: 25%; text-align: center; display: inline-block; color: #030303; font-size: 2.5rem; font-weight: 700; flex-shrink: 0; font-family: 'GmarketSans';}
    #page_landing_c .form .form_box .user-info input {background: #fff; height: auto; border: solid 1px #757575; padding: 1.5rem; padding-right: 0; font-size: 1.2rem; border-radius: 0;}

    .form .form_box .form_row {display: grid; gap: 0.4em;}
    .form .form_box .form_row .grid2 {display: grid; grid-template-columns: repeat(2, 1fr); gap: 0.7em;}

    /* 개별 form_row */
    .form .form_box .form_row.last {display: flex;}
    .form .form_box .form_row.last .img-area img {width: 75%;}

    /* 공통 라벨 */
    .form .form_box .form_row .label_text {display: flex; gap: 0.2em; letter-spacing: -0.04em; font-size: var(--label-font-size); font-weight: 700;}
    .form .form_box .form_row .label_text .asterisk {color: var(--color-label-asterisk);}
    .form .form_box .form_row .label_text .label_des {font-size: 0.5em; color: var(--color-label-asterisk);}

    /* === 패키지 선택 === */
    .form .form_box .form_row .package {-webkit-appearance: none; width: 100%; font-family: inherit; font-size: 1.7em; border: 0; color: #000; background-color: transparent;}
    /* === 신청자 정보 - 이름, 연락처 === */
    .form .form_box .form_row .input_box .inp {padding: var(--common-box-padidng); width: 100%; font-family: inherit; font-size: 1.5em; background-color: #fff;}
    .form .form_box .form_row .input_box .inp::placeholder {color: #000;}
    /* === 신청 인원 === */
    .form .form_box .form_row .headcount {font-size: 1.5em; font-weight: 600; width: 35%; display: flex ; flex-flow: row wrap; gap: 5%;}
    /* 셀렉 박스 기본 */
    .form .form_box .form_row .headcount label .inp + .sel_item {position: relative; padding-left: 1.3em; font-weight: 500; color: #000; padding-bottom: 5%;} 
    .form .form_box .form_row .headcount label .inp:checked + .sel_item {color: #d90004;}

    .form .form_box .form_row .headcount label .inp + .sel_item::before {display: flex; align-items: center; justify-content: center; position: absolute; top: 53%; transform: translateY(-50%); left: 0; width: 1.6em; height: 1.6em; content: '●'; line-height: 0; text-align: center; font-size: 0.6em; border: 2px solid #ccc; border-radius: 999px; color: #fff; background-color: #fff;} /* 셀렉 원 */
    /* 셀렉 박스 checked */
    .form .form_box .form_row .headcount label .inp:checked + .sel_item::before {border-color: #d90004; color: #d90004;} /* 셀렉 원 */
    /* === 연령 입력 === */
    .form .form_box .form_row.area_age_container {display: none;}
    .form .form_box .form_row.area_age_container .img-area img {width: 65%;}
    .form .form_box .form_row.area_age_container.active {display: grid;}
    .form .form_box .form_row .area_age {display: grid; grid-template-columns: repeat(5, 1fr); gap: 1em;}
    .form .form_box .form_row .area_age .box_age {display: flex; align-items: center; gap: 0.2em; font-size: var(--common-font-size);}
    .form .form_box .form_row .area_age .box_age .ipt_age {padding: 12% 5%; width: 100%; text-align: center; font-size: 1.1em; border: 1px solid #ccc;}
    .form .form_box .form_row .area_age .box_age .ipt_age + span {font-size: 1.4em;}
    .form .form_box .form_row .img-area {margin-bottom: 2%;}
    .form .form_box .form_row img {width: 25%;}

    /* submit CSS */
    .form .submit {margin: 1em auto 0; padding: 0;}
    .form .submit input[type="image"] {
        animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite;
    }
    .form .submit input[type="image"] {width: 100%;}
    .form .submit input[type="submit"] {padding: 0.6em 0; width: 100%; text-align: center; font-size: var(--submit-font-size); font-weight: 700; border: none; border-radius: 9999px; color: #fff; background-color: #ff008d;}

    /* focus */
    /* .nice-select {border-radius: 0 !important;} */
    .nice-select:active, .nice-select.open, .nice-select:focus, .form .form_box .form_row .input_box .inp:focus, .form .form_box .form_row .area_age .box_age .ipt_age:focus {border-color: #d90004 !important;}

    .description.bottom {background: #f1f1f1; border: 1px solid #ddd; text-align: center; color: #999; display: flex; align-items: center; justify-content: center; gap: 2rem;
    padding: 0.7rem 0;}
    .description.bottom p,
    .description.bottom span {padding: 0; margin: 0; font-size: 1rem;}

    #page_landing_c .form .description {margin: 0;}
    #page_landing_c .form .description p,
    #page_landing_c .form .description span,
    #page_landing_c .form .description .ad_txt {margin: 0; padding: 0; font-size: 250%; line-height: 1.27; letter-spacing: -0.02em; font-weight: 500;}
    #page_landing_c .form .description p {font-weight: 700; font-family: 'GmarketSans'; margin-bottom: 2%; font-size: 250%; letter-spacing: -0.05em;}
    #page_landing_c .form .description .ad_txt {font-weight: 100;}

    @keyframes rotate {
    0% {transform: rotate(10deg);}
    100% {transform: rotate(720deg);}
}


@keyframes pulsating {
    50% {
        transform: scale(0.95);
    }
}

@media screen and (max-width: 768px){
    #page_landing_c .wrap_curd * {font-size: 97%;}
    .spinmachine_container {padding: 9.95% 0 11.77%;}
    /* #page_landing_c .form {padding-bottom: 2%;} */
    .popup-coupon {top: 71%; transform: translate(-50%, -50%);}
    #page_landing_c .form .form_bg_box {padding: 2rem 1.7rem 1rem; border-radius: 24px;}
    #page_landing_c .form .form_box {margin: 1.5em auto 0.7em; width: 80%; gap: 0.7em;}
    #page_landing_c .form .legend {font-size: 4.1vw;}
    #page_landing_c .form .form_box .user-info input {padding: 0.7rem 1rem; font-size: 1rem;}
    #page_landing_c .form .description .ad_txt {font-size: 3vw;}
    #page_landing_c .form .description p {font-size: 2.9vw;}
    .spinmachine_container #start-img {top: 49%;}

    #page_landing_c .wrap_form .submit {height: 84px; padding: 7% 0;}
}
@media screen and (max-width: 500px){
    .popup-coupon {width: 85%;}

    .subscribe {height: 200px;}
    .subscribe .content, .subscribe .content:last-child{font-size: 80%; gap: 1em;}
    

    .nice-select::before {bottom: -10px;}
    .form .form_box .form_row .input_box .inp {font-size: 1em;}
    .form .form_box .form_row.last .img-area img {width: 60%;}
    .form .form_box .form_row .headcount {width: 80%; font-size: 1em;}
    .count-box {font-size: 1.2rem;}
    .spinmachine_container #spinmachine {padding: 7% 0 8%;}
    .description.bottom {flex-direction: column; gap: 0;}
    .description.bottom p, .description.bottom span {font-size: 0.7rem;}
    .form .count-box {margin: 0 auto; top: 5%;}

    .form .form_bg_box {padding: 1.5rem 2rem;}
    .form .legend {font-size: 1.2rem;}
    .form .form_box .user-info input {padding: 1rem; padding-right: 0;}
    .form .form_box .form_row {gap: 0;}

    .spinmachine_container #spin-pin {top: 4%; max-width: 25px;}
}
@media screen and (max-width: 430px){
    .form .form_box .form_row .package,
    .nice-select.wide .current,
    .nice-select.wide .list .option {font-size: 1.2em;}
    .nice-select {line-height: 15px !important; height: 100% !important; }
    .form .form_box {gap: 1em;}
    .nice-select.wide.open .list { height: 25vh; overflow: auto;}
}
@media screen and (max-width: 395px){
    /* .spinmachine_container #spinmachine {padding: 5% 0 7%;} */
}

</style>
<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div id="wrap">
            <div class="container" data-value="1">
                <div class="img-area notice-area"><img src="//static.savemkt.com/event/v_${eventSeq}/apply_blink_on.png"></div>
                <div class="spinmachine_container">
                    <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png"></div>
                    <div id="spinmachine">
                        <img id="spin-pin" src="//static.savemkt.com/event/v_${eventSeq}/pin.png">
                        <div id="spin-start"></div>
                        <img id="spin-img" src="//static.savemkt.com/event/v_${eventSeq}/roulette.png">
                        <img id="start-img" src="//static.savemkt.com/event/v_${eventSeq}/start.png">
                    </div>
                </div>
            </div>

            <div class="wrap_form form">
                <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                    <div class="container">
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.png"></div>
                            <!-- <div class="count-box">
                                <span>지원금 선착순 <span id="count2"></span> 남았습니다.</span>
                            </div> -->
                    </div>
                    <div class="formContents">
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.png"></div>
                        <div class="form_bg_box">
                            <div class="description">
                                <p id="event-period"></p>
                                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                                <!-- <span class="target">대상 : ${resVo.target}</span> -->
                            </div>
                            <div class="form_box">
                                <div class="user-info">
                                    <span class="legend">이름</span>
                                    <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름 입력" />
                                </div>
                                <div class="user-info">
                                    <span class="legend">나이</span>
                                    <input type="tel" name="age" id="age" value="" class="inp" required autocomplete="off" maxlength="2" placeholder="나이 입력" />
                                </div>
                                <div class="user-info">
                                    <span class="legend">연락처</span>
                                    <input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처 입력" />
                                </div>
                            </div>
            
                            <div class="agBox">
                                <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                            </div>
                            
                            <div class="submit"><input type="image" onclick="fnForm('form-1');" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png"></div>
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
                    <input type="hidden" id="add1" 			name="add1" value="-"/>
                    <input type="hidden" id="add2" 			name="add2" value=""/>
                    <input type="hidden" id="add3" 			name="add3" value=""/>
                    <input type="hidden" id="add4" 			name="add4" value=""/>
                    <input type="hidden" id="add5" 			name="add5" value=""/>
                    <input type="hidden" id="add6" 			name="add6" value=""/>
                    <input type="hidden" id="add6" 			name="add6" value=""/>
                    
                    <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
                    <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
                    <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
                    
                </form>
            </div>
        </div>
        <div class="overlay"></div>
        <div class="popup-coupon">
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/coupon.png"></div>	
        </div>

        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p> </p>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        
        //신청현황 리스트
        getComment(`${eventSeq}`);

        ppeumAgreement(); //개인정보처리방침 전문
    });

    // 룰렛
    $("#spin-start").on('click', function (e) {
        $('#spin-img').addClass('rotate');

        setTimeout(function () {
            $('.overlay').delay(200).fadeIn();
            $('.popup-coupon').delay(200).fadeIn();
            // alert('축하합니다! 1등 당첨!!');

            //$('#wrap > .container:nth-child(1)').fadeOut(); 
            //$('.form').delay(100).fadeIn();
        }, 3000);
    });

    const noticeImg = document.querySelector('.notice-area img');
    const startImg = document.getElementById('start-img');
    const basePath = `//static.savemkt.com/event/v_${eventSeq}/`;
    let toggle = false;
    let toggle2 = false;

    setInterval(() => {
        toggle = !toggle;
        noticeImg.src = basePath + (toggle ? 'apply_blink_on.png' : 'apply_blink_off.png');
    }, 500);

    setInterval(() => {
        toggle2 = !toggle2;
        startImg.src = basePath + (toggle2 ? 'start_on.png' : 'start.png');
    }, 1000);

    $(".popup-coupon").on('click', function (e) {
        $(this).fadeOut(200);
        $('.overlay').fadeOut(200);

        $('#wrap .container').fadeOut(); 
        $('.form').delay(100).fadeIn();
    });
	
	var modal2 = document.getElementById("modal2");
	var agree = document.querySelector(".agBox .btn-agreement");
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
		
        /*
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("연령대를 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("필요한 개수를 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

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
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>