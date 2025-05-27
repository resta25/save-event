<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
/* 비디오 영역 */
.video_01 {position: absolute; top: 7%; left: 50%; transform: translateX(-50%); width: 80%;}

/* 슬라이드 영역 */
.slide_container {position: relative;}
.mySwiper {width: 95%; position: absolute !important; top: 20%; left: 50%; transform: translateX(-50%);}
.swiper-slide {text-align: center;}
.swiper-slide img {width: 80%;}
.swiper-button-next:after,
.swiper-button-prev:after {color: #644b2b;}

/* form inner 영역 */
.form {position: relative;}
.form_inner {position: absolute; top: 3%; left: 50%; transform: translateX(-50%); width: 85%;}

/* 이름, 나이, 연락처 입력칸 */
.formGroup {}
.formGroup .user_info {display: flex; flex-flow: column; background: #fff; border-radius: 0.5rem;}
.formGroup .user_info:not(:last-child) {margin-bottom: 3%;}
.formGroup .user_info .legend {padding: 2%; font-weight: 700; font-size: 110%;}
.formGroup .user_info input {padding: 2%; padding-top: 0; font-size: 110%;}

/* 개인정보처리방침 영역 */
.form .agBox {margin: 3% auto;}

/* 비용 결과 영역 */
.result_container {position: relative; margin: 3% 0;}
#result {font-size: 150%; position: absolute; bottom: 38%; left: 10%;}

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description {margin-bottom: 5%;}
.form .description p {}
.form .description .ad_txt {}
.form .description span {}

/* 실시간 신청 현황 */
.subscribe {height: 220px; overflow: hidden; padding: 2% 5%; background: none;}
.subscribe_bg {background-color:#1c1c34 ;}
.subscribe .content {padding: 0; display: flex; align-items: center; margin: 1% 0; justify-content: flex-start; border-bottom: none;}
.subscribe .content > div {font-weight: 600; font-size: 100%;}
.subscribe .content .date {width: 20%;}
.subscribe .content .name {margin-right: 3%; display: flex; align-items: center; width: 60%;}
.subscribe .content .text.yellow-bg {width: 20%;}
.subscribe .content .name::after { display: inline-block; width: 2px; height: 30px; content: ''; background-color: #c43047; margin-left: 50px; }
.subscribe .content > div:last-child {margin-right: 0;}
/* .subscribe .content:last-child {font-size: 100%;} */
.subscribe .content .text { text-align: center; width: 10%;}
.yellow-bg { background-color: #c43047; font-weight: 700; color: #fff; }
.subscribe .btn_moreSubscribe {display:none;}

/* 플로팅 이미지 영역 */
.floatingImg{z-index:999; position:absolute; top:350px; margin-left:2%; width:30%; max-width:215px; cursor: pointer; animation: upDown 1s infinite;}

@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}

@media screen and (max-width: 640px){
    .subscribe .content div {font-size: 110%;}
}

@media screen and (max-width: 500px){
    .subscribe {height: 150px;}
    .subscribe .content div {font-size: 100%;}
    .subscribe .content .date {width: 15%;}
    .subscribe .content .name {width: 65%;}
    .subscribe .content .name::after {margin-left: 10px; height: 20px;}

    .form .submit input[type="image"] {width: 95%;}
    .form_inner {top: 5%;}
    .form .agBox {margin: 2% auto; font-size: 70%;}

    .floatingImg {top: 200px; width: 25%;}
    #result {font-size: 120%; left: 6%; bottom: 27%;}
    .formGroup .user_info .legend,
    .formGroup .user_info input {font-size: 90%;}
}

@media screen and (max-width: 480px){
    .subscribe .content div {font-size: 80%;}
}

@media screen and (max-width: 390px){
    .form .description {font-size: 85%;}
    .subscribe {height: 80px;}
    .subscribe .content div {font-size: 60%;}
    .subscribe .content .date {width: 15%;}
    .subscribe .content .name {width: 65%;}
    .subscribe .content .name::after {margin-left: 10px; height: 20px;}
}
</style>

<!-- include -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<div id="wrap"> 
    <div class="video_container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
        <video class="video_01" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
        <script>setTimeout(function(){ $('.video_01').trigger('play') }, 500);</script>
    </div>

    <a href="javascript:void(0);"><img class="floatingImg" src="//static.resta.co.kr/event/v_${eventSeq}/floating_01.png"></a>

    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.png"></div>
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.png"></div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.png"></div>

        <div class="form_inner">
			<div class="formGroup">
                <div class="description">
                    <p id="event-period"></p>
                    <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    <span>대상 : ${resVo.target}</span>
                </div>

                <div class="user_info user_name">
                    <span class="legend">이름</span>
                    <input type="text" name="name" id="name" class="inp" required  autocomplete="off" >
                </div>
                <div class="user_info user_age">
                    <span class="legend">나이</span>
                    <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" >
                </div>
                <div class="user_info user_phone">
                    <span class="legend">연락처</span>
                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11">
                </div>
			</div>

            <div class="agBox">
                <label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="javascript:void(0);" class="btn-agreement">[자세히 보기]</a>
            </div>
            <div class="agreement">
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
            <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>
            <div class="subscribe" data-limit="10"></div>
        </div>
        	<!-- Form 필수값 start -->
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
			<!-- Form 필수값 end -->
    </form>
	</div>

    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.png"></div>
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.png"></div>
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    /* 기간항목 start */
	initDate();
	/* 기간항목 end */

    // 신청 현황 리스트
    $(document).ready(function(){
        getComment('1352');
        //드레그, 우클릭 방지
        blockSourceView()
    })

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);
	
	function returnComment(resultData, meoreData){
			var today = new Date();   
				var month = today.getMonth() + 1;
				var dateNum;
			$('.subscribe').each(function(idx,obj) {
				var data = resultData;
				
				for(v in data) {
                   var statusText = '신청완료'
                   var backgroundClass = statusText === '신청완료' ? 'yellow-bg' : '';
                   var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					   html += '	<div class="date">'+ data[v].regDate +'</div>';
                       html += '	<div class="name">'+ data[v].name + '님이 프로모션 혜택을 받았어요' + '</div>';
                       // html += '	<div class="add1">'+ '희망부위 : ' + data[v].add1 +'</div>';
                       html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; 
                       html += '</div>';
                   $(obj).append(html);
               }
				if(meoreData > 10) {
					$(obj).append('<button type="button" class="btn_moreSubscribe">댓글 더보기 &raquo;</button>');	
				}
			});
		}

    // 슬라이드
    var swiper = new Swiper(".mySwiper", {
        loop:true,
        autoplay: {
			delay: 2000,
			disableOnInteraction: false,
		},
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });

    // 스크롤 시 따라오는 이미지
    var currentPosition = parseInt($(".floatingImg").css("top"));
    $(window).scroll(function() {
        var position = $(window).scrollTop(); 
        $(".floatingImg").stop().animate({
            top : position + currentPosition + "px"
        },500);
    });

    // 플로팅버튼 클릭시 db단 이동
    $('.floatingImg').on('click',function(){
        const formOffset = $('.form').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		// let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }
	
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