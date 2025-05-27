<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.container video{width: 95%; padding: 2.5% 2.5% 0 2.5%; background-color: #ffd632;}

.form .question_border_radius{background-color: #ffd632; padding:3% 5% 6%;}
.form .question_box{padding: 4% 0; text-align: center; border-radius: 10px; background-size: 100%; background-color: #fff;}
.form .question_box img{width:100%;}
.form .question_box .question{margin: 0 auto 1%; width: 80%;}
.form .question_box .q_select label{padding:2% 1% 0; font-size:29px;}

.count{width:100%; position: absolute; top:30%; right: 0.5%; font-size: 220%; font-weight:bold; color:#fff;}
.count .day{position: absolute; left:42%;}
.count .hour{position: absolute; left:56.3%;}
.count .minute{position: absolute; left:70.3%;}
.count .second{position: absolute; left:84.4%;}

.form .formContents{padding: 3% 0 6%;}

.form .table_box.rowBorder input[type="radio"] + span {padding: 0 14px 0 22px;}

/* 실시간 신청 현황 */
.subscribe {height: 180px; overflow: hidden; padding: 2% 5%; margin: 0 2% 2%;}
.subscribe_bg {background-color:#000e35 ;}
.subscribe .content {padding: 0; display: flex;  border-bottom: 1px solid #ccc; margin: 1% 0; justify-content: space-between;}
.subscribe .content > div {margin-right: 8%;}
.subscribe .content > div:last-child {margin-right: 0;}
.subscribe .content:last-child {}
.subscribe .content .text {border: 1px solid #000; text-align: center; width: 10%;}
.yellow-bg {
        background-color: yellow;
    }

@media screen and (max-width: 768px){
    .form .question_box .q_select label{font-size:3.2vw;}

    .count{font-size:4.5vw;}

    .form .table_box.rowBorder{font-size:4.1vw;}
    .subscribe .content {font-size: 80%;}
    .subscribe .content > div {margin: 0;}
    .subscribe .content .text {width: 15%;}
}
</style>

<div id="wrap"> 
    <div class="container">
		<div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_00.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_01.jpg"></div>
        <video id="location" playsinline="" muted="" loop="" src="//static.resta.co.kr/event/v_${eventSeq}/231110.mp4" type="video/mp4"></video>
        <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_02.jpg"></div>
    </div>

    <div class="form">
        <form id="form-1" method="POST" accept-charset="utf-8"> 

            <div class="question_border_radius">
                <div class="question_box">
                    <div class="question"><img src="//static.resta.co.kr/event/v_${eventSeq}/q_01.png"></div>
                    <div class="q_select">
                        <label><input type="radio" name="tadd1" value="피부탄력"><span>피부탄력</span></label>
                        <label><input type="radio" name="tadd1" value="잔주름"><span>잔주름</span></label>
                        <label><input type="radio" name="tadd1" value="이중턱"><span>이중턱</span></label>
                        <label><input type="radio" name="tadd1" value="전부 한번에"><span>전부 한번에</span></label>
                    </div>
                </div>
            </div>

            <div class="img-area">
                <img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_03.jpg">
                <div class="count">
                    <span class="day"></span>
                    <span class="hour"></span>
                    <span class="minute"></span>
                    <span class="second"></span>
                </div>	
            </div>

            <div class="formContents">
                <div class="description">
                    <!-- <p>이벤트 기간 : 2025년 1월 01일 ~ 2025년 1월 31일까지</p> -->
                    <div class="ad_txt">안심하세요! ${resVo.agent}에서는 고객님의 소중한 개인정보를<br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                </div>
                <div class="formGroup">
                    <div class="table_box rowBorder ">
                        <table>
                            <tbody><tr>
                                <th><img src="//static.metamarketing.co.kr/label/name_01.png"></th> <!-- 이름 -->
                                <td><input type="text" id="name" name="name" class="inp" required="" autocomplete="off"></td>
                            </tr>
                            <tr>
                                <th><img src="//static.metamarketing.co.kr/label/age.png"></th> <!-- 나이 -->
                                <td><input type="tel" id="age" name="age" class="inp" required="" autocomplete="off" maxlength="2"></td>
                            </tr>
                            <tr>
                                <th><img src="//static.metamarketing.co.kr/label/phone_01.png"></th> <!-- 전화번호 -->
                                <td><input type="tel" id="phone" name="phone" class="inp" required="" autocomplete="off" maxlength="11"></td>
                            </tr>
                            <input type="hidden" id="branch" name="branch" class="inp" required="" value="노원점">
                            <!-- 지점 -->
                            <!-- <tr>
                                <th><img src="//static.metamarketing.co.kr/label/stores.png"></th> 
                                <td>
                                    <label><input type="radio" name="branch" value="울산"><span>울산</span></label>
                                </td>
                            </tr> -->
                        </tbody></table>
                    </div>
                </div>
                <div class="agBox">
                    <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
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
                <div class="description bottom">
                    <span>대상 :  ${resVo.target}</span>
                    <p id="event-period"></p>
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

    <div class="container">
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_04.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/event_main_05.jpg"></div>

        <!-- 신청자 현황 (접수중/접수완료) -->
        <div class="subscribe_bg">
            <div class="subscribe" data-limit="10"></div>
        </div>

        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/notice.jpg"></div>
        <div class="img-area"><img src="//static.resta.co.kr/event/v_${eventSeq}/footer.jpg"></div>
    </div>
</div>

<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
	$(document).ready(function() {
		//드래그, 우클릭 방지
		blockSourceView();
		
		initDate();
		
		getComment('1192');
		$('.subscribe').on("click", ".btn_moreSubscribe", function(e) {
			$('.btn_moreSubscribe').prop('disabled', true);
			e.preventDefault();
			getComment('1192');
		});
	});
	
	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
			var data = resultData;
			
			for(v in resultData) {
				var statusText = Math.random() < 0.5 ? '접수중' : '접수완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
				var backgroundClass = statusText === '접수완료' ? 'yellow-bg' : ''; // '접수완료'일 경우에만 클래스 추가
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="date">'+ data[v].regDate +'</div>';
					html += '	<div class="name">'+ data[v].name +'</div>';
					html += '	<div class="phone">' + data[v].phone +'</div>'
					html += '	<div class="msg">'+ data[v].memo +'</div>';
					html += '    <div class="text ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
					html += '</div>';
				$(obj).append(html);
			}
		});
	}

	
    // 한달 타이머
    function remainedTime() {
        var now = new Date();
        var end = new Date(now.getFullYear(),now.getMonth(),now.getDate());
        var open = new Date(now.getFullYear(),now.getMonth()+1,1);
    
        var nt = now.getTime();
        var ot = open.getTime();
        var et = end.getTime();
    
        sec = parseInt(ot - nt) / 1000;
        day = parseInt(sec / 60 / 60 / 24);
        sec = (sec - (day * 60 * 60 * 24));
        hour = parseInt(sec / 60 / 60);
        sec = (sec - (hour * 60 * 60));
        min = parseInt(sec / 60);
        sec = parseInt(sec - (min * 60));

        if (day < 10) {day = "0" + day;}
        if (hour < 10) {hour = "0" + hour;}
        if (min < 10) {min = "0" + min;}
        if (sec < 10) {sec = "0" + sec;}

        $(".day").html(day);
        $(".hour").html(hour);
        $(".minute").html(min);
        $(".second").html(sec);
    }
    setInterval(remainedTime, 1000);

    setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);
    // Comment End

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
		let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`);
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		
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
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문'
			// ,'add2': '설문'
			// ,'add3': '설문'
			,'branch': '지점'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>