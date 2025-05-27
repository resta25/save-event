<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://fastly.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
/* 공통영역 */
#wrap {font-family: 'Pretendard-Regular'; font-weight: normal; height: 100vh; overflow: hidden; background: url("//static.resta.co.kr/event/v_${eventSeq}/bg_01.jpg")no-repeat center 100%;}
.hide{display:none;}
.container {position: absolute; bottom: 0;}
.form {background: none; position: absolute; top: 7%; left: 50%; transform: translateX(-50%); width: 100%;}
.next_btn {width: 30%; margin: 5% auto; cursor: pointer;}
.pointColor_m {color: #67fffa;}
.pointColor_y {color: #fffc00 !important;}
.color_w{color: #fff;}
.text_c{text-align: center;}
.img_02 {margin: 3% auto; width: 5%;}

/* section01 페이지 영역 */
.section01 {padding-top: 10%;}
.img01 {width: 2%; padding-right: 2%; margin: 0 !important;}
.event_box {width: 70%; margin: 0 auto;}
.event_box .time_txt span {letter-spacing: 21px; font-size: 160%; font-weight: 700; position: absolute; top: 50%; transform: translateY(-50%); text-align: center; color: #000;}
.event_box .day {left: 42%;}
.event_box .time {left: 64%;}
.event_box .minute {left: 80%; letter-spacing: 20px;}

.txt_box {background: #000; width: 50%; border-radius: 0.7em; padding: 3% 0; margin: 3% auto;}
.txt01 {font-size: 200%; font-weight: 700; line-height: 1.2; color: #fff; text-align: center;}
.txt02 {text-decoration: underline; font-size: 150%; margin-bottom: 2%;}
.txt03 {font-size: 200%; font-weight: 700;}
.notice_txt {font-size: 85%; font-weight: 400;}
.event_txt {font-weight: 700; display: flex; align-items: center; justify-content: center;}
.event_txt em {font-style: normal;}
/* .section01 .img-area {margin: 5% auto;} */

/* 설문 box */
.question_box .question {font-size: 180%; color: #fff; text-align: center; margin-bottom: 3%; font-size: 200%;}
.q_num {font-size: 200%; text-align: center; text-decoration: underline; font-weight: 700; margin: 2% 0;}
.q_select {display: flex; text-align: center; flex-flow: column; align-items: center; width: 100%;}
.q_select label { width: 40%; cursor: pointer; border-radius: 0.5rem; padding-bottom: 1%;}
.q_select label img {width: 100%;}

/*  이름, 연락처 입력칸 */
.input_row {margin: 2% auto; width: 60%; background: #000; border-radius: 0.7em; display: flex; align-items: center; padding: 2%;}
.input_row .title {color: #fff; font-style: normal; display: flex; width: 20%;}
.input_row input {font-size: 120%; color: #fff;}
.form input[type="checkbox"] + span:after {border-color: #fff;}

/* 개인정보처리 방침 */
.form .agBox {text-align: center;}
.agBox {color: #fff; font-style: normal;}

/* submint */
.form .submit {width: 60%; margin: 5% auto;}
.form .submit input[type="image"] {width: 100%;}

/* 이벤트기간, 대상, 안심문구 */
.form .description {color: #fff; margin: 5% auto !important; font-size: 88%; font-style: normal;}
.form .description p {font-size: 90%;}
.form .description span {font-size: 90%;}

/* 모달창 - 개인정보처리방침 */
.overlay {z-index: 888; position: fixed; display: none; width: 100vw; height: 100vh; opacity: 0.5; background-color: #000;}
.agreeModalBox {z-index: 999; display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 60px 30px 40px; width: 90%; max-width: 500px; box-sizing: border-box; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #f5f6f7; box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;}
.agreeModalBox .closeBtn {position: absolute; top: 0; right: 2%; padding: 2%; cursor: pointer; font-size: 25px; color: #5e5e5e;}
.agreeModalBox .newAgreement {position: relative; padding: 2% 4%; height: 150px; overflow-y: scroll; border: 1px solid #dadada;}
.agreeModalBox .newAgreement .button {position: absolute; right: 3%; width: 95px;}
.agreeModalBox .newAgreement .button a {display: block; padding: 1%; text-align: center; font-size: 10px; background-color: #e2e2e2;}
.agreeModalBox .newAgreement .button a:focus {background-color: #dadada;}
.agreeModalBox .newAgreement h3 {margin: 4% 0; font-size: 11px;}
.agreeModalBox .newAgreement ol li {line-height: 12px; font-size: 10px;}

/* For page-1 */
.active01, .active02, .active03, .active04, .active05 {
  opacity: 0;
  transform: translateY(50px);

}

/* For page-2 */
#page-2 .active06,
#page-2 .active07,
#page-2 .question_box .q_select > label,
#page-2 .active08 {
  opacity: 0;
  transform: translateY(200px);
}

/* For page-3 */
#page-3 .active09,
#page-3 .active10,
#page-3 .question_box .q_select > label,
#page-3 .active11 {
  opacity: 0;
  transform: translateY(200px);
}


/* For page-4 */
#page-4 .active12,
#page-4 .active13,
#page-4 .active14,
#page-4 .active15,
#page-4 .active16,
#page-4 .active17 {
  opacity: 0;
  transform: translateY(200px);
}



@media screen and (max-width: 500px){
    .event_box .time_txt span {font-size: 105%; letter-spacing:8px; }
    .txt02 {font-size: 120%;}
    .txt01, .txt03 {font-size: 150%;}
    .img01 {width: 4%;}
    .q_num {font-size: 150%;}
    .question_box .question {font-size: 125%;}
    .q_select label {width: 50%;}
    .input_row {width: 80%;}
    .input_row .title {width: 30%;}
    .form .submit {margin: 3% auto;}
}

</style>
<!-- //INCLUDES -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- INCLUDES// -->

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

        <section class="page section01" id="page-1">
            <div class="img-area event_box active01">
                <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png">
                <span class="time_txt">
                    <span class="day"></span>
                    <span class="time"></span>
                    <span class="minute"></span>
                </span>
            </div>

            <div class="active02">
                <div class="img-area img_02"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_02.png"></div>
                <div class="txt01 color_w text_c">설문 참여만 해도<br><span class="pointColor_m">조건없이 물광주사 한정 혜택</span></div>
                <div class="txt_box">
                    <div class="txt02 pointColor_m text_c">한정혜택</div>
                    <div class="txt03 color_w text_c">체험가 9,900원</div>
                </div>
            </div>
            
            <p class="notice_txt color_w text_c active03">* 해당 이벤트는 조기 마감 될 수 있습니다.<br>* 혜택 제공을 위한 개인정보 수집 및 이용에 동의해 주세요.</p>

            <div class="img-area next_btn active04" onclick="show2pg()"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></div>
            <div class="event_txt active05">
                <div class="img-area img01"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_03.png"></div>
                <div class="pointColor_m">43명</div>
                <div class="color_w">이 참여했습니다</div>
            </div>
        </section>

        <section class="page section02 hide" id="page-2">
            <div class="active06">
                <div class="img-area img_02"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_02.png"></div>
                <div class="txt01">스타들도 찾아오는<br><span class="pointColor_m">뷰티플렉스 쁨클리닉</span></div>
            </div>
            <div class="question_box">
                <div class="active07">
                    <div class="q_num pointColor_m">01</div>
                    <div class="question">현재 고민 사항은?</div>
                </div>
                <div class="q_select">
                    <label>
                        <input type="radio" name="tadd1"  value="푸석한 피부" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_01.png">
                    </label>
                    <label>
                        <input type="radio" name="tadd1" value="탁한 피부 톤" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_02.png">
                    </label>
                    <label>
                        <input type="radio" name="tadd1"  value="늘어지는 피부" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_03.png">
                    </label>
                    <label>
                        <input type="radio" name="tadd1"  value="탄력이 떨어지는 피부" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_04.png">
                    </label>
                    <label>
                        <input type="radio" name="tadd1"  value="잔주름, 피부꺼짐" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_05.png">
                    </label>
                </div>
            </div>
            <div class="img-area next_btn active08" onclick="show3pg()"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></div>
        </section>

        <section class="page section03 hide" id="page-3">
            <div class="active09">
                <div class="img-area img_02"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_02.png"></div>
                <div class="txt01 color_w text_c">스타들도 찾아오는<br><span class="pointColor_m">뷰티플렉스 쁨클리닉</span></div>
            </div>
            <div class="question_box">
                <div class="active10">
                    <div class="q_num pointColor_m">02</div>
                    <div class="question">나이가 어떻게 되시나요?</div>
                </div>
                <div class="q_select">
                    <label>
                        <input type="radio" name="tadd2"  value="20대" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_06.png">
                    </label>
                    <label>
                        <input type="radio" name="tadd2"  value="30대" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_07.png">
                    </label>
                    <label>
                        <input type="radio" name="tadd2"  value="40대" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_08.png">
                    </label>
                    <label>
                        <input type="radio" name="tadd2"  value="50대" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_09.png">
                    </label>
                    <label>
                        <input type="radio" name="tadd2"  value="60대 이상" >
                        <img src="//static.resta.co.kr/event/v_${eventSeq}/select_off_10.png">
                    </label>
                </div>
            </div>
            <div class="img-area next_btn active11" onclick="show4pg()"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_02.png"></div>
        </section>

        <section class="page section04 hide" id="page-4">
            <div class="active12">
                <div class="img-area img_02"><img src="//static.resta.co.kr/event/v_${eventSeq}/img_02.png"></div>
                <div class="txt01">스타들도 찾아오는<br><span class="pointColor_m">뷰티플렉스 쁨클리닉</span></div>
            </div>
            <div class="question_box">
                <div class="active13">
                    <div class="q_num pointColor_m">03</div>
                    <div class="question">참여자의 개인정보를 이벤트 혜택 제공 외<br>어떠한 목적으로도 사용하지 않습니다. (3/3)</div>
                </div>

                <div class="input_box active14">
                    <div class="input_row">
                        <span class="title">이름 <em class="pointColor_y">*</em></span>
                        <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="홍길동">
                    </div>
                    <div class="input_row">
                        <span class="title">전화번호 <em class="pointColor_y">*</em></span>
                        <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="혜택 안내 받을 연락처">
                    </div>
                    <input type="hidden" name="branch" id="branch" class="inp" required="" value="노원점">
                </div>

                <div class="agBox active15">
                    <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                </div>
                
                <div class="submit active16 "><input type="image" onclick="fnForm('form-1');" value="" src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb.png"></div>

                <div class="description active17">
                    <p id="event-period"></p>
                    <span>대상 : ${resVo.target}</span>
                </div>
            </div>
        </section>
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
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    // 이벤트 기간 출력
    $(document).ready(function () {
		//드래그, 우클릭 방지
		 blockSourceView();
		 
		/* 기간항목 start */
		initDate();
		/* 기간항목 end */
		
	    function updateRemainingTime() {
	        const now = new Date(); // 현재 시간
	        const endOfMonth = new Date(now.getFullYear(), now.getMonth() + 1, 0, 23, 59, 59); // 해당 월의 마지막 날 23:59:59
	
	        const remainingTime = endOfMonth - now; // 남은 시간 (밀리초 단위)
	
	        if (remainingTime <= 0) {
	            // 현재 달이 종료되었으면 다음 달의 마지막 날을 기준으로 갱신
	            const nextMonth = new Date(now.getFullYear(), now.getMonth() + 1, 0, 23, 59, 59);
	            const newRemainingTime = nextMonth - now;
	            displayTime(newRemainingTime);
	        } else {
	            displayTime(remainingTime);
	        }
	    }
	
	    function displayTime(timeInMillis) {
	        const remainingDays = Math.floor(timeInMillis / (1000 * 60 * 60 * 24)); // 남은 일
	        const remainingHours = Math.floor((timeInMillis % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)); // 남은 시간
	        const remainingMinutes = Math.floor((timeInMillis % (1000 * 60 * 60)) / (1000 * 60)); // 남은 분
	
	        const formattedDays = remainingDays < 10 ? '0'+remainingDays : remainingDays;
	        const formattedHours = remainingHours < 10 ? '0'+remainingHours : remainingHours;
	        const formattedMinutes = remainingMinutes < 10 ? '0'+remainingMinutes : remainingMinutes;
	
	        // 남은 시간을 표시
	        $('.day').text( formattedDays+'일')
	        $('.time').text(formattedHours)
	        $('.minute').text(formattedMinutes)
	    }
	
	    // 매 분마다 업데이트
	    updateRemainingTime(); // 초기 실행
	    setInterval(updateRemainingTime, 60 * 1000); // 1분 간격으로 업데이트
	});

    // 개인정보처리방침 모달창 
    $('.btn-agreement').click(function(){
        $('.overlay').fadeIn();
        $('.agreeModalBox').fadeIn();
    });
    $('.agreeModalBox .closeBtn').click(function(){
        $('.overlay').fadeOut();
        $('.agreeModalBox').fadeOut();
    });

    // 페이지 이동
    $('.next_btn').bind('click', function () {
        var page_num = $('.page:visible').index() + 1;
        var numImg = page_num;
        var $section = $('#page-' + page_num);
        var total_pages = $('.page').length + 1;
        var remain = total_pages - page_num - 1;

        if (page_num === 2) { // page-2의 경우
            var selectedOption = $('input[name="tadd1"]:checked');
            if (selectedOption.length === 0) {
                alert("설문 항목을 선택해 주세요.");
                return; // 선택되지 않으면 함수 종료
            }
        } else if (page_num === 3) { // page-3의 경우
            var selectedOption = $('input[name="tadd2"]:checked');
            if (selectedOption.length === 0) {
                alert("설문 항목을 선택해 주세요.");
                return; // 선택되지 않으면 함수 종료
            }
        }

        if (page_num == 4) {
            return; // 아무 동작도 하지 않고 함수를 종료
        }

        $section.hide();
        setTimeout (() => {
            $section.next().show();
        },500)
    });


    // 첫번째 페이지
    function show1pg(){    
        const animation01 = gsap.timeline();
        animation01.to('.active01', { y: 0, delay: 0.2, opacity: 1, ease: "power1.out"},0);
        animation01.to('.active02', { y: 0, delay: 0.4, opacity: 1, ease: "power1.out"},0);
        animation01.to('.active03', { y: 0, delay: 0.6, opacity: 1, ease: "power1.out"},0);
        animation01.to('.active04', { y: 0, delay: 0.6, opacity: 1, ease: "power1.out"},0);
        animation01.to('.active05', { y: 0, delay: 0.8, opacity: 1, stagger: 0.1, ease: "power1.out"},0);
    }
    show1pg();

    // 두번째 페이지
    function show2pg() {
        const animation02 = gsap.timeline();
        animation02.to('#page-2 .active06', {y: 0, opacity: 1, duration: 0.8}, 0.3);
        animation02.to('#page-2 .active07', {y: 0, opacity: 1, duration: 0.4});
        animation02.to('#page-2 .question_box .q_select > label', {y: 0, opacity: 1, duration: 0.4});
        animation02.to('#page-2 .active08', {y: 0, opacity: 1, duration: 0.4, stagger: 0.1});
    }

    // 세번째 페이지
    function show3pg() {
        const animation03 = gsap.timeline();
        animation03.to('#page-3 .active09', {y: 0, opacity: 1, duration: 0.8}, 0.3);
        animation03.to('#page-3 .active10', {y: 0, opacity: 1, duration: 0.4});
        animation03.to('#page-3 .question_box .q_select > label', {y: 0, opacity: 1, duration: 0.4});
        animation03.to('#page-3 .active11', {y: 0, opacity: 1, duration: 0.4, stagger: 0.1});
    }

    // 마지막 페이지
    function show4pg() {
        const animation04 = gsap.timeline();
        animation04.to('#page-4 .active12', {y: 0, opacity: 1, duration: 0.6}, 0.3);
        animation04.to('#page-4 .active13', {y: 0, opacity: 1, duration: 0.3});
        animation04.to('#page-4 .active14', {y: 0, opacity: 1, duration: 0.3});
        animation04.to('#page-4 .active15', {y: 0, opacity: 1, duration: 0.3});
        animation04.to('#page-4 .active16', {y: 0, opacity: 1, duration: 0.3});
        animation04.to('#page-4 .active17', {y: 0, opacity: 1, duration: 0.3, stagger: 0.1});
    }

	// 설문 클릭시 이미지변경
	$('input[name*=add], input[name=branch]').bind('click', function(){
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
				alert("설문을 선택해주세요.");
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
		let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		procForm.querySelector("input[name='add3']").value = selectedRadio3;
		*/
		
		var required = {
			'name': '이름'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>