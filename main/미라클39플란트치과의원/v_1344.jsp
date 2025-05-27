<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#wrap{position: relative; background: linear-gradient(90deg, rgba(254,254,254,1) 0%, rgba(227,227,227,1) 100%); }
.page:not(#page-1){display: none;}

.television{padding:2% 10% 1%;}
.television .screen{width: 100%;}

.form {width: 90%; margin: 0 auto; background: none; padding: 5% 0;}
.form .formContents {padding:5% 0 10%;}

/* 이름, 연락처 */
.form .formGroup .user_info {margin: 5% 0;}
.form .formGroup .user_info input {background: #d9d9d9 !important; padding: 5%; border: 1px solid #aaaaaa ; border-radius: 0.5em; font-size: 150%; text-align: center;}
.form .formGroup .user_info input::placeholder {color: #181818;}
.form .formGroup .user_info .user_name {margin-bottom: 3%;}

.form .submit input[type="image"]{width: 100%;}

.form .question_box{text-align: center;}
.form  .question {padding: 0 10%;}
.form .question_box .question img{width: 100%; padding-bottom:5%;}
.form .question_box .q_select label{width: 49%; padding-bottom: 1%; cursor: pointer;}
.form .question_box .q_select label img{width: 100%;}

/* 개인정보처리방침 약관 */
.agBox{margin-top:4%; font-size: 100%; text-align: center;}
.agBox_bg {background: rgba(0, 0, 0, 0.5); height: 100%; position: fixed; top: 0; left: 50%; transform: translateX(-50%); width: 100%; display: none; z-index: 1;}
.agBox_box { margin: 0 auto; background-color: #fff; border-radius: 2.5em; padding: 5%; position: absolute; top: 25%; left: 50%; transform: translateX(-50%); display: none; z-index: 9; padding: 5%;}
.paging{padding:3% 5% 0; margin: 0 auto; display: flex; justify-content: space-between;}
.paging{display: flex; justify-content: space-between;}
.paging label {width:49%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.paging label img{width:100%;}
input[type="radio"] {
    border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
}


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

/* 이벤트 기간, 대상 */
.form .description {margin-top: 5%;}

/* 하단 고지문구 */
.container {width: 40%; margin:0 auto; padding-bottom: 5%; }

/* 첫페이지 팝업 */
.pop_up {position: absolute; top: 26%; left: 50%; transform: translateX(-50%); width: 100%; z-index: 999; display: none;}
.pop_up .img-area {width: 80%; margin: 0 auto;}
.pop_up .img-area img {width: 100%;}
.button {position: absolute; bottom: 20%; left: 50%; transform: translateX(-50%); display: flex; gap: 2%; cursor: pointer;}
.popup_02 .button {bottom: 13%;}

@media screen and (max-width: 500px){
    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
    .form .formContents .description{font-size:90%; letter-spacing: -1px;}
    .agBox_box {width: 80%;}
}

@media screen and (max-width: 415px){
}

@media screen and (max-width: 375px){
}
</style>
<!-- 개인정보처리방침 모달창 -->
<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
        <!--<?php $privacy_url = $this->landing['homepage_url']?$this->landing['homepage_url']:$this->landing['agreement_url'];?>-->
        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" target="_blank">개인정보처리방침 확인하러가기</a></div>
		<h3>개인정보 수집 및 이용 동의</h3>
		<ol>
			<li>개인정보 수집주체 : ${resVo.agent}</li>
			<li>개인정보 수집항목 : ${resVo.objectItems}</li>
			<li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(문자)</li>
			<li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
        </ol>
	</div>	
</div>
<!-- 개인정보처리방침 동의/ 미동의 팝업창 -->
<div class="agBox_bg"></div>
<div class="agBox_box">
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_02.png"></div>
    <div class="agBox">
        <a href="#" class="agree_txt">개인정보 처리방침 [자세히 보기]</a>
    </div>            
    <p class="paging">
        <label><input type="radio" class="first" name="agBox"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></label>
        <label><input type="radio" class="close" name="agBox"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></label>
    </p>
</div>

<div id="wrap"> 
    <audio id="location" playsinline><source src="//static.resta.co.kr/event/v_${eventSeq}/audio_01.mp3" type="audio/mp3"></source></audio> 
    
    <div class="pop_up popup_01">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.png"></div>
        <div class="button">
            <div class="img-area yes"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png"></div>
            <div class="img-area no"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_04.png"></div>
        </div>
    </div>
    <div class="pop_up popup_02">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.png"></div>
        <div class="button">
            <div class="img-area yes2"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_03.png"></div>
        </div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 

        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_01.png"></div>
        <div class="img-area" style="margin: 5% auto 0; width: 60%;"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
        <div class="img-area" style="margin-top: 5%;"><img src="//static.resta.co.kr/event/v_${eventSeq}/line_01.png"></div>
		<div class="formContents">
            <section class="page" id="page-1">             
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>	
					<div class="q_select">
						<label><input type="radio" name="tadd1" value="비용문의"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
						<label><input type="radio" name="tadd1" value="실시간 예약"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
						<label><input type="radio" name="tadd1" value="위치 문의"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
						<label><input type="radio" name="tadd1" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
					</div>
				</div>
			</section>

			<section class="page" id="page-2">
                <div class="img-area question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_02.png"></div>		
                <div class="television">                    
                    <div class="screen">
                        <div class="formGroup">
                            <div class="user_info">
                                <div class="user_name">
                                    <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="성함을 입력해주세요."/>
                                </div>
                                <div class="user_phone">
                                    <input type="tel" name="phone" id="phone" value="" class="inp" required autocomplete="off" maxlength="11" placeholder="연락처를 입력해주세요."/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="submit"><input type="image" onclick="fnForm('form-1')" class="btn_submit" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
                </div>
			
                <div class="description">
                    <p id="event-period"></p>
					<div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    <span>대상 :  ${resVo.target} </span>
				</div>
			</section>
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
        <!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>	 -->
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.png"></div>	
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function () {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
	});
	
    //첫페이지 팝업
    $(document).ready(function(){
        setTimeout(function(){
            $('.overlay').fadeIn()
            $('.popup_01').fadeIn()
        },500)
    })

    $('.no').on('click',function(){
        $('.popup_01').fadeOut()
        $('.popup_02').fadeIn()
    })

    $('.yes').on('click',function(){
        $('.overlay').fadeOut()
        $('.popup_01').fadeOut()
    })

    $('.yes2').on('click',function(){
        $('.popup_02').fadeOut()
        $('.popup_01').fadeIn()
    })

    //첫페이지 클릭시 음성재생
    $('#wrap').on('click',function(){
        var page_num = $('.page:visible').index() + 1;
        if(page_num == 1 && !$('.popup_01').is(':visible')){
            setTimeout(function(){ $('#location').trigger('play'); },300);
        }
    })

    //설문 클릭 on/off
    $('input[name*=tadd]').bind('click', function(){
		$('label', $(this).parents('.q_select')).each(function(i,t) {
			$('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
		});
		$('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
	});

    //설문 클릭시 동의팝업 음성재생
    $('input[name=tadd1]').bind('click', function(){
        $('.agBox_bg').fadeIn()
        $('.agBox_box').fadeIn()
        setTimeout(function(){ $('#location').trigger('play'); },300);
        $('#location').attr('src', `//static.resta.co.kr/event/v_${eventSeq}/audio_02.mp3`);
    })

	// 설문 Click bind
	$('.first').bind('click', function(){	
        var page_num = $('.page:visible').index() + 1;
        var $section = $('#page-'+page_num).closest('section');

        setTimeout(function() {
            $('.agBox_bg').hide()
            $('.agBox_box').hide()
            $section.hide();
            $section.next().show();
            setTimeout(function(){ $('#location').trigger('play'); },300);
            $('#location').attr('src', `//static.resta.co.kr/event/v_${eventSeq}/audio_03.mp3`);
        }, 300); 
	});

    //미동의 클릭시 안내
    $('.close').click(function(){
        alert('미동의 시 설문에 참여하실 수 없습니다.')
    })

    // 개인정보 처리방침 모달창
    $('.agree_txt').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });

    // 개인정보처리방침 닫기 버튼 클릭 시 클로징
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
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
			//,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>