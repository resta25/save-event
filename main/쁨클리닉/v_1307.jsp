<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url('../css/common_new.css');
@font-face {
	font-family: 'GmarketSansMedium';
	src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}
body {overflow-x: hidden;}
.hide{display:none;}
#wrap{height: 100%; max-width: 640px; background: #6c4cf5; overflow: hidden;}
.poster_01 {padding: 0 9.8rem; margin: 0 auto 3%;}
.top_txt {margin: 3% auto; display: flex; width: 100%; justify-content: center;}
.top_txt .img-area {width: 49%;}
.top_txt img {width: 100%;}
#month {font-size: 4.2rem; color: #fff; font-family: 'GmarketSansMedium'; display: block;}
#location {width: 70%; margin: 0 auto; border-radius: 0.6rem;}
.poster_02 {width: 50%; margin: 1rem auto;}
#wrap .formContents {display: flex; flex-direction: column; min-height: 100vh; background: #6c4cf5;}

#page-3 {padding-bottom: 3%;}


.form .question_box {width: 90%; margin: 0 auto;}
.form .question {padding: 0 15% 2%;}
.form .q_select {display: flex; flex-flow: row wrap; gap: 2%; justify-content: center;}
.form .q_select label{width: 40%; cursor: pointer;}
.form .q_select label:nth-child(odd) {margin-bottom: 2%;}
.form .q_select label img {width: 100%;}
.form .question img {width: 100%;}

/* db 입력칸 */
.form .table_box {}
.form .table_box input:nth-child(1) {margin-bottom: 2%;}
.form .table_box input {text-align: center; background: #fff; padding: 3% 0; font-size: 1.85rem; border-radius: 0.5rem;}


/* 개인정보처리방침 영역 */
.form .agBox {color: #fff; margin: 2% auto; font-size: 1.2rem;}
.form .agreement {font-size:1.6rem;}
.bottom_container {margin-top:  auto;}

.form .submit {width: 75%; margin: 0 auto; padding: 0;}
.form .submit input[type="image"] {width: 100%;}
.form input[type="checkbox"] + span:after,
.form input[type="checkbox"] + span:before,
.form input[type="checkbox"]:hover + span:before {border-color: #fff;}

/* 이벤트, 안심문구, 대상 */
.form .description {color: #fff;}
.form .description p,
.form .description .ad_txt,
.form .description span {font-size: 1.2rem;}


@media screen and (max-width: 768px) {

}
@media screen and (max-width: 500px) {
	.form .table_box {width: 70%;}
	#month {font-size: 200%;}
	.top_txt .img-area {width: 38%;}
}

</style>
<div id="wrap">
	<div class="form">
		<form id="form-1" method="POST" accept-charset="utf-8"> 
			<div class="formContents">
				<div class="container">
                    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
					<div class="top_txt">
						<div id="month"></div>
						<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_00.png"></div>
					</div>
					<div class="img-area poster_01"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
					<video id="location" playsinline="" src="//static.resta.co.kr/event/v_${eventSeq}/video_01.mp4" type="video/mp4"></video>
					<div class="img-area poster_02"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.png"></div>
					
				</div>

				<section class="page" id="page-1">
                    <div class="container">
                        <div class="question_box">
                            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.png"></div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd1" onclick="next_page()" value="어두운 피부톤"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png"></label>
                                <label><input type="radio" name="tadd1" onclick="next_page()" value="거친 피부톤"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png"></label>
                                <label><input type="radio" name="tadd1" onclick="next_page()" value="잦은 피로감"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png"></label>
                                <label><input type="radio" name="tadd1" onclick="next_page()" value="기타"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png"></label>
                            </div>
                        </div>
                    </div>
				</section>

				<section class="page hide" id="page-2">
                    <div class="container">
                        <div class="question_box">
                            <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.png"></div>
                            <div class="q_select">
                                <label><input type="radio" name="tadd2" onclick="next_page()" value="20대"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png"></label>
                                <label><input type="radio" name="tadd2" onclick="next_page()" value="30대"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png"></label>
                                <label><input type="radio" name="tadd2" onclick="next_page()" value="40대"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_07.png"></label>
                                <label><input type="radio" name="tadd2" onclick="next_page()" value="50대 이상"><img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_08.png"></label>
                            </div>
                        </div>
                    </div>
				</section>

				<section class="page hide" id="page-3">
					<div class="container">
						<div class="formGroup">
							<div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_06.png"></div>
							<div class="table_box">
								<input type="text" id="name" name="name" class="inp" required="" autocomplete="off" placeholder="성함을 입력해주세요.">
								<input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="연락처를 입력해주세요.">
								<input type="hidden" id="branch" name="branch" required="" value="잠실">
							</div>
						</div>
                        <div class="agBox">
                            <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div>
                        <div class="agreement">
                            <!-- <?php $privacy_url = $this->landing['homepage_url']?$this->landing['homepage_url']:$this->landing['agreement_url'];?> -->
                            <div class="button"><a href="${resVo.agreementUrl}" target="_agreement" target="_blank">개인정보처리방침</a></div>
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
						<div class="description">
							<p id="event-period"></p>
							<div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
							<span>대상 : ${resVo.target}</span>
						</div>
					</div>
				</section>

				<div class="bottom_container">
					<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
					<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer_08.jpg"></div>	
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
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
	});
	//첫페이지 비디오 음성
	$('#wrap').on('click',function (){
		setTimeout(function(){ $('#location').trigger('play'); },500);
	})

	// 이번달 날짜 가져오기
	const month = new Date().getMonth() + 1; // 0부터 시작하므로 +1
	console.log("현재 월:", month);
	$('#month').text(month + '월')


    var paging_start = false; //연속페이징 방지
	function next_page(){
	        var page_num = $('.page:visible').index();
			if(page_num>=$('section').length) return false;
	        var $section = $('#page-' + page_num);
			console.log(page_num)
			setTimeout(function(){			
				$section.hide('slide', {'direction':'left'}, 'fast', function() {
					$section.next().effect('slide', {'direction':'right'}, 'fast', function() {
						paging_start = false;
					});
				});
				$('#location').attr('src', `//static.resta.co.kr/event/v_${eventSeq}/video_0${page_num + 1}.mp4`);
				// $('#location').attr('poster', `//static.event-collection.net/event/v_1304/poster_02.jpg`);
			},500)
			
			// if(page_num == "2"){
				// $('.bottom_container').css({position:'static'})
			// }
		}

	// 설문 클릭시 이미지변경
	$('input[name*=tadd], input[name=branch]').bind('click', function(){
		$('label', $(this).parents('.q_select')).each(function(i,t) {
			$('img', t).attr('src', $('img', t).attr('src').replace('_on', '_off'));
		});
		$('img', $(this.parentNode)).attr('src', $('img', $(this.parentNode)).attr('src').replace('_off', '_on'));
	});
    
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);

		if (!selectedRadio1) {
			alert("설문1 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		
		/*
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`);
		if (!selectedRadio3) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		}
		*/


		var required = {
			'name': '이름'
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문'
			,'add2': '설문'
			// ,'add3': '설문'
			// ,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>