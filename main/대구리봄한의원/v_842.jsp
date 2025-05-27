<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
input{font-family: 'Noto Sans KR', sans-serif;}
button{margin: 0; padding: 0; background-color: transparent; border: none; cursor: pointer;}

#wrap{letter-spacing: -1px; font-family: 'Noto Sans KR', sans-serif;}
.page:not(#page-1){display: none;}

/* video */
.video-bg{position: relative;}
.video-bg video{width: 100%;}
.video-bg .txt_box{position: absolute; bottom: 5%; right: 3%; color: #fff; font-size: 80%;}

/* 개인정보처리방침 관련 */
.form .agBox{margin: 0 auto; padding: 5% 0 0; font-size: clamp(10px, 3vmin, 28px);}
.form .agBox .btn-agreement{text-decoration: underline;}

/* paging */
.paging{display: flex; justify-content: center; padding: 3% 15% 20vmin;}
.paging button img{width: 100%;}
/* 2페이지 개별 스타일 */
#page-2 .paging{padding: 10% 15% 20vmin;}

/* description */
.form .description{padding: 0 0 8vmin;}

/* 플로팅 db단 오버레이 */
.floating_overlay {display: none; z-index: 888; position: fixed; top: 0; left: 0; right: 0; bottom: 0; background-color: #000; opacity: 0.5;}
/* 플로팅 db단 페이지 */
.floating_box{display: none; position:fixed !important; bottom:0; width: 100%; max-width: 818px; max-height: 70vh; z-index: 888; background-color: transparent;}
.floating_box .formContents{padding: 10% 5% 0; background: url("//static.resta.co.kr/event/v_${eventSeq}/popup_01.png") no-repeat center / 100% 100%; 

border-radius: 2rem 2rem 0 0;}
.floating_box .formContents .txt_img{width: 60%; max-width: 347px; padding: 0 0 0 5%;}
.floating_box .formContents .btn_box button{position: absolute; top: 5%; right: 5%; width: 5%; max-width: 36px;}
.floating_box .formContents .btn_box button img{width: 100%;}

/* db단 */
.form-group {display: grid; gap: 10px; width: 70%; margin: 0 auto; padding: 8% 0;}
.form-group > .item {display: block; background: #fff; border: 1px solid #e2e2e2; border-radius: .5em; text-align: center;}
.form-group > .item:last-of-type{margin: 0;}
.form-group .inp{padding: 4% 3%; border: 0; text-align: center; font-size: clamp(12px, 5vmin, 1.3rem);}

/* cta 버튼 */
.form .submit{width: 70%; margin: 0 auto; padding: 0 0 5%;}
.form .submit input[type="image"]{width: 100%;}

/* 애니메이션 */
.animate__animated.animate__pulse{animation-iteration-count: infinite;}

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

@media screen and (max-width: 500px){
    .floating_box .formContents .txt_img{padding: 0;}
    .form-group, .form .submit{width: 90%;}
    .agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */
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
    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

        <section class="page" id="page-1">
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>	    	    
            <div class="video-bg">
                <video class="video_01" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
                <div class="txt_box"></div>
                <script>setTimeout(function(){ $('.video_01').trigger('play') }, 500);</script>
            </div>
            <div class="agBox">
                <input name="agBox" type="checkbox" checked>
                	<a href="javascript:void(0);" class="btn-agreement">개인정보 처리방침</a> 동의 후
                <br>혜택을 받으세요.
            </div>
            <div class="paging">
				<button type="button" class="next_btn" onclick="moveToNextPage()"><img class="animate__animated animate__pulse" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></button>
            </div>
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice_10.jpg"></div>
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer_11.jpg"></div>
        </section>

        <section class="page" id="page-2">
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>	    	    
            <div class="paging">
                <button type="button" class="open_btn" onclick="showFloatingBox()"><img class="animate__animated animate__pulse" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></button>
            </div>
            <div class="description">
                <b id="event-period"></b>
                <div class="ad_txt">안심하세요!  ${resVo.agent} 에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span>대상 :  ${resVo.target}</span>
            </div>
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice_10.jpg"></div>
            <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer_11.jpg"></div>
        </section>

        <!-- 하단 플로팅 db단 -->
        <div class="floating_overlay"></div>
		<section class="floating_box">
            <div class="formContents">
                <div class="img-area txt_img"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_01.png"></div>
                <!-- <div class="btn_box">
                    <button type="button" class="close_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/close.png"></button>
                </div> -->

                <div class="form-group">
                    <div class="item">
                        <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름">
                    </div>
                    <div class="item">
                        <input type="tel" name="age" id="age" value="" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                    </div>
                    <div class="item">
                        <input type="tel" name="phone" id="phone" value="" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처">
                    </div>
                </div>

                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></div>
            </div>
        </section>
        <!-- common input start-->
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
		<!-- common input end-->
        </form>
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

    /* 기간항목 start */
	initDate();
	/* 기간항목 end */

    $(document).ready(function(){
        //드레그, 우클릭 방지
        blockSourceView()
    })


    // 플로팅 DB박스 오픈 함수
    function showFloatingBox(){
        disableScroll();
        $('.floating_overlay').fadeIn();
        $('.floating_box').slideToggle();
    }
    // 플로팅 DB박스 클로징 함수
    function closeFloatingBox(){
        $(".floating_box").slideToggle();
        $('.floating_overlay').fadeOut();
        enableScroll();
    }
    // 플로팅 DB박스 닫기
    $(document).mouseup(function (e){
        if($('.floating_box').is(':visible')){
            if($(".floating_box").has(e.target).length === 0){
                closeFloatingBox();
            }
        }
    });

    // 페이지 이동 함수
    function moveToNextPage(){
        const currentPage = $('.page:visible');
        currentPage.hide();
        $('html, body').animate( { scrollTop : 0 }, 0 );
        currentPage.next().show();
        showFloatingBox();
    }
    $('.floating_box .close_btn').on('click', function(){
        closeFloatingBox();
    });

    // 스크롤 이동 제한 함수
    function disableScroll() {
        $('body').css({
            overflow: 'hidden',
            height: '100vh' // 모바일에서 추가적인 스크롤 방지
        });
    }
    // 스크롤 이동 제한 해제 함수
    function enableScroll() {
        $('body').css({
            overflow: '',
            height: ''
        });
    }

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });

	function setScreenSize() {
        let vh = window.innerHeight * 0.01;
        document.documentElement.style.setProperty('--vh', `${vh}px`);
    }
    setScreenSize();
    window.addEventListener('resize', setScreenSize);

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		

		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="agBox"]:checked');
		if (!selectedRadio1) {
			alert("개인정보 처리방침에 동의해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='agBox']").value = selectedRadio1.value;
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
			, 'age': '나이'
			,'phone': '전화번호'
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>