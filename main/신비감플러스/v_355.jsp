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

            에스디엘에이치(이하 “회사”)은 개인정보보호법 등 관련 법령을 준수하며, 정보주체의 권익 보호를 위해 개인정보를 적법하고 안전하게 처리합니다. 회사는 본 개인정보처리방침을 통해 개인정보의 수집·이용 목적, 처리 및 보유기간, 제3자 제공 및 위탁, 정보주체의 권리 등을 안내드립니다.

            ■ 수집하는 개인정보 항목 및 방법

            1. 수집 항목

            -회원가입 및 고객관리
            필수: 이름, 아이디, 비밀번호, 휴대전화번호, 이메일주소
            선택: 생년월일, 성별

            - 상품 주문 및 배송
            수령인 이름, 배송지 주소, 연락처

            - 결제 및 환불
            결제수단 종류, 결제 승인 정보

            - 마케팅 및 이벤트 참여 시(선택 동의)
            이름, 휴대전화번호, 이메일주소, 구매이력

            - 서비스 이용 과정에서 자동 수집
            IP 주소, 쿠키, 접속 로그, 방문 일시, 이용 기록

            ※ 회사는 질병 정보 등 민감한 건강정보는 수집하지 않습니다.

            2. 수집 방법
            - 홈페이지(회원가입, 주문, 문의), 이벤트 참여, 고객 상담(전화, 문자, 이메일)

            ■ 개인정보의 수집 및 이용 목적

            회사는 수집한 개인정보를 다음의 목적을 위해 이용합니다.

            1. 회원 관리
            - 회원 식별 및 본인 확인
            - 고객 문의 응대 및 공지사항 전달

            2. 상품 주문 및 배송 서비스 제공
            - 주문 처리, 결제, 배송, 환불

            3. 마케팅 및 광고 활용(선택 동의)
            - 이벤트 안내, 할인 정보, 신제품 소식 제공
            - 문자(SMS), 카카오 알림톡, 이메일 발송

            ■ 개인정보의 처리 및 보유기간

            서비스 이용자가 “회사”의 회원으로서 서비스를 계속 이용하는 동안 이용자의 개인정보를 계속 보유하며 서비스의 제공 등을 위해 이용합니다. 이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성 또는 이벤트 참여시 이벤트 페이지에 별도 명시한 수집동의 받은 날로부터 동의 받은 기간이 만료되거나 이용자가 직접 삭제, 수정 또는 회원 탈퇴한 경우에 재생할 수 없는 방법으로 파기합니다.
            단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.
            상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 “회사”는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.


            - 웹사이트 방문기록
            • 보존 이유 : 통신비밀보호법
            • 보존 기간 : 3개월
            - 본인확인에 관한 기록
            • 보존 이유 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률
            • 보존 기간 : 6개월 (*해당 서비스 이용 시에 한함)
            - 소비자의 불만 또는 분쟁처리에 관한 기록
            • 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률
            • 보존 기간 : 3년
            - 신용정보의 수집/처리 및 이용 등에 관한 기록
            • 보존 이유 : 신용정보의 이용 및 보호에 관한 법률
            • 보존 기간 : 3년

            ■ 개인정보의 제3자 제공 및 위탁에 관한 사항
            - "회사"는 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. “회사”의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다. 다만, 법령에 따라 제공이 필요한 경우에는 사전 동의를 받거나 관련 법령에 따라 제공합니다.

            - 위탁업체: ㈜세이브마케팅 / 010-4383-1224 / savemarketing1@gmail.com
            - 위탁업무 내용: 광고를 통한 개인정보 취급 및 보관, 서버 관리

            ■ 정보주체의 권리의무 및 그 행사방법

            1. 개인정보 열람 요구: “회사”에서 보유하고 있는 개인정보파일은 개인정보보호법 제35조(개인정보의 열람)에 따라 열람을 요구할 수 있습니다. 다만 개인정보 열람 요구는 개인정보보호법 제35조 제5항에 의하여 다음과 같이 제한될 수 있습니다.
            - 법률에 따라 열람이 금지되거나 제한되는 경우
            - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우

            2. 개인정보 정정•삭제 요구: “회사”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제36조(개인정보의 정정, 삭제)에 따라 “회사”에 개인정보의 정정, 삭제를 요구할 수 있습니다. 다만, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.

            3. 개인정보 처리정지 요구: “회사”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제37조(개인정보의 처리정지 등)에 따라 회사에 개인정보의 처리정지를 요구할 수 있습니다. 또한 만 14세 미만 아동의 법정대리인은 회사에 그 아동의 개인정보의 열람, 정정, 삭제, 처리정지 요구를 할 수 있습니다. 다만, 개인정보 처리정지 요구시 「개인정보보호법」 제37조 제2항에 의하여 처리정지 요구가 거절될 수 있습니다.
            - 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우
            - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우
            - 개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우
            정보주체는 회사에 대해 언제든지 다음과 같은 권리를 행사할 수 있습니다.


            ■ 개인정보의 파기절차 및 파기방법
            “회사”는 원칙적으로 개인정보의 보유기간이 경과했거나 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.

            1. 파기절차
            이용자가 입력한 정보는 보유기간이 경과했거나 처리목적이 달성 후 내부 방침 및 관련 법령에 따라 파기합니다. (개인정보처리 및 보유기간 참조)

            2. 파기기한
            이용자의 개인정보는 개인정보의 보유기간이 경과된 경우 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.

            3. 파기방법
            “회사”에서 처리하는 개인정보를 파기할 때에는 다음의 방법으로 파기 합니다.
            - 전자적 파일 형태인 경우: 복원이 불가능한 방법으로 영구삭제
            - 전자적 파일의 형태 외의 기록물, 인쇄물, 서면, 그 밖의 기록매체인 경우: 파쇄 또는 소각

            ■ 개인정보의 안전성 확보 조치
            “회사”는 (개인정보보호법) 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다.

            1. 내부관리계획의 수립 및 시행
            “회사”은 (개인정보보호법) 제29조에 따라 내부관리 계획을 수립 및 시행합니다.

            2. 개인정보취급자 지정의 최소화 및 교육
            개인정보취급자의 지정을 최소화하고 내부관리 계획에 따라 정기적인 교육을 시행하고 있습니다.

            3. 관리적 대책
            - 입사 시 전 직원의 보안서약서를 통하여 사람에 의한 정보유출을 사전에 방지하고 개인정보보호정책에 대한 이행사항 및 직원의 준수여부를 감사하기 위한 내부절차를 마련하고 있습니다.
            - 개인정보 관련 처리자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며 입사 및 퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다.

            4. 개인정보에 대한 접근 제한
            개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근을 통제하고, 침입차단시스템과 탐지시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며 권한 부여, 변경 또는 말소에 대한 내역을 기록하고, 그 기록을 최소 3년간 보관하고 있습니다.

            5. 접속기록의 보관 및 위변조 방지
            개인정보처리시스템에 접속한 기록(웹 로그, 요약정보 등)을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 관리하고 있습니다.

            6. 개인정보의 암호화
            이용자의 개인정보는 암호화 되어 저장 및 관리되고 있습니다. 또한 중요한 데이터는 저장 및 전송 시 암호화하여 사용하는 등의 별도 보안기능을 사용하고 있습니다.

            7. 해킹 등에 대비한 기술적 대책
            회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.

            8. 비인가자에 대한 출입 통제
            개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.

            ■ 개인정보 보호책임자
            “회사”는 개인정보를 보호하고 개인정보와 관련된 사항을 처리하기 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
            이름 : 이채훈
            직위 : 팀장
            소속 : 마케팅3팀
            이메일: sinbigamplus@savemkt.kr

            ■ 개인정보 처리방침의 변경
            이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 가능한 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
            - 시행일자: 2011년 9월 30일
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