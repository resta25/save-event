<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<style>
    .wrap_form {max-width: 1080px;}
    #page_landing_c .wrap_form {padding: 0 !important; border: none;}
	.content {padding: 20px 10px;}
	.content + .content {border-top: 1px solid #ddd;}
	.content * {padding: 8px 10px;}

    #location {width: 100%;}

    #page_landing_c main {background-color: #fff !important;}

    .btn_submit {background: none; background-color: transparent !important;}
    .btn_submit:disabled {opacity: 0.5;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}
    /* cta 버튼 */
    .form .submit{width: 70%; margin: 0 auto; padding: 0 0 5%;}
    .form .submit input[type="image"]{width: 100%;}

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #fff; padding: 0 5.5rem 6.5rem;}
    .subscribe_bg {background: #f8f8f8; padding: 3.75% 8.5%; border-radius: 20px}
    #page_landing_c .wrap_curd .subscribe_container .title {padding: 7.5rem 0 0; font-size: 4.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem;}
    .subscribe_container .img-area {width: 40%; margin: 3% auto;}
    .subscribe {height: 530px; overflow: hidden;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
    .subscribe .content > div {font-size: 1.35rem; width: calc(100% / 4);}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }
    .subscribe .content .date {text-align: right;}

    .question_box .question img {max-width: 801px; margin: 4.65% auto 7%;}
    .select-box {display: flex; align-items: center; justify-content: center; column-gap: 22px; padding: 0 20px 74px;}
    .select-box .img-area {width: 47.11%;}
    .question_box .q_select {display: flex; flex-direction: column; row-gap: 16px; width: 44.32%; box-sizing: border-box;}
    /* .question_box .q_select label {height: 134px;} */
    #page_landing_c .wrap_curd input[type="radio"] {display: none; appearance: none; margin-left: 0; width: 0;}

    .user-box {}
    .user-box .user-info {display: flex; font-size: 150% !important; justify-content: flex-end;}
    .user-box .user-info + .user-info {margin-top: 3%;}
    .user-box .user-info input {width: 74.5% !important; border: 3px solid #dddede; font-size: 270% !important; height: auto; padding: 1.7% 0; text-align: center; line-height: 1; box-sizing: border-box; border-radius: 30px !important;}

    #page_landing_c .wrap_curd .user-info label {font-size: 275%; font-weight: 600; width: 38.1%; justify-content: center;}

    #page_landing_c .wrap_checkbox .agBox {justify-content: center;}
    .description {text-align: center;}
    .description #target {margin: 1% 0;}
    .description p {font-size: 175% !important; font-weight: 700;}

    #page_landing_c main img.t_img {width: 88.22%; margin: 0 auto 3.35%;}

    .first {display: block; width: 88.22%; margin: 0 auto 4.65%;}
    /* .first img {} */

    #page-2 {display: none;}
    #page-2 .question_group {background-color: #f5f8ff; padding: 6.96% 10% 4.45%;}
    #page-2 .question_group .q_select {display: flex; flex-direction: row; justify-content: space-between; width: 100%; margin: 5.1% 0 7.16%;}
    #page-2 .question_group .img-area {height: 5%; width: auto;}
    #page-2 .question_group .q_01_img {max-width: 66.1%; margin: 0 auto;}
    #page-2 .question_group .q_02_img {max-width: 67.3%; margin: 0 auto;}
    #page-2 .question_group .q_03_img {max-width: 73.17%; margin: 0 auto;}
    #page-2 .question_group .q_04_img {max-width: 79.2%; margin: 0 auto;}
    #page-2 .question_group .q_05_img {max-width: 92.42%; margin: 0 auto;}
    #page-2 .question_group .img-area img {margin: 0 auto;}
    #page-2 .question_group .q_select input {height: 13vh; width: 100%; font-size: 270%; margin-left: 0;}
    #page_landing_c .wrap_curd #page-2 label {justify-content: space-evenly;}
    #page_landing_c .wrap_curd #page-2 label + label {margin-left: 1%;}

@media screen and (max-width: 820px){
    .question_box .question img {max-width: 90%;}
}
@media screen and (max-width: 768px){
    .select-box {padding-bottom: 24px;}
    .user-box {padding: 35px 33px 8px 23px;}

    #page_landing_c .wrap_curd .user-info label {font-size: 125%; width: 28.1%;}
    .user-box .user-info input {font-size: 125% !important; padding: 1.5% 0 !important; border-radius: 15px !important;}

    .description p {font-size: 95% !important;}

    .subscribe {padding: 2% 2%; height: 150px;}
    .subscribe .content {padding: 0.5rem 0.7rem;}
    .subscribe .content > div {margin-right: 0; font-size: 0.8rem;}
    .subscribe .content > div.phone {width: 30%;}
    .subscribe_container {padding: 0 1.5rem 1rem 1.5rem;}
    .subscribe .content .name {width: 10%;}
    
    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
    #page_landing_c .wrap_curd .subscribe_container .title {padding: 2rem 0 0; font-size: 1.8rem; margin-bottom: 0.6875rem;}

    #page-2 .question_group .q_select input {height: 6.5vh; font-size: 150%; padding: 0 10px;}
}

@media screen and (max-width: 500px){
    .form-group, .form .submit{width: 90%;}

    .ad_txt, #target {font-size: 90% !important;}
}
@media screen and (max-width: 395px){
    .subscribe .content {padding: 0.5rem 0.2rem;}

}
@media screen and (max-width: 375px){
    .subscribe {padding: 0;}
}
</style>
<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div class="wrap_form">
            <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                
                <section class="page" id="page-1">
                    <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg" alt="landing_top" class="landing_top">
                    <img class="t_img" src="//static.savemkt.com/event/v_${eventSeq}/t_off_01.png" alt="landing_top" class="landing_top">
                    <img class="t_img" src="//static.savemkt.com/event/v_${eventSeq}/t_off_02.png" alt="landing_top" class="landing_top">
                    
                    <div class="question_box">
                        <div class="question">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png" />
                        </div>
                        <div class="select-box">
                            <div class="img-area">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/head_00.png">
                            </div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" value="이마/헤어라인"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_01.png"></label>
                                <label><input type="radio" name="tadd1" value="정수리/가르마"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_02.png"></label>
                                <label><input type="radio" name="tadd1" value="옆/뒷머리"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_03.png"></label>
                                <label><input type="radio" name="tadd1" value="여러 부위"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_04.png"></label>
                            </div>
                        </div>
                    </div>
                    <button type="button" disabled onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/next_off_btn.png"></button>
                </section>

                <section class="page" id="page-2">
                    <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg" alt="landing_top" class="landing_top">
                    <div class="question_group">
                        <div class="question_box">
                            <div class="img-area q_01_img">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png">
                            </div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd2" value="남성"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_05.png"></label>
                                <label><input type="radio" name="tadd2" value="여성"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_06.png"></label>
                            </div>
                        </div>
                        <div class="question_box">
                            <div class="img-area q_02_img">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/q_02.png">
                            </div>
                            <div class="q_select">
                                <input type="text" name="name" id="name" class="inp" required placeholder=""  autocomplete="off" >
                            </div>
                        </div>
                        <div class="question_box">
                            <div class="img-area q_03_img">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/q_03.png">
                            </div>
                            <div class="q_select">
                                <input type="tel" placeholder="" id="phone" name="phone" maxlength="11" value="010">
                            </div>
                        </div>
                        <div class="question_box">
                            <div class="img-area q_04_img">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/q_04.png">
                            </div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd3" value="고밀도 모발이식"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_07.png"></label>
                                <label><input type="radio" name="tadd3" value="디자인 헤어라인"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_08.png"></label>
                            </div>
                        </div>
                        <div class="question_box">
                            <div class="img-area q_05_img">
                                <img src="//static.savemkt.com/event/v_${eventSeq}/q_05.png">
                            </div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd4" value="10시~12시"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_09.png"></label>
                                <label><input type="radio" name="tadd4" value="13시~15시"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_10.png"></label>
                                <label><input type="radio" name="tadd4" value="15시~16시"><img src="//static.savemkt.com/event/v_${eventSeq}/select_off_11.png"></label>
                            </div>
                        </div>
                        <div class="wrap_checkbox">
                            <div class="agBox">
                                <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용동의</span></label> <label id="agree" class="btn-agreement">[자세히 보기]</label>
                            </div>
                        </div>                        
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" disabled class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png"></div>
                        <div class="description">
                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를<br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                            <span id="target">대상 :  ${resVo.target}</span>
                            <p id="event-period"></p>
                        </div>
                    </div>

                    <div class="subscribe_container">
                        <div class="title">
                            실시간 신청현황
                        </div>
                        <div class="subscribe_bg">
                            <div class="subscribe" data-limit="10">
                            </div>
                        </div>
                    </div>

                    <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>
                </section>

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
            
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                    
                </p>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        
        moandblessAgreement();
        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

    let isOn = false;
    setInterval(() => {
        $('.t_img').each(function () {
        const $img = $(this);
        const src = $img.attr('src');

        if (isOn) {
            $img.attr('src', src.replace('t_on_', 't_off_'));
        } else {
            $img.attr('src', src.replace('t_off_', 't_on_'));
        }
        });

        isOn = !isOn;
    }, 1000)

    function show2pg() {
      $('#page-1').hide();
      $('#page-2').show();
    }

    const $submit = $('.btn_submit');

    function checkRequiredRadios() {
        const isTadd2 = $('input[name="tadd2"]:checked').length > 0;
        const isName = $('input#name').val().trim().length >= 2;
        const isPhoneNum = $('input#phone').val().length === 11;
        const isTadd3 = $('input[name="tadd3"]:checked').length > 0;
        const isTadd4 = $('input[name="tadd4"]:checked').length > 0;

        if (isTadd2 && isName && isPhoneNum && isTadd3 && isTadd4) {
        $submit.prop('disabled', false);
        } else {
        $submit.prop('disabled', true);
        }
    }

    // 라디오 변경 감지
    $('input').on('change keyup', checkRequiredRadios);

    //설문 클릭시 이미지 on/off
    $('input[name*="tadd"]').on('click', function(){
        $('label', $(this).parents('.q_select')).each(function(i,t) {
            $('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
        });
        $('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
    });

    $('input[name="tadd1"]').on('change', function () {
        const $label = $(this).closest('label');
        const index = $label.index() + 1; // 1부터 시작

        
        const imgNum = String(index).padStart(2, '0'); // 01, 02, 03...
        const imgSrc = '//static.savemkt.com/event/v_${eventSeq}' + '/head_'+ imgNum +'.png';

        $('.select-box .img-area img').attr('src', imgSrc);
        $('.first img').attr('src', '//static.savemkt.com/event/v_${eventSeq}/next_on_btn.png');
        $('.first').prop('disabled', false)
    });

    let dataNum;

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
            
            for(v in resultData) {
                var data = resultData;
                var reg = (data[v].regDate || '').trim();      // "08-21 09:59"
                var parts = reg.split(/\s+/);                   // ["08-21", "09:59"]
                var md = parts[0] || "";                        // "08-21"
                var tm = parts[1] || "";   
				var statusText = Math.random() < 0.5 ? '접수중' : '신청완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
				var backgroundClass = statusText === '신청완료' ? 'color-bg' : ''; // '접수완료'일 경우에만 클래스 추가
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +'</div>';
					html += '	<div class="phone">'+ data[v].phone +'</div>';
					html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
					html += '  <div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				$(obj).append(html);
			}
            
		});
        
        if(resultData.length >= 10){
            $('.subscribe_container').show();
            return;
        } else {
            $('.subscribe_container').hide();
            return;
        }
	}

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);
	
	var modal2 = document.getElementById("modal2");
	var agree = document.getElementById("agree");
	var close2 = document.getElementById("close");

	agree.onclick = function () {
	    modal2.style.display = "block";
	}

	close2.onclick = function () {
	    modal2.style.display = "none";
	}
	
    document.addEventListener('DOMContentLoaded', function () {
        const phoneInputs = document.getElementsByName('phone');

        // 페이지 로드 시 기본값 설정
        phoneInputs.forEach(phone => {
            phone.value = '010';
        });

        // 입력값이 사라지거나 010이 아니면 다시 '010' 넣기
        phoneInputs.forEach(phone => {
            phone.addEventListener('input', function () {
                if (!this.value.startsWith('010')) {
                    this.value = '010';
                }
            });
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
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

        let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

        let selectedRadio3 = procForm.querySelector('input[name="tadd3"]:checked');
		if (!selectedRadio3) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		}

        let selectedRadio4 = procForm.querySelector('input[name="tadd4"]:checked');
		if (!selectedRadio4) {
			alert("설문을 선택해주세요.");
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
		
		// 필수값 체크 항목
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