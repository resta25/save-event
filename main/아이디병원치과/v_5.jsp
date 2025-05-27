<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.container.padding_gradient{width: 88%; padding: 6%; background: linear-gradient(0deg, #2ca4e0, #55b6e6);}

.question_container{padding: 5% 5% 1%; background-color: #d4ebfb;}
.form .question_box{padding: 5% 0; text-align:center; border-radius: 1em; background-color: #fff;}
.form .question_box:first-child{margin-bottom: 5%;}
.form .question_box img{width:100%;}
.form .question_box .question{margin: 0 auto 3%; width: 88%;}
.form .question_box .q_select{margin:10px auto 0;}
.form .question_box .q_select label{padding:0 1.5%; font-size:27px;}

/* db단 배경 */
.form .formContents .formContents-bg{padding: 5%; box-sizing: border-box; background-color: #d4ebfc;}
.form .formContents .formContents-bg .formContents-box{padding: 3% 0 5%; background-color: #ffffff; border: 1px solid #9ec3dc;}

/* description */
.form .formContents .description.top{width: 90%; margin: 2% auto; padding: 2%; background-color: #e9f2f9; box-sizing: border-box; border-radius: 0.5em; color: #fff; word-break: keep-all;}
.form .formContents .description.top > p{color: #000000; font-size: 110%; font-weight: bold; text-align: left;}
.form .formContents .description.top .ad_txt{font-size: 100%; word-break: keep-all; text-align: left; color: #000000;}

/* 구분선 */
.form .formContents .line{margin: 4% 0 2%;}

/* db단 */

.form .inp {font-size: 120%;}
.form .formContents .table_box{padding: 0; width: 84%; display: flex; align-items: center; background:#f1f1f1; border-radius: 10px; padding: 3.5%;}
.form .formContents .table_box.top {margin-right: 2%;}
.form .formContents .table_box span {width: 21%; font-size: 120%;}
.form .formContents .table_top {display: flex; width: 91%; margin: 0 auto; padding: 2%;}

/* cta 버튼 */
.form .formContents .submit{width: 90%; margin: 0 auto;}
.form .formContents .submit input[type='image']{width: 100%;}

/* 개인정보 동의 체크박스 */
.form .agBox{ width: 100%; padding: 2% 0 0;}
.form .agBox input[type="checkbox"]:checked + span:after{border-color: #3026f8;}
.form .agBox .agree_txt{color: #3026f8;}

/* 이름 출력 */
.txtPrintBox{width: 90%; margin: 3% auto 2%; position:relative; text-align:center;}
.txtPrintBox #result{position:absolute; left:3.5%; bottom:31%; width:22%; overflow:hidden; text-align:center; font-size:150%; font-weight:600;}
.txtPrintBox .namePrint{width:100%;}

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
.subscribe {display:none;}
@media screen and (max-width: 500px){
	.form .formContents .table_box.top table tr:last-child td .inp{font-size: 110%;}
	.form .question_box .q_select label{font-size:3.5vw;}

    .txtPrintBox #result{bottom: 30%; font-size:110%;} /* 이름 출력 */
	.agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */

	.form .formContents .table_box span {font-size:90%;}
	.formGroup {margin-bottom: 3%;}
	.form .agBox {font-size: 67%;}
	.form .formContents .description.top > p {font-size: 100%;}
}

@media screen and (max-width: 415px){
	.form .agBox {font-size: 79%;}
	.form .formContents .description.top > p {font-size: 81%;}
	.form .formContents .description.top .ad_txt {font-size: 86%;}
}
@media screen and (max-width: 375px){
}
</style>

<!-- //INCLUDES -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!-- INCLUDES// -->

<!-- // PUSH_ALARM -->
<script src="//static.resta.co.kr/libs/pushAlarm/pushAlarm.js"></script>
<link rel="stylesheet" href="//static.resta.co.kr/libs/pushAlarm/pushAlarm.css">
<!-- PUSH_ALARM // -->

<!-- 개인정보처리방침 모달창 -->
<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
		<!-- <?php $privacy_url = $this->landing['homepage_url']?$this->landing['homepage_url']:$this->landing['agreement_url'];?> -->
        <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" target="_blank">개인정보처리방침 확인하러가기</a></div>
		<h3>개인정보 수집 및 이용 동의</h3>
		<ol>
            <li>개인정보 수집주체 : ${resVo.agent}</li>
            <li>개인정보 수집항목 : ${resVo.objectItems}</li>
            <li>개인정보 수집 및 이용목적 : ${resVo.agent}에서 ${resVo.objectName} 상담활용(전화,문자)</li>
            <li>개인정보 보유 및 이용기간 : 수집일로부터 6개월 (고객 동의 철회시 지체없이 파기)</li>
            <li class="desc">*상기 동의를 거부할 권리가 있으나, 수집 및 이용에 동의하지 않을 경우 ${resVo.objectName} 상담 및 이벤트 참여가 불가능합니다.</li>
        </ol>
	</div>	
</div>
<div id="wrap"> 
    <div class="container padding_gradient">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png"></div>
        <video id="location" playsinline muted loop src="//static.resta.co.kr/event/v_${eventSeq}/231110.mp4" type="video/mp4"></video>
        <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.gif"></div>
	</div>

    <div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8">

        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>

        <div class="question_container">
            <div class="question_box">
                <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                <div class="q_select">
                    <label><input type="radio" name="tadd1" value="벌어진 이"><span>벌어진 이</span></label>
                    <label><input type="radio" name="tadd1" value="토끼or덧니"><span>토끼or덧니</span></label>
                    <label><input type="radio" name="tadd1" value="돌출입"><span>돌출입</span></label>
                    <label><input type="radio" name="tadd1" value="그 외"><span>그 외</span></label>
                </div>
            </div>
        </div>

		<div class="formContents">
			<div class="formContents-bg">
				<div class="formContents-box">
					<div class="description top">
						<p id="event-period"></p>
						<div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
					</div>
					<div class="img-area line"><img src="//static.resta.co.kr/event/v_${eventSeq}/line_01.png"></div>
					<div class="formGroup">
						<div class="table_top">
							<div class="table_box top">
								<span>이름</span>
								<input type="text" name="name" id="name" class="inp" required autocomplete="off"/>
							</div>
							<div class="table_box middle">
								<span>나이</span>
								<input type="tel" name="age" id="age" class="inp" autocomplete="off" maxlength="2" />
							</div>
						</div>
						<div class="table_box bottom">
							<span>전화번호</span>
							<input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11"/>
						</div>
					</div>
					<div class="agBox">
						<label><input name="agBox" type="checkbox"><span>개인정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="javascript:void(0);" class="agree_txt">[자세히 보기]</a>
					</div>
					<!-- 이름 출력 -->
					<div class="txtPrintBox">
						<div id='result'></div>
						<img class="namePrint" src="//static.resta.co.kr/event/v_${eventSeq}/event_main_06.png">
						<script>$('input[name="name"]').bind('keyup', function() {$('#result').text(this.value);})</script>
					</div>
					<div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
					<div class="description">
						<span>대상 : ${resVo.target}</span>
					</div>
				</div>
			</div>
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
		<div class="push"></div>
		<div class="subscribe" data-limit="10"></div>
	</div>
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.jpg"></div>
		<!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div> -->
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

    $(document).ready(function(){
        //드레그, 우클릭 방지
        blockSourceView()

		getComment('5');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('5');
		});
    })

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			for(v in resultData) {
				$('.push').append('<div class="pushAlarm animate__animated">지금 <span class="highlight">' + data[v].name + '님이</span> 비용을 알아보셨습니다.</div>');
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +' | '+ data[v].phone +'</div>';
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				
				$(obj).append(html);
			}
			$('.pushAlarm').pushAlarm({
				speed : 3000,
				animate_speed : 0.2,
				animate : 'animate__zoomIn',
				highlight : '#00ffff'
			});
		});
	}

	// 개인정보처리방침 팝업 관련
	$('.agree_txt').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
        $('.overlay').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
        $('.overlay').fadeOut();
    });

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
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>