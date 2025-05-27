<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#wrap {padding-bottom: 10%; font-family: 'noto serif'; background: #fff;} 
/* 고정버튼 */
.fixed {position: fixed; z-index: 9; bottom: 0%; cursor: pointer;}

/* 하단 form-inner */
.form_inner {background: #292929; padding: 10%;}

/* 이름, 나이, 연락처 입력칸 */
.formGroup {}
.formGroup .user_info {display: flex; flex-flow: column; margin-bottom: 3%;}
.legend {padding: 2%; font-weight: 700; color: #fff;}
.legend::after {display: inline-block; content: '*'; color: #22ab41; position: relative; top: -2px; left: 2px;}
.formGroup .user_info input {padding: 2%; font-size: 150%; color: #fff; background: #353535; border: 1px solid #757575; border-radius: 0.5rem;}

.question_box {display: flex; flex-flow: column; }
.question_box .q_select {background: #353535; color: #fff; font-size: 150%; padding: 2%; padding-right: 0; border-radius: 0.5rem;}
/* 개인정보처리방침 영역 */
.form .agBox {margin: 3% auto; color: #fff;}

/* 이벤트기간, 안심문구, 대상 영역 */
.form .description {margin-top: 2%; color: #fff; margin: 5%;}

/* 개인정보 처리방침 */
.form input[type="checkbox"] + span:after {border-color: #fff;}

/* 타이머 */
#timer {position: absolute; top: 59%; transform: translateY(-50%); right: 29%; color: #ffef7d; font-size: 200%; font-weight: 700;}

/* 실시간 신청 현황 */
.subscribe_container {background: #f1f1f1; width: 85%; margin: 5% auto; padding: 3%; border-radius: 0.8em;}
.subscribe_container .img-area {width: 40%; margin: 3% auto;}
.subscribe {height: 250px; overflow: hidden; padding: 2% 5%; background: #fff; border-radius: 0.8em; }
.subscribe_bg {background-color:#1c1c34 ;}
.subscribe .content {padding: 0; display: flex; align-items: center; font-size: 100%; margin: 1% 0; justify-content: space-between; border-bottom: 1px solid #f3f3f3;}
.subscribe .content > div {width: calc(100% / 4);}
.subscribe .content .date {text-align: right;}

.subscribe .content > div:last-child {margin-right: 0;}
.subscribe .content:last-child {font-size: 100%;}
.subscribe .content .text { text-align: center; width: 15%;}
.color-bg {
        background-color: #ffee82;
        font-weight: 700;
        border-radius: 1em;
    }

@media screen and (max-width: 500px){
    #wrap {padding-bottom: 15%;}
    .form_inner {padding: 5%;}
    #timer {font-size: 125%;}
    .subscribe {height: 200px;}
    .subscribe .content, .subscribe .content:last-child{font-size: 80%;}
    .formGroup .user_info input, .question_box .q_select {font-size: 120%;}
}
</style>
<div id="wrap"> 
    <div class="img-container">
        <div class="img-area">
            <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.png">
            <span id="timer"></span>
        </div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.png"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.png"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.gif"></div>
        <!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.png"></div> -->
        <!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_06.png"></div> -->
    </div>
    
    <div class="subscribe_container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/txt_01.png"></div>
        <div class="subscribe" data-limit="10"></div>
    </div>

    <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_07.jpg"></div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8">

        <div class="form_inner">
			<div class="formGroup">
                <div class="user_info user_name">
                    <span class="legend">이름</span>
                    <input type="text" name="name" id="name" class="inp" required  autocomplete="off" >
                </div>
                <div class="user_info user_phone">
                    <span class="legend">연락처</span>
                    <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11">
                </div>
			</div>

            <div class="question_box">
                <span class="legend">고민사항</span>
                <select class="q_select" name="tadd1" required>
                    <option value="" disabled selected>고민사항</option>
                    <option value="혈당">혈당</option>
                    <option value="혈압">혈압</option>
                    <option value="눈 건강">눈 건강</option>
                </select>
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
        
            <div class="description">
                <p id="event-period"></p>
                <div class="ad_txt">안심하세요! 본 페이지에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                <span>대상 : ${resVo.target}</span>
            </div>
        </div>
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

    <div class="container">
		<!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.png"></div> -->
		<!-- <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div> -->
    </div>

    <div class="img-area fixed db_btn"><img src="//static.resta.co.kr/event/v_${eventSeq}/btn_newSb_01.png"></div>
</div>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>

    /* 기간항목 start */
	initDate();
	/* 기간항목 end */

    // 신청 현황 리스트
    $(document).ready(function(){
        getComment('1123');
        $('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
            $('.btn_moreSubscribe').prop('disabled', true);
            e.preventDefault();
            getComment('1123');
        });
        //드레그, 우클릭 방지
        blockSourceView()
		
		// 타이머
		var display = document.querySelector('#timer');
		var timer =  7 * 60 * 60 * 1000 + 2 * 60 * 1000 + 36 * 1000; // 07:02:36을 밀리초로 변환

		startTimer(timer, display);
    })
	
	function returnComment(resultData, meoreData){
			var today = new Date();   
				var month = today.getMonth() + 1;
				var dateNum;
			$('.subscribe').each(function(idx,obj) {
				var data = resultData;
				
				for(v in data) {
	                var statusText = '신청완료'
	                var backgroundClass = statusText === '신청완료' ? 'color-bg' : '';
	                var html  = '<div class="content" data-id="'+ data[v].eid +'">';
	                    html += '	<div class="name">'+ data[v].name + '</div>';
	                    html += '	<div class="add1">'+ data[v].add1 +'</div>';
	                    html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; 
	                    html += '	<div class="date">'+ data[v].regDate +'</div>';
	                    html += '</div>';
	                $(obj).append(html);
	            }
			});
		}

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);


    // 타이머 함수
    function startTimer(duration, display) {
	    var start = Date.now();
	    var end = start + duration;
	
	    var timerInterval = setInterval(function () {
	    var remaining = end - Date.now();
	    if (remaining <= 0) {
	        clearInterval(timerInterval);
	        display.textContent = `00:00:00`; // 초가 끝난 후 텍스트
	        return;
	    }
	
	    var hours = Math.floor((remaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	    var minutes = Math.floor((remaining % (1000 * 60 * 60)) / (1000 * 60));
	    var seconds = Math.floor((remaining % (1000 * 60)) / 1000);
	    var milliseconds = Math.floor(remaining % 1000 / 10);
	
	    hours = hours < 10 ? "0" + hours : hours;
	    minutes = minutes < 10 ? "0" + minutes : minutes;
	    seconds = seconds < 10 ? "0" + seconds : seconds;
	    milliseconds = milliseconds < 10 ? "0" + milliseconds : milliseconds;
	
	    display.textContent = hours + " : " + minutes + " : " + seconds;
	    }, 1);
	}

    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.form_inner').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

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
		let selectedRadio1 = procForm.querySelector('select[name="tadd1"]');
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
			// , 'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>