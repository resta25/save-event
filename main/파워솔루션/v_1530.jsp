<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<style>
#wrap {font-family: 'noto sans kr'; background: #fff; overflow: hidden;}

/* db영역 */
.form .db-box {background: #fff; padding: 5% 10%;}
.form .input_row {display: flex; align-items: center; background: #fff; margin-bottom: 2%;}
.form .input_row .title {width: 20%; font-size: 1.2rem;}
.form .input_row textarea,
.form .input_row input {font-size: 1.2rem; border: 1.5px solid #de0000; padding: 2%; border-radius: 0.5em;}

.form .agBox { margin: 2% auto;}
.form .submit input[type="image"] {width: 100%;}


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

/* 실시간 신청현황 */
.subscribe_box {background: #000; padding: 3% 5%;}
.subscribe_box .titleText {font-size: 2.4rem; font-weight: 700; text-align: center; color: #fff; margin-bottom: 2%;}


@media screen and (max-width: 430px) {
    .form .input_row {border-radius: 0.5rem;}
    .form .input_row .title {width: 30%;}
    .form .input_row .title, 
    .form .input_row input {font-size: 1rem;}
}

@media screen and (max-width: 395px) {
}

</style>
<!-- swiper -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!-- swiper -->

<div class="overlay"></div>
<div class="agreeModalBox">
	<div class="closeBtn">X</div>          
	<div class="newAgreement">
		<div class="button"><a href="<?=$this->landing['agreement_url']?>" target="_agreement" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;"  target="_blank">개인정보 처리방침</a></div>
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
    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 

            <div class="db-box">
                <div class="formGroup">
                    <div class="input_box">
                        <div class="input_row">
                            <div class="title">이름*</div>
                            <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름">
                        </div>
                        <div class="input_row">
                            <div class="title">나이*</div>
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                        </div>
                        <div class="input_row">
                            <div class="title">전화번호*</div>
                            <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-')없이 입력">
                        </div>
                        <div class="input_row">
                            <div class="title">문의사항</div>
                            <textarea name="tadd1" id="tadd1" class="inp" rows="5" autocomplete="off"></textarea>
                        </div>
                    </div>
                </div>
                <div class="agBox">
                    <label><input name="agBox" type="checkbox" checked><span>개인 정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="https://seye.kr/privacy.html" class="btn-agreement" target="_blank" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;" >[자세히 보기]</a>
                </div>
                <div class="submit">
                    <input type="image" onclick="fnForm('form-1')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png">
                </div>

                <div class="description">
                    <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                    <div class="ad_txt">안심하세요! 본페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    <span id="target">대상 : ${resVo.target}</span>
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
        </form>
    </div>

    <div class="img-area"> <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg"> </div>
    <div class="img-area"> <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"> </div>
    <div class="img-area"> <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.jpg"> </div>
    <div class="img-area"> <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_06.jpg"> </div>

    <div class="form">
        <form id="form-2" method="POST" accept-charset="utf-8"> 

            <div class="db-box">
                <div class="formGroup">
                    <div class="input_box">
                        <div class="input_row">
                            <div class="title">이름*</div>
                            <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="이름">
                        </div>
                        <div class="input_row">
                            <div class="title">나이*</div>
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이">
                        </div>
                        <div class="input_row">
                            <div class="title">전화번호*</div>
                            <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-')없이 입력">
                        </div>
                        <div class="input_row">
                            <div class="title">문의사항</div>
                            <textarea name="tadd1" id="tadd1" class="inp" rows="5" autocomplete="off"></textarea>
                        </div>
                    </div>
                </div>
                <div class="agBox">
                    <label><input name="agBox" type="checkbox" checked><span>개인 정보 수집 및 이용에 관한 내용을 확인하고 동의함</span></label> <a href="https://seye.kr/privacy.html" target="_blank" onclick="window.open(this.href, this.target,'resizable=no, scrollbars=yes, width=1000, height=800, left=200, top=200'); return false;" >[자세히 보기]</a>
                </div>
                <div class="submit">
                    <input type="image" onclick="fnForm('form-2')" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png">
                </div>

                <div class="description">
                    <p id="event-period">이벤트 기간 : <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                    <div class="ad_txt">안심하세요! 본페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                    <span id="target">대상 : ${resVo.target}</span>
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
        </form>
    </div>
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_07.jpg"></div>
    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.png"></div>
    <div class="container">
        <!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div> -->
    </div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script> 

    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
    });

    // 개인정보처리방침 팝업 관련
	$('.btn-agreement').on('click', function(e) {
        e.preventDefault();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').on('click', function() {
        $('.agreeModalBox').fadeOut();
    });

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('textarea[name="tadd1"]').value;
        procForm.querySelector("input[name='add1']").value = selectedRadio1;
		
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
			//,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>