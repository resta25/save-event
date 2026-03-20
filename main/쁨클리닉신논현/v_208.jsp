<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<!-- <link rel="stylesheet" href="/css/base.css"> -->
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
@font-face {
    font-family: 'Pretendard';
    font-weight: 100;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Thin.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Thin.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Thin.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 200;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraLight.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraLight.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraLight.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 300;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Light.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Light.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Light.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 400;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Regular.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Regular.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Regular.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 500;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Medium.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 600;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-SemiBold.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 700;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Bold.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 800;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-ExtraBold.otf') format('opentype');
}
@font-face {
    font-family: 'Pretendard';
    font-weight: 900;
    font-style: normal;
    font-display: swap;
    src: url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Black.woff2') format('woff2'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Black.woff') format('woff'),
         url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard-Black.otf') format('opentype');
}

@-moz-keyframes borderscale {50% {box-shadow: 0 0 0 2px #999;}}
@-webkit-keyframes borderscale {50% {box-shadow: 0 0 0 2px #999;}}
@keyframes borderscale {50% {box-shadow: 0 0 0 2px #999;}}
.form input {-webkit-appearance:none; -webkit-border-radius:0;}
.form input[type="checkbox"],
.form input[type="radio"] {border:0; clip:rect(0 0 0 0); height:1px; margin:-1px; overflow:hidden; padding:0; position:absolute; width:1px;}
.form input[type="checkbox"]:hover + span:before,
.form input[type="checkbox"]:focus + span:before,
.form input[type="radio"]:hover + span:before,
.form input[type="radio"]:focus + span:before {border-color:#999;}
.form input[type="checkbox"]:active + span:before,
.form input[type="radio"]:active + span:before {transition-duration:0; filter:brightness(0.2);}
.form input[type="checkbox"] + span,
.form input[type="radio"] + span {position:relative; padding:0 4px 0 22px; font-weight:normal; margin:3px 0;}
.form input[type="checkbox"] + span:before, 
.form input[type="checkbox"] + span:after,
.form input[type="radio"] + span:before, 
.form input[type="radio"] + span:after {box-sizing:content-box; position:absolute; content:''; display:block; left:0;}
.form input[type="checkbox"] + span:before,
.form input[type="radio"] + span:before {top:50%; width:14px; height:14px; border:2px solid #d9d9d9; text-align:center; transform:translateY(-50%);}
.form input[type="checkbox"] + span:after,
.form input[type="radio"] + span:after {background-color:#000; /*#00bad2;*/ top:50%; left:6px; width:8px; height:8px; line-height:1.4px; margin-top:-4px; transform:scale(0); transform-origin:50%; transition:transform 200ms ease-out;}
.form input[type="radio"]:checked + span:after {transform:scale(1);}
.form input[type="radio"] + span:before {border-radius:50%;}
.form input[type="checkbox"] + span:after,
.form input[type="radio"] + span:after {background-color:transparent; top:50%; left:0; width:20px; height:10px; margin-top:-5px; border-style:solid; border-color:#000; border-width:0 0 3px 3px; -moz-transform:rotate(-45deg) scale(0); -ms-transform:rotate(-45deg) scale(0); -webkit-transform:rotate(-45deg) scale(0); transform:rotate(-45deg) scale(0); -moz-transition:none; -o-transition:none; -webkit-transition:none; transition:none;} input[type="checkbox"]:checked + span:before,
.form input[type="radio"]:checked + span:before {-moz-animation:borderscale 200ms ease-in; -webkit-animation:borderscale 200ms ease-in; animation:borderscale 200ms ease-in;}
.form input[type="checkbox"]:checked + span:after,
.form input[type="radio"]:checked + span:after {content:''; -moz-transform:rotate(-45deg) scale(1) translate(29%, -43%); -ms-transform:rotate(-45deg) scale(1) translate(29%, -43%); -webkit-transform:rotate(-45deg) scale(1) translate(29%, -43%); transform:rotate(-45deg) scale(1) translate(29%, -43%); -moz-transition:-moz-transform 200ms ease-out; -o-transition:-o-transform 200ms ease-out; -webkit-transition:-webkit-transform 200ms ease-out; transition:transform 200ms ease-out;}


* {font-family: "Noto Sans KR", sans-serif; box-sizing: border-box;}
#page_landing_c .wrap_curd {background: transparent;}
#page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
html{
    height: 100%;
}
#page_landing_c main {max-width: 1080px;}
#wrap {font-family: 'Pretendard'; width: 100%;}

/* 비디오영역 */
#location {position: absolute; top: 16%; left: 7%; width: 45%;}

/* db 영역 */
.formContents {padding: 3em; background-color: #fff;}
#form-2 .formContents {background: #e3edec;}
.user_box .user_info {display: flex; flex-flow: row wrap; justify-content: space-between;}
.user_box .user_info input::placeholder {color: #9cafae;}
/* 첫번째 form 입력칸 */
#form-1 .user_box .user_info input {background: #e3edec; border: none; font-size: 150%; padding: 1em; padding-right: 0; border-radius: 0.8em; width: 47.25%; margin-bottom: 1%;}
#form-1 .user_box .user_info input:nth-of-type(3) {width: 100%;}
/* 두번째 form 입력칸 */
#form-2 .user_box .user_info input {background: #fff; border: none; font-size: 150%; padding: 1em; padding-right: 0; border-radius: 0.8em; width: 47.25%; margin-bottom: 1%;}
#form-2 .user_box .user_info input:nth-of-type(3) {width: 100%;}

.form .agBox {margin: 3% auto; text-align: center;}
.form .agBox a {font-weight: 700;}
.form .description {margin: 5% 0 0; text-align: center;}

.form .submit {display: flex; gap: 2%;}
.form .submit input[type="image"] {width: 50%; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}
.form .submit input[type="image"] {height: unset; padding: unset; border: none;}

/* 실시간 신청 현황 */
.sign_wrap { overflow: hidden; background: #1e1e1e;}
.sign {padding: 2em 0; display: flex; gap: 6%;width: max-content;}
.subscribe {background: none; display: flex; gap: 2%; padding: 0; animation: slide 30s linear infinite; flex-shrink: 0; width: max-content;}
.subscribe .content {border-radius: 0.8em; background-color: #f1f1f1; flex-shrink: 0; border-bottom: none; padding: 1em; display: flex; justify-content: center; align-items: center; gap: 2em; width: 15em;}
.subscribe .content .msg {font-size: 180%; font-weight: 700;}
.subscribe .content.default {background: #c0d7d5;}
.subscribe .content.active {background: #00ffda;}

/* 신정현황 애니메이션 */
@keyframes slide {
	0% {transform: translateX(0);}
	100% {transform: translateX(-100%);}
}

/* 버튼 효과 */
@keyframes pulsating {
	0% {transform: scale(1);}
	50% {transform: scale(0.95);}
	100% {transform: scale(1);}
}

@media screen and (max-width: 430px){
    .formContents {padding: 2em;}
    #form-1 .user_box .user_info input,
    #form-2 .user_box .user_info input {font-size: 130%; padding: 0.7em; border-radius: 0.5em;}

    .subscribe .content {padding: 0.5em; width: 13em; gap: 1em;}
    .subscribe .content .msg {font-size: 150%;}
}

@media screen and (max-width: 395px){
    .subscribe .content .msg {font-size: 130%;}
    .subscribe .content div {padding: 0;}
}

@media screen and (max-width: 375px){
}


</style>

<!-- <script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script> -->
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div id="wrap"> 
            <div class="form">
                <form id="form-1" method="POST" accept-charset="utf-8"> 
                
                <div class="container">
                    <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg"></div>
                </div>
        
                <div class="formContents">
                    <div class="user_box">
                        <div class="user_info">
                            <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="성함"> <!-- 이름 -->
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이"> <!-- 나이 -->
                            <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-제외')"> <!-- 연락처 -->
                        </div>
                    </div>
        
                    <div class="agBox agBox1">
                        <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                    </div>
                    <!-- <div class="agreement">
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
                    </div> -->
        
                    <div class="submit">
                        <input type="image" onclick="fnForm('form-1');" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_01.png">
                        <input type="image" onclick="fnForm('form-1');" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_02.png">
                    </div>
        
                    <div class="description">
                        <p id="event-period">이벤트 기간 :<?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                        <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span id="target">대상 : ${resVo.target}</span>
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
        
                    <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
                    <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
                    <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
                </form>
            </div>
        
            <!-- 신청자 현황 -->
            <div class="sign_wrap">
                <div class="container sign">
                    <div class="subscribe_group marquee__group subscribe"></div>
                </div>
            </div>
        
            <div class="container">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg"></div>
            </div>
        
            <div class="form">
                <form id="form-2" method="POST" accept-charset="utf-8"> 
        
                <div class="formContents">
                    <div class="user_box">
                        <div class="user_info">
                            <input type="text" name="name" id="name" class="inp" required="" autocomplete="off" placeholder="성함"> <!-- 이름 -->
                            <input type="tel" name="age" id="age" class="inp" required="" autocomplete="off" maxlength="2" placeholder="나이"> <!-- 나이 -->
                            <input type="tel" name="phone" id="phone" class="inp" required="" autocomplete="off" maxlength="11" placeholder="전화번호('-제외')"> <!-- 연락처 -->
                        </div>
                    </div>
        
                    <div class="agBox agBox2">
                        <label><input name="agBox" type="checkbox"><span>개인정보수집이용동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                    </div>
                    <!-- <div class="agreement">
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
                    </div> -->
        
                    <div class="submit">
                        <input type="image" onclick="fnForm('form-2');" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_01.png">
                        <input type="image" onclick="fnForm('form-2');" value="" src="//static.savemkt.com/event/v_${eventSeq}/btn_newSb_02.png">
                    </div>
        
                    <div class="description">
                        <p id="event-period">이벤트 기간 :<?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                        <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                        <span id="target">대상 : ${resVo.target}</span>
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
        
                    <input type="hidden" id="agent" 		name="agent" 		value="${resVo.agent}"/>
                    <input type="hidden" id="objectItems" 	name="objectItems" 	value="${resVo.objectItems}"/>
                    <input type="hidden" id="objectName" 	name="objectName" 	value="${resVo.objectName}"/>
                </form>
            </div>
        
            <!-- 신청자 현황 -->
            <div class="sign_wrap">
                <div class="container sign">
                    <div class="subscribe_group marquee__group subscribe"></div>
                </div>
            </div>
        
            <div class="container">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div>
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
            </div>
        </div>

        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p> </p>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
		getComment(`${eventSeq}`);

        ppeumAgreement();
    });
	
    function returnComment(resultData, meoreData) {
        $('.subscribe').each(function(idx, obj) {
            for (let v in resultData) {
                const data = resultData[v];

                const isComplete = Math.random() < 0.5;
                const statusText = isComplete ? '신청<br>완료' : '신청중';
                const statusClass = isComplete ? 'active' : 'default'; // ✅ 상태별 클래스 지정

                let html  = '<div class="content ' + statusClass + '" data-id="' + data.seq + '">';
                    html += '    <div class="msg">' + statusText + '</div>';
                    html += '    <div class="right">';
                    html += '        <div class="name">' + data.name + '</div>';
                    html += '        <div class="phone">' + data.phone + '</div>';
                    html += '        <div class="date">' + data.regDate + '</div>';
                    html += '    </div>';
                    html += '</div>';

                $(obj).append(html);
            }
        });
    }

    var modal2 = document.getElementById("modal2");
	var agree1 = document.querySelector(".agBox1 .btn-agreement");
	var agree2 = document.querySelector(".agBox2 .btn-agreement");
	var close2 = document.getElementById("close");

	agree1.onclick = function () {
	    modal2.style.display = "block";
	}
	agree2.onclick = function () {
	    modal2.style.display = "block";
	}

	close2.onclick = function () {
	    modal2.style.display = "none";
	}
	
	document.addEventListener('DOMContentLoaded', function() {
	    const phoneInput = document.getElementById('phone');

	    // 페이지 로드 시 기본값 설정
	    phoneInput.value = '010';

	    // 입력값이 사라지면 다시 '010' 넣기
	    phoneInput.addEventListener('input', function() {
	        if (!phoneInput.value.startsWith('010')) {
	            phoneInput.value = '010';
	        }
	    });
	});

	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		/*
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector(`input[name="tadd1"]:checked`);
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}
		
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