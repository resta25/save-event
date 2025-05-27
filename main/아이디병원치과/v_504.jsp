<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.relative{position: relative;}
.bg_wh{background-color: #fff;}
.bg_main{padding: 5% 0 0; background-color: #e5f1ff;}
.bg_note{margin: 0 auto; padding: 8% 2.6%; width: 90%; border-radius: 1em; background-color: #212121; box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;}

.note_container{padding: 11% 0 4%;}

/* 라벨 */
.label_box{display: flex; justify-content: center; align-items: center; letter-spacing: -1px;}
.label_box .label_txt{padding: 0.2em 1em; width: auto; text-align: center; border-radius: 0.2em; font-size: 32px; font-weight: bold; color: #fff; background-color: #0552c1;}

.clip_img{position: absolute; top: 1.5%; left: 50%; transform: translateX(-50%); width: 43%;}

.question_container_img {position: relative; padding: 5% 0 0; overflow: hidden;}
.question_container_img img{width: 100%;}
.question_container_img .question_box .q_select {display: flex; flex-flow: row wrap; align-items: center; justify-content: space-around; padding: 0 10%; margin-top: 3%;}
.question_container_img .question_box .q_select label{width: 35%;}
.question_container_img .question_box .q_select label:nth-child(odd) {margin-bottom: 2%;}
.monitor{margin: 0 auto; width: 43%;} /* 셀렉 시 변경되는 이미지 */

/* db단 배경 */
.form .formContents .formContents-bg{box-sizing: border-box; background-color: #ffffff;}
.form .formContents .formContents-bg .formContents-box{padding: 3% 0 5%;}

/* description */
.form .formContents .description.top{width: 90%; margin: 2% auto; padding: 2%; background-color: #e6e6e6; box-sizing: border-box; border-radius: 0.5em; color: #fff; word-break: keep-all;}
.form .formContents .description.top > p{color: #003684; font-size: 110%; font-weight: bold; text-align: left;}
.form .formContents .description.top .ad_txt{font-size: 100%; word-break: keep-all; text-align: left; color: #000000;}

/* 구분선 */
.form .formContents .line{width: 90%; margin: 4% auto 2%;}

/* db단 */
.form .inp {font-size: 120%;}
.form .formContents .table_box{padding: 0; width: 84%; display: flex; align-items: center; background:#f4f4f4; border-radius: 10px; padding: 3.5%;}
.form .formContents .table_box.top {margin-right: 2%;}
.form .formContents .table_box span {width: 21%; font-size: 120%;}
.form .formContents .table_top {display: flex; width: 91%; margin: 0 auto; padding: 2%;}

/* cta 버튼 */
.form .formContents .submit{width: 90%; margin: 0 auto;}
.form .formContents .submit input[type='image']{width: 100%;}

/* 개인정보 동의 체크박스 */
.form .agBox{ width: 100%; padding: 2% 0 0;}
.form .agBox input[type="checkbox"]:checked + span:after{border-color: #0234bb;}
.form .agBox .agree_txt{color: #0234bb;}

/* 이름 출력 */
.txtPrintBox{width: 90%; margin: 3% auto 2%; position:relative; text-align:center;}
.txtPrintBox #result{position:absolute; left:3.3%; bottom:30%; width:24%; overflow:hidden; text-align:center; font-size:150%; font-weight:600;}
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
    .label_box .label_txt{font-size: 4.7vw;} /* 라벨 */
    .label_box.top .label_txt{font-size: 4.9vw;} /* 라벨 */
    .form .formContents .table_box.top table tr:last-child td .inp{font-size: 110%;}
    .cursor_box::after{height: 20px;} /* 커서 */
    .txtPrintBox #result{bottom: 24%; font-size:110%;} /* 이름 출력 */
	.agreeModalBox {padding: 12% 4% 5%; width: 95%;} /* 모달창 */

    .form .formContents .table_box span {font-size:90%;}
	.formGroup {margin-bottom: 3%;}
	.form .agBox {font-size: 67%;}
    .form .formContents .description.top > p { font-size: 100%;}
    .form .formContents .formContents-bg {padding: 0;}
    .form .formContents .table_box span {width: 25%;}
}

@media screen and (max-width: 415px){
    .cursor_box::after{width: 1px; height: 14px;} /* 커서 */
    .form .formContents .description.top > p { font-size: 75%;}
    .form .formContents .description.top .ad_txt { font-size: 69%;}
    .form .agBox {font-size: 75%;}
}

@media screen and (max-width: 375px){
}
</style>

<!-- // PUSH_ALARM -->
<script src="//static.resta.co.kr/libs/pushAlarm/pushAlarm.js"></script>
<link rel="stylesheet" href="//static.resta.co.kr/libs/pushAlarm/pushAlarm.css">
<!-- PUSH_ALARM // -->

<!------------------------- 푸터 없는 랜딩입니다!! 복사시 주의!! ------------------------->
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
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
    </div>
    
    <div class="bg_main">
        <div class="bg_note relative">
            <div class="img-area clip_img"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
            <div class="note_container bg_wh">
                <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"></div>
    
                <div class="form">
                    <form id="form-1" method="POST" accept-charset="utf-8"> 
    
                    <div class="label_box top"><span class="label_txt">현재 고민은?</span></div>
            
                    <div class="question_container_img">
                        <div class="monitor"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_00.png"></div>
                        <div class="question_box">
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" value="색상문제치아"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_01_off.png"></label>
                                <label><input type="radio" name="tadd1" value="삐뚠치아"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_02_off.png"></label>
                                <label><input type="radio" name="tadd1" value="틈있는치아"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_03_off.png"></label>
                                <label><input type="radio" name="tadd1" value="돌출, 덧니"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_04_off.png"></label>
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
                                    <img class="namePrint" src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.png">
                                    <script>$('input[name="name"]').bind('keyup', function() {$('#result').text(this.value);})</script>
                                </div>
                                <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png" /></div>
                                <div class="description">
                                    <span>대상 : ${resVo.target} </span>
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
                </div>
            </div>
        </div>
    </div>

	<div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
		<!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div> -->
    </div>
	<div class="push"></div>
	<div class="subscribe" data-limit="10"></div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

	$(document).ready(function(){
	       //드레그, 우클릭 방지
	       blockSourceView()

		getComment('504');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('504');
		});
	   })

	function returnComment(resultData, meoreData){
		var today = new Date();   
			var month = today.getMonth() + 1;
			var dateNum;
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

    // 설문이미지 Click bind
	$('[name*="tadd"]').bind('click', function() {
		$('label', $(this).parents('.q_select')).each(function(i,t) {
			$('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
		});
		$('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
		$('.monitor').children('img').attr('src', '//static.resta.co.kr/event/v_${eventSeq}/img_0'+(Number($(this).parents('label').index())+1)+'.gif');
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