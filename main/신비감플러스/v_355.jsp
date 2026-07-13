<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common.css">
<style>
@font-face {
    font-family: 'Paperlogy';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-4Regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
@font-face {
    font-family: 'Paperlogy';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-5Medium.woff2') format('woff2');
    font-weight: 500;
    font-style: normal;
}
@font-face {
    font-family: 'Paperlogy';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-6SemiBold.woff2') format('woff2');
    font-weight: 600;
    font-style: normal;
}
@font-face {
    font-family: 'Paperlogy';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-7Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
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
* {font-family: 'Pretendard';}
.page:not(#page-1){display:none;}
#wrap{background:#ffffff; max-width: 1080px; width: 100%;}
.form, .form .formContents{background-color:#ffffff;}
.page:not(#page-1) {width: 100%; margin: 0 auto; padding: 5.398% 5.5%; background-color: #fff;}
.page#page-4 {padding-bottom: 5%;}
.inner {box-shadow: 10px 15px 20px rgba(0, 0, 0, 0.5); padding: 5%;}

/* 초기화 css */
#page_landing_c main {max-width: unset;}
.form input[type="radio"] {
    border: 0;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
}
.btn_submit {background: none; background-color: transparent !important;}
input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {
    height: auto;
    padding: 0;
}
input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}

/* 상단 카운트 박스 */
.count-area {position: absolute; top: 19.172%; left: 50%; transform: translateX(-50%); width: 100%; color: #fff; text-align: center;}
.count-area .count-box {font-size: 260%; color: #fff; font-family: 'Paperlogy'; line-height: 1.27;}
.count-area .count {font-size: 100%; color: #ffff00; font-family: 'Paperlogy'; line-height: 1.27; font-weight: 700;}
.count-area .time-counting {font-size: 260%; color: #ffff00; font-family: 'Paperlogy'; line-height: 1.27;}
.count-area .sub-txt {font-size: 260%; color: #fff; font-family: 'Paperlogy'; line-height: 1.38; text-align: center;}
.count-area .sub-txt span {display: block; color: #00ffea; font-size: 100%; font-family: inherit;}
#page_landing_c main img.top-img {position: absolute; bottom: -12.162%; left: 50%; transform: translateX(-50%); width: 97.964%;}

.gif-area {position: absolute; bottom: -11.545%; padding: 0 4.417%;}

.page .paging{padding:15% 10% 3%; margin: 0 auto; display: flex; justify-content: space-between;}
.page .paging button{width:100%; box-sizing: border-box; background: none; padding: 0; cursor: pointer;}
.page .paging button {position: relative; width: 100%; height: 180px; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb_01.png') no-repeat center center / 100% 100%; margin: 0 auto; padding: 0% 0;}
.page .paging button img {width: 83.37% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}
.page .paging button a {display:block;}

#page-1 {position: relative; padding-bottom: 5%;}
#page-1 .poster_01 {z-index: 2; position: relative;}
#page-1 .paging {width: 72.073%; padding: 2.705% 0 2.5%;}
#page-1 .poster_02 {position: relative; background: url('//static.savemkt.com/event/v_${eventSeq}/event_main_02.png') no-repeat top center / 100% 100%; margin: 11.945% 3.75% 3.75%; padding-top: 7.686%; padding-bottom: 8.519%;}
#page-1 .poster_02 > .img-area {width: 79.28%; margin: 0 auto; padding-bottom: 8.009%;}
#page-1 .poster_02 .sub-txt {text-align: center; font-size: 125%; font-family: 'Pretendard';}
#page-1 .poster_03 .img-area {width: 96.205%; margin: 0 auto;}

#page-2 .paging {padding: 0 14.87% 3%;}
#page-2 .poster_04 {margin: 2.506% 0 7.517%;}

#page-2.page .paging button,
#page-3.page .paging button {background-image: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png')}
#page-2.page .paging button img,
#page-3.page .paging button img {width: 31% !important;}

#page-3.page .paging {padding-top: 0;}

#page-3 .poster_06 {margin: 2.506% 0 7.517%;}
#page-3 .sm-txt {font-size: 60%; font-weight: 500;}

#page-4 .poster_09 {margin: 2.506% 0 7.517%;}

.poster_05 {width: 88.439306%;}
.poster_07 {width: 79.075145%;}
.poster_08 {width: 88.439306%; margin-top: 13.3%; margin-bottom: 5%;}

.form-box {margin-top: 7.54%;}
#wrap .formContents {position: static;}
.form .formContents .description {text-align: center; margin-top: 3%; font-family: 'Paperlogy';}
.form .formContents .description * {font-size: 100%; font-family: inherit; font-weight: 400;}
.form-box .form-box-top {padding:5% 5% 0;}
.form .question_box {text-align: center; padding: 0; margin-bottom: 5%;}
.form .question_box .q_select {display: flex; flex-direction: column; margin-top: 7%; font-size: 150%;}
.form .question_box .q_select label {width: 100%;
    padding: 2% 0 2.5%;
    border: 7px solid #000;
    cursor: pointer;
    background: #fff;
    border-radius: 2rem;
    font-size: 250%;
    font-weight: 600;
    font-family: 'Paperlogy';}
/* .form .question_box .q_select label.on{background: #efefef;} */
.form .question_box .q_select label:not(:last-child){margin-bottom: 6%;}
.form .question_box .q_select label img{width:95%;}

.form .next_btn_inQuestion {width: 70%; margin: 5% auto; cursor: pointer;}
.form .next_btn_inQuestion img {width: 100%;}

/* 이름, 전화번호 boz */
.formGroup {}
.form .table_box + .table_box  {margin-top: 7.75%;}
.form .table_box input {display: block; width: 100%; padding: 2% 0 2.5%; border: 7px solid #000; cursor: pointer; background: #fff; border-radius: 2rem; font-size: 500%; font-weight: 500; font-family: 'Pretendard'; text-align: center;}
/* .form .table_box{ padding:0;background:#f4f4f4;border-radius:27px; margin-bottom: 18px; }
.form .table_box input {background: #fff; text-align: center; border-radius: 2rem; font-size: 2.8rem; border: 1px solid #092b7b; width: 100%; padding: 1.5rem 2rem; font-family: 'Pretendard'; font-weight: 500; text-align: center;}
.form .table_box input::placeholder{color: rgba(0, 0, 0, 0.7); font-family: 'Pretendard'; font-weight: 500;}

.form .table_box.txt_box {width:95%; height: 130px;}
.form .table_box.bottom input {} */

/* 개인정보 처리방침 */
.agBox {display: flex; align-items: center; justify-content: center; column-gap: 0.5rem; font-family: 'Paperlogy'; font-weight: 400; font-size: 1.4rem; line-height: 1;}
.agBox label {display: flex; align-items: center; column-gap: 0.5rem;}
.btn-agreement {flex-shrink: 0; text-align: center; display: block; color: #000; font-family: 'Paperlogy'; font-weight: 400; font-size: 100%;}
.btn-agreement b {font-weight: 700; font-size: 100%; font-family: 'Paperlogy';}

.sub_txt {text-align: center; font-family: 'Paperlogy';}

.table_box + .sub_txt {margin-top: 5%; font-size: 125%; font-family: 'Paperlogy';}
.form .submit {display: flex; align-items: center; justify-content: center; margin: 1em auto 0; padding: 0;}
.form .submit {position: relative;     width: 100%;
    height: 160px;
    background: url("//static.savemkt.com/event/v_${eventSeq}/btn_newsb_02.png") no-repeat center center / 100% 100%;
    margin: 5% auto 5%;
    padding: 0% 0;}
.form .submit input[type="image"] {
    width: 71.46% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite;
    -webkit-animation: pulsating 0.8s linear infinite;
}
.form .submit input[type="image"] {}

@keyframes pulsating {
    50% {
        transform: scale(0.95);
    }
}

/* font */
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@media screen and (max-width: 786px) {
    #page-1 .paging {padding-top: 2.5%;}
    .agBox {padding-bottom: 2.5%;}
    .form .table_box {border-radius: 9px;}
    #page_landing_c .form .table_box input {padding: 1rem; font-size: 125%; border-radius: 1rem;}
    .count_box {top: 36%; left: 55%;}
    .count_box, .count {font-size: 2.2rem;}
    .page .paging button {height: 70px;}
    .form .submit {height: 72px; margin-top: 5%;}
    .agBox, .btn-agreement {font-size: 1rem;}

    [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%;}

    .form .question_box .q_select label, .form .table_box input {border-width: 4px;}

    .form .formContents .description * {font-size: 95%;}

    .count-area {    top: 11.172%;}
    .count-area .count-box {font-size: 120%;}
    .count-area .time-counting {font-size: 120%;}
    .count-area .sub-txt {font-size: 120%;}

    #page-1 .poster_02 .sub-txt {font-size: 90%;}
}
@media screen and (max-width: 500px){
    /* .roulette {padding: 4% 9.5% 4.19%;} */
    .count-area .count {font-size: 85%;}
    .form .description p,
    .form .description .ad_txt,
    .form .description span {font-size: 80%;}
    .form .footer_01 .description p,
    .form .footer_01 .description .ad_txt,
    .form .footer_01 .description span {font-size: 70%;}
    .form .footer_02 .description p,
    .form .footer_02 .description .ad_txt,
    .form .footer_02 .description span {font-size: 70%;}
    .form .question_box .q_select label {font-size: 1.45rem; border-radius: 1rem;}
    #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {padding: unset;}
    .form-box .description {padding-bottom: 0%;}
    .form .video-area {border-width: 4px;}
    .form .video-area::after {bottom: 8px; right: 8px;}
    [class^="popup-"] .btn-box button {width: 115px; height: 50px;}

    .form .submit input[type="image"] {width: 71.46% !important;}

    .form .formContents .description * {font-size: 85%;}

    .form .table_box + .table_box {margin-top: 4.5%;}

    .sub_txt {font-size: 85%;}

    .form .table_box .legend {font-size: 125%;}

    .table_box + .sub_txt {font-size: 70%;}
}
    
</style>
<!-- include -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>
<body id="page_landing_c" class="loaded">
    <main>
        <div id="wrap">
            <div class="form">
                <form id="form-1" method="POST" accept-charset="utf-8"> 

                    <div class="formContents"> 
                        <!-- <div class="clock-work"></div> -->
                        <section class="page" id="page-1">
                            <div class="poster_01">
                                <div class="img-area">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.jpg">
                                    <div class="count-area">
                                        <div class="count-box img-area">
                                            오늘 남은 무료 검사 : 
                                            <span class="count">40</span>명
                                        </div>
                                        <p class="sub-txt">
                                            ＊마감 시 혜택이 종료됩니다＊
                                            <span>광고를 통해서만 접근 가능한 페이지입니다</span>
                                        </p>
                                    </div>
                                    <img class="top-img" src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png">
                                </div>
                            </div>
                            <div class="poster_02">
                                <div class="img-area">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png">
                                </div>
                                <div class="agBox">
                                    <a href="javascript:void(0);" class="btn-agreement">혜택 제공을 위한 <b>개인정보처리방침</b>에 동의해 주세요</a>
                                </div>
                                <p class="paging">
                                    <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png"></button>
                                </p>
                                <p class="sub-txt">* 소요 시간 : 약 10초</p>
                            </div>
                            <div class="poster_03">
                                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.png"></div>
                            </div>
                        </section>
            
                        <section class="page" id="page-2">
                            <div class="inner">
                                <div class="img-area poster_04">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/gage_01.png">
                                </div>
                                <div class="img-area poster_05">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/q_01.png">
                                </div>
                                <div class="question_box">
                                    <div class="q_select">
                                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="뱃살 / 팔뚝살 등 체지방">뱃살 / 팔뚝살 등 체지방</label>
                                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="푸석해진 피부 컨디션 ">푸석해진 피부 컨디션 </label>
                                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="체지방과 피부 둘 다">체지방과 피부 둘 다</label>
                                        <label><input type="radio" onclick="setTimeout(show3pg, 100)" onclick="pageFuc(2,$(this))" name="tadd1" value="전반적인 몸 상태가 궁금함 ">전반적인 몸 상태가 궁금함 </label>
                                    </div>
                                </div>
                                <p class="paging">
                                    <!-- <button type="button" onclick="pageSelFuc(4,$(this))" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_01.png"></button> -->
                                </p>
                            </div>
                        </section>

                        <section class="page" id="page-3">
                            <div class="inner">
                                <div class="img-area poster_06">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/gage_02.png">
                                </div>
                                <div class="img-area poster_07">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/q_02.png">
                                </div>
                                <div class="question_box">
                                    <div class="q_select">
                                        <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tadd2" value="최근 확인한 적 없음 (6개월 이상)">최근 확인한 적 없음 <span class="sm-txt">(6개월 이상)</span></label>
                                        <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tadd2" value="대략 알지만 정확한 수치는 모름">대략 알지만 정확한 수치는 모름</label>
                                        <label><input type="radio" onclick="setTimeout(show4pg, 100)" onclick="pageFuc(3,$(this))" name="tadd2" value="관리 중이지만 변화가 궁금함">관리 중이지만 변화가 궁금함</label>
                                    </div>
                                </div>
                                <div class="img-area poster_08">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.png">
                                </div>
                                <!-- <p class="paging">
                                    <button type="button" onclick="pageSelFuc(5,$(this))" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_01.png"></button>
                                </p> -->
                            </div>
                        </section>

                        <section class="page" id="page-4">
                            <div class="inner">
                                <div class="img-area poster_09">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/gage_03.png">
                                </div>
                                <div class="img-area poster_10">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/q_03.png">
                                </div>
                                <div class="form-box poster_11">
                                    <div class="formGroup">
                                        <div class="table_box top">
                                            <input type="text" name="name" id="name" value="" class="inp" required autocomplete="off" placeholder="이름"/>
                                        </div>
                                        <div class="table_box middle">
                                            <input type="tel" name="age" id="age" value="" class="inp" required autocomplete="off" maxlength="2" placeholder="나이"/>
                                        </div>
                                        <div class="table_box bottom">
                                            <input type="tel" name="phone" id="phone" value="010" class="inp inp-phone" required autocomplete="off" maxlength="11" placeholder="전화번호"/>
                                        </div>
                                        <p class="sub_txt">타인의 정보를 무단으로 도용할 시, 관련 법령에 따라 제재를 받을 수 있습니다</p>
                                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_02.png" /></div>
                                    </div>
                                    <div class="description">
                                        <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                        <span id="target">대상자 : ${resVo.target}</span>
                                    </div>
                                    <p class="sub_txt">
                                        안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br /> 상담 외 어떠한 목적으로도 사용하지 않습니다. 
                                    </p>
                                </div>
                            </div>
                        </section>

                        <!-- 개인정보처리방침 전문 -->
                        <div id="modal2" class="modal modal2" style="display: none;">
                            <div class="modal-content">
                                <span class="close" id="close">×</span>
                                <p>
                                </p>
                            </div>
                        </div>
                        <!-- <div class="description">
                            <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                            <span id="target">대상자 : ${resVo.target}</span>
                        </div> -->
                        <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>	 -->
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
            <div class="container">
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    if (typeof window.sungmoAgreementWithText !== 'function') {
        window.sungmoAgreementWithText = function(policyText, selector) {
            var targetSelector = selector || '.modal-content p';
            var modal = $(targetSelector);
            modal.text((policyText || '').trim());
            modal.css('white-space', 'pre-line');
        };
    }

    history.scrollRestoration = 'manual';

    $(document).ready(function() {
        let count = 37; // 시작 인원
        const fastInterval = 1500;   // 37 ~ 10 구간
        const slowInterval = 3500;   // 9 ~ 4 구간

        function updateCount() {
            $('.count').text(count);
                // 4에서 멈춤
                if (count <= 4) return;
                // 10 이상이면 빠르게, 9 이하이면 느리게
                const delay = count >= 10 ? fastInterval : slowInterval;
                // 다음 감소 예약
                setTimeout(function() {
                    count--;
                    updateCount();
                }, delay);
            }
            // 페이지 로드 시 즉시 표시 + 카운트 시작
            updateCount();
        });

		//드래그, 우클릭 방지
		blockSourceView();
		initDate();
        
        sungmoAgreementWithText(`개인정보처리방침
            자사 제휴의 요청 개인정보 수집 및 이용 동의

            [개인정보 수집 및 이용 동의]

            - 수집 · 이용 주체 : 이벤트 신청
            - 수집 · 이용 목적 : 신청한 이벤트 안내, 추가적인 상담 및 방문 예약, 이벤트 신청자 관리
            - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
            - 보유 및 이용 기간 : 관련 법령에서 정한 보존 기간

            * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여가 제한됩니다.
            * 고객 동의 철회 시 지체없이 파기합니다.

            [개인정보 처리위탁 동의]

            - 수탁자 : 자사 제휴의 요청
            - 위탁 업무 내용
            └ 온라인, 모바일을 통한 고객 정보 수집 및 관리
            └ 고객정보 서버 운영 및 관리
            └ 서비스 신청 내역 관리를 위한 개인정보 전송
            └ 서비스 제공을 위해 필요한 개인정보 관련 업무 처리
            - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
        `)

    function resetPage1() {
        // page-1 자체
        gsap.set('#page-1', { display: 'block', opacity: 1 });

        // 내부 요소들 원위치
        gsap.set('#page-1 .poster_01, #page-1 .poster_02, #page-1 .agBox', {
            x: 0,
            y: 0,
            opacity: 1,
            clearProps: 'transform'
        });
    }


    // 개인정보 처리방침 관련 이벤트
    var modal2 = document.getElementById("modal2");
    var agree = document.querySelector(".agBox .btn-agreement");
    var close2 = document.getElementById("close");
    agree.onclick = function () { modal2.style.display = "block"; }
    close2.onclick = function () { modal2.style.display = "none"; }

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

    let isAnimating = false; // 애니메이션 상태 플래그
    // 첫번째 페이지
    function show1pg(){
        const animation01 = gsap.timeline();
        animation01.from('#page-1 .poster_01', { y: +50, delay: 0.2, opacity: 0, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_02', { y: +50, delay: 0.4, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .poster_03', { y: +50, delay: 0.6, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
        animation01.from('#page-1 .agBox', { y: +50, delay: 0.8, opacity: 0, stagger: 0.1, ease: "power1.out"},0);
    }
    show1pg();
    // 두번째 페이지
    function show2pg() {
        history.scrollRestoration = 'manual';

        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation02 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });

        const isMobile = window.matchMedia("(max-width: 768px)").matches;

        animation02.to('#page-1 .poster_01', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_02', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .paging', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1 .poster_03', { x: -100, opacity: 0, delay: 0.8, duration: 0.2, ease: "power1.out"}, 0);
        animation02.to('#page-1', { display: 'none' });
        animation02.to('#page-2', { display: 'block', duration: 0.1 });
        animation02.from('#page-2 .poster_04', {x: +200, opacity: 0, duration: 0.2});
        animation02.from('#page-2 .poster_05', {x: +200, opacity: 0, duration: 0.2});
        // animation02.from('#page-2 .paging', {x: +200, opacity: 0, delay: 0.2, duration: 0.2});
        animation02.from('#page-2 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        // animation02.from('#page-2 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.3, stagger: 0.1});
    }

    // 세번째 페이지
    function show3pg() {
        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
        isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        animation03.to('#page-2 .poster_03', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_05', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .poster_06', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-2 .paging', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
        // animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3', { display: 'block', duration: 0.1 });
        animation03.from('#page-3 .poster_06', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .poster_07', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-3 .question_box .q_select > label', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
        animation03.from('#page-3 .poster_08', {x: +200, opacity: 0, duration: 0.2});
        // animation03.from('#page-3 .next_btn_inQuestion', {x: +200, opacity: 0, duration: 0.2, stagger: 0.1});
    }
    // 마지막 페이지
    function show4pg() {
        history.scrollRestoration = 'manual';

        if (isAnimating) return; // 이미 애니메이션 중이면 실행 안 함
            isAnimating = true; // 애니메이션 시작 상태로 변경

        const animation03 = gsap.timeline({
            onComplete: () => {
                isAnimating = false; // 애니메이션 끝나면 플래그 해제
            }
        });
        // animation03.to('#page-2 .poster_03', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-2 .poster_04', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-2 .question_box .q_select > label', {x: -100, opacity: 0});
        // animation03.to('#page-2 .next_btn_inQuestion', {x: -100, opacity: 0});
        // animation03.to('#page-2', { display: 'none' });
        animation03.to('#page-3 .poster_06', { x: -100, opacity: 0, delay: 0.2, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-3 .poster_07', { x: -100, opacity: 0, delay: 0.4, duration: 0.2, ease: "power1.out"}, 0);
        animation03.to('#page-3 .question_box .q_select > label', {x: -100, opacity: 0});
        animation03.to('#page-3 .poster_08', { x: -100, opacity: 0, delay: 0.6, duration: 0.2, ease: "power1.out"}, 0);
        // animation03.to('#page-3 .next_btn_inQuestion', {x: -100, opacity: 0});
        animation03.to('#page-3', { display: 'none' });
        animation03.to('#page-4', { display: 'block', duration: 0.1 });
        animation03.from('#page-4 .poster_09', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .poster_10', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .poster_11', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .table_box.top', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .table_box.middle', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .table_box.bottom', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .submit', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .description', {x: +200, opacity: 0, duration: 0.2});
        animation03.from('#page-4 .sub_txt', {x: +200, opacity: 0, duration: 0.2});
    }

    //설문 클릭 시 클래스on 추가
    $('input[name*="tadd"]').bind('click', function() {
        $(this).closest('.q_select').find('label').removeClass('on');			
        $(this.parentNode).addClass('on');	
    });

    // 버튼 페이지 이동 함수 (설문)
	function pageSelFuc(num, obj) {
        if(!isAnimating){
            if($('input[name="tadd' + num + '"]').is(':checked')) {
                $('.section0' + num).fadeOut(function() {
                    $('.section0' + (num + 1)).fadeIn();
                    $(document).scrollTop(0);
                });
            } else {
                alert('설문을 체크해 주세요.');
            }
        }
	}

    function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

        // let tage = procForm.querySelector(`input[name="tage"]:checked`);
		// if (!tage) {
		// 	alert("연령을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='age']").value = tage.value;
		// }

		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("설문을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
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
			,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>