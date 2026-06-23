<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Aggro/Aggro.css');

    * {font-family: "Pretendard", sans-serif; box-sizing: border-box;}
    #page_landing_c .wrap_curd * {font-size: 100%; font-family: inherit;}
    html{
        height: 100%;
    }
    main {position: relative;}
	.content {padding: 20px 10px;}
	.content + .content {border-top: 1px solid #ddd;}
	.content * {padding: 8px 10px;}
    .wrap_form .agBox {margin: 7px auto;}

    .count-area {position: relative;}
    .count-area .count {position: absolute; top: 25%; font-size: 470%; color: #ffd200; font-family: 'Pretendard'; font-weight: 700; left: 46.65%; letter-spacing: -0.04em; width: 9.5rem; text-align: center; line-height: 1;}

    /* .modal2 .modal-content p, .modal3 .modal-content p, .modal4 .modal-content p {height: auto;} */

    /* 실시간 신청 현황 */
.subscribe {background: none; display: flex; gap: 2%; padding: 0 0 5%; animation: slide 30s linear infinite; flex-shrink: 0; width: max-content;}
.subscribe .content {border-radius: 0.8em; background: url('//static.savemkt.com/event/v_${eventSeq}/marquee_bg.png') no-repeat center center / 100%; flex-shrink: 0; border-bottom: none; padding: 1em 2em; display: flex; justify-content: center; align-items: center; gap: 2em;}
.subscribe .content div {font-weight: 700; font-size: 245%; font-family: 'Pretendard'; padding: 0;}
/* .subscribe .content.default {} */
/* .subscribe .content.active {background: #00ffda;} */

/* 신청 현황 애니메이션 */
@keyframes slide {
	0% {transform: translateX(0);}
	100% {transform: translateX(-100%);}
}

    #page_landing_c main {max-width: 1080px; background-color: #000; overflow: hidden;}
    #page_landing_c {padding: 0; border: 0;}
    #page_landing_c .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}

    #wrap{font-family: 'noto sans kr'; overflow: hidden;}
    .top-img {width: 100%; margin: 0 auto;}

    .video-area {position: relative;}
    .video-area video {position: absolute;
    width: 93.407407%;
    left: 50%;
    transform: translateX(-50%);
    bottom: 20%;}

    .img-area {position: relative;}
    .img-area .btm_box {position: absolute; bottom: 4%; left: 5%; width: 45.37037%; color: #fff;}
    #page_landing_c .btm_box .agBox label span {color: #fff;}
    #page_landing_c  .img-area .btm_box .agBox {margin: 0 auto 2%; color: #fff; transition: 0s;}
    #page_landing_c  .img-area .btm_box .agBox .btn-agreement {font-weight: 700;}
    #page_landing_c  .img-area .btm_box2 {bottom: 7%; left: 50%; transform: translateX(-50%); width: 67.592593%;}
    #page_landing_c  .img-area .btm_box2 .agBox {margin: 2% auto 0; color: #000;}
    #page_landing_c .btm_box2 .agBox label span {color: #000;}

    .select-box {width: 100%;}
    .select-box .q_select {outline: none; border: none; width: 100%; padding: 3%; text-align: center; border: 1px solid #bebebe; border-radius: 0.3em; font-weight: 600;}
   
    #page_landing_c .wrap_form {margin: 0 0 5%; padding: 9.35% 2.4% 30px !important; width: 95.834%; box-sizing: border-box; border-radius: 25px;}
    #page_landing_c .wrap_curd {background-color: #fff;}
    #page_landing_c .wrap_curd .question_container {padding-top: 0 !important;}

    /* user db입력칸 (이름) */
    #page_landing_c .wrap_curd .q_select {display: grid; grid-template-columns: repeat(3, 1fr); gap: 1%; font-size: 150%; flex-grow: 1;}
    #page_landing_c .description p, #page_landing_c .description .ad_txt {text-align: center; font-family: 'Pretendard';}
    
    #page_landing_c .description {width: 100%; padding: 3.37% 3.9% 1.37%; text-align: center; font-family: 'Pretendard';}
    #page_landing_c .description p {color: #000; padding: 0; font-size: 150%; letter-spacing: -0.02em;}
    #page_landing_c .description .ad_txt b {color: #fff640; font-size: 100%; letter-spacing: -0.02em; font-weight: 400;}
    #page_landing_c .description .ad_txt,
    #page_landing_c .description .target {color: #000; font-size: 150%; padding: 0; letter-spacing: -0.02em;}

    #page_landing_c .question {position: relative;}
    #page_landing_c .question_box {width: 100%; margin: 9.635% auto 2%; padding: 0 4%;}
    #page_landing_c .question_box  [class^="user_"] {display: flex; align-items: center; justify-content: center; column-gap: 32px;}
    #page_landing_c .question_box > div:not(.formContents),
    #page_landing_c .question_box > .legend {width: 100%; font-size: 150%;}
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 2.655%;}
    #page_landing_c .legend {flex-shrink: 0; position: relative; display: block; width: 25%; height: 35px; font-size: 167%; font-weight: 600; line-height: 1; letter-spacing: -1.78px; color: #000; text-align: justify;}
    #page_landing_c .legend::after {content: ''; display: inline-block; width: 100%;}
    #page_landing_c .agBox {text-align: center; color: #000; font-size: 180%; margin: 4% auto 1%; font-family: 'Pretendard';}
    #page_landing_c .agBox .legend {max-width: max-content;}
    #page_landing_c .agBox .btn-agreement {line-height: 1;}

    #page_landing_c input[type="checkbox"] + span {color: #000;}
    #page_landing_c input[type="checkbox"]:checked + span:after {border-color: #000;}
    /* #page_landing_c .agBox label {display: flex; align-items: center;}  */
    #page_landing_c .agBox label span {color: #000;} 
    .wrap_form .agBox a {color: #000;}

    .selected_area{background-color:#000; padding:3% 5%;}
    #page_landing_c .question_box .agBox .question {display: flex; align-items: center; width: 100%;}
    /* #page_landing_c .question_box .q_select{position: absolute; z-index: 1; display: flex; top: 23%; left: 29%; width: 70%;} */

    /* 설문값, 동의, 미동의 버튼 공통 */
    
    #page_landing_c .question_box .q_select label {background-color: #fff; width: 100%; height: 76px;}
    #page_landing_c .question_box .q_select label, 
    label.selected_label {display: inline-flex; align-items: center; justify-content: center; border-radius:0.5rem; font-size: 100%; text-align: center;  color: #0a151e; font-weight: 400; cursor: pointer; padding: 3% 2%; border:1px solid #bebebe;}
     #page_landing_c .question_box .q_select label + label {margin-left: 1%;}
     /* #page_landing_c .question_box .question:nth-of-type(2) .q_select label:last-child {padding: 0;} */
    #page_landing_c .question_box .q_select:nth-of-type(2) label.on, label.add1{background-color: #000;}
    #page_landing_c .question_box .q_select label.on, label.add3{background-color: #8ed3ff; color:#00385c;}

    /* user db입력칸 (이름) */
    #page_landing_c .user_info {width: 90%; margin: 0 auto;}
    #page_landing_c .user_info .user_name {position: relative; margin-bottom: 2%;}
    #page_landing_c .user_info .user_name img {width:100%;}

    /* user db입력칸 (연락처) */
    #page_landing_c .user_info .user_phone {position: relative; margin-bottom: 2%;}
    #page_landing_c .user_info .user_phone img {width:100%;}

    /* 이름, 연락처 공통 */
    #page_landing_c .user_info input {background: #ffeef4; padding: 2%; font-size: 150%; border-radius: 0.5rem; width: 67%;
    position: absolute; left: 29%; top: 14%; height: 70%; border: 1px solid #e3ccd4;}

    #page_landing_c .inp {font-size: 255%; line-height: 1; border: 5px solid #c20000; color: #00003d; min-height: 34px; padding: 2.674% 3%; box-sizing: border-box; margin-left: 0; border-radius: 1.1rem; transition: 0s; text-align: center; font-weight: 700; font-family: 'Aggro';}
    #page_landing_c .inp::placeholder {color: #6d6d6d;}
    /* #page_landing_c input[type="checkbox"] + span:before {border-color:#fff;} */
    /* #page_landing_c .submit input[type="image"] {animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;} */

    #page_landing_c ul.table_box{width:90%;}
    #page_landing_c ul.table_box li{display: flex; margin-bottom:2%;   }
    #page_landing_c ul.table_box li  > * {background-color: #fff;  padding:1% 10px; border-radius:25px; border:1px solid #000; box-sizing: border-box;}
    #page_landing_c ul.table_box li .th{width:20%;}
    #page_landing_c ul.table_box li .td{width: 78%; display:none; position: relative;}
    #page_landing_c ul.table_box li .td.cursor_box::after{position: absolute; top: 50%; left: 54%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 50%; background-color: #000; animation: blink-effect 1s step-end infinite;}
    #page_landing_c ul.table_box li .td.cursor_box span{position: absolute; top: 50%; left: 60%; transform: translateY(-50%); display: block; font-size:120%;}

    .question_container {padding: 3% 0 0;}

    .btn-area {position: relative;}
    .btn-area .db_btn {position: absolute; bottom: 3.07%; padding: 0 3.7%;}

    .gif-area {overflow: hidden;}
    .gif-area img {width: calc(100% + 1px); margin: -1px;}

    .mr-1 {width: calc(100% + 1px);}

    #page_landing_c .wrap_curd .submit {margin: 0 auto; padding: 0;}
    #page_landing_c .wrap_curd .submit input[type="image"] {
        width: 100%;
        margin: 0 auto 0;
    }

    .db_btn, .submit input[type="image"] {animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite;}
        
    @keyframes pulsating {
        50% {
            transform: scale(0.95);
        }
    }
    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
        display: none;
    }

    .fixed {
        position: fixed;
        z-index: 9;
        bottom: 0%;
        cursor: pointer;
    }

    /* 상단 슬라이드 */
.swiper-area {position: relative;}
.swiper-area .swiper {position: absolute; bottom: 8.507%; left: 4.825%; width: 90.353%;}
.swiper-area .swiper.mySwiper2 {bottom: 31.358%; left: 3.804%; width: 92.394%;}
.swiper-slide img {width: 100%;}

/* 개인정보 처리방침 */
.agBox {display: flex; align-items: center; justify-content: center; padding-bottom: 2.5%; font-family: 'Paperlogy'; font-weight: 500; font-size: 1.4rem; line-height: 1;}
.btn-agreement {flex-shrink: 0; text-align: center; font-size: 1.4rem;  display: block; color: #000; font-family: 'Paperlogy';}
.btn-agreement b {font-weight: 700; font-size: 100%; font-family: 'Paperlogy';}

/* 동의 박스 (전체/필수/선택) */
.agree_box {width: 50%; margin: 0 auto 2%; padding: 0 2%; font-family: 'Paperlogy'; box-sizing: border-box;}
.agree_box > * {font-size: 1.2rem !important;}
.agree_box ul {list-style: none; padding: 0; margin: 0;}
.agree_box li {display: flex; align-items: center; padding: 6px 0; font-size: 1.6rem; color: #222; font-weight: 500; line-height: 1.3;}
.agree_box li label {display: inline-flex; align-items: center; cursor: pointer; font-family: 'Paperlogy'; font-weight: 500;}
.agree_box li input[type="checkbox"] {
    appearance: none;
    -webkit-appearance: none;
    width: 18px;
    height: 18px;
    border: 1.5px solid #444;
    background-color: #fff;
    border-radius: 2px;
    margin-right: 8px;
    cursor: pointer;
    flex-shrink: 0;
    position: relative;
    vertical-align: middle;
}
.agree_box li input[type="checkbox"]:checked {
    background-color: #222;
    border-color: #222;
}
.agree_box li input[type="checkbox"]:checked::after {
    content: '';
    position: absolute;
    left: 5px;
    top: 1px;
    width: 5px;
    height: 10px;
    border: solid #fff;
    border-width: 0 2px 2px 0;
    transform: rotate(45deg);
}
.agree_box li.all-agree {font-weight: 700; padding-bottom: 4px;}
.agree_box li .btn-detail {color: #222; font-weight: 700; margin-left: 6px; cursor: pointer; text-decoration: none; font-family: 'Paperlogy';}
.agree_box li .btn-detail:hover {text-decoration: underline;}

/* 약관 팝업 */
.agree-popup-overlay {
    display: none;
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background-color: rgba(0, 0, 0, 0.6);
    z-index: 9998;
}
.agree-popup-overlay.show {display: block;}
.agree-popup {
    display: none;
    position: fixed;
    top: 50%; left: 50%;
    transform: translate(-50%, -50%);
    width: 90%;
    max-width: 720px;
    background: #fff;
    border-radius: 12px;
    z-index: 9999;
    box-shadow: 0 10px 30px rgba(0,0,0,0.3);
    /* overflow: hidden; */
    flex-direction: column;
    font-family: 'Paperlogy';
}
.agree-popup.show {display: flex;}
.agree-popup .ag-header {
    flex-shrink: 0;
    padding: 30px 20px 10px;
}
.agree-popup .ag-header h2 {
    margin: 0;
    font-size: 22px;
    color: #000;
    font-family: 'Paperlogy';
    font-weight: 700;
    background-color: transparent;
    padding: 0;
    height: auto;
    line-height: 1;
}
.agree-popup .ag-close {
    position: absolute;
    top: 5px;
    right: 10px;
    width: 36px;
    height: 36px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: none;
    border: none;
    color: #000;
    font-size: 28px;
    font-weight: bold;
    cursor: pointer;
    line-height: 1;
    padding: 0;
    font-family: 'Paperlogy';
    z-index: 10;
    user-select: none;
}
.agree-popup .ag-body {
    max-height: 500px;
    overflow-y: auto;
    padding: 10px 20px 20px;
    color: #333;
    font-size: 1.3rem;
    line-height: 1.6;
    font-family: 'Paperlogy';
    font-weight: 400;
    word-break: break-all;
}
.agree-popup .ag-body .intro {margin-bottom: 14px; white-space: pre-line;}
.agree-popup .ag-body .toc {margin-bottom: 18px; padding-left: 18px;}
.agree-popup .ag-body .toc li {list-style: decimal; margin: 2px 0;}
.agree-popup .ag-body .section-title {
    margin: 16px 0 6px;
    font-weight: 700;
    font-size: 1rem;
    font-family: 'Paperlogy';
}
.agree-popup .ag-body .section-content {
    padding: 5px 0;
    margin-bottom: 6px;
}


@media screen and (max-width: 820px){
    .timer-box #timer {font-size: 2.5rem;}
}
@media screen and (max-width: 768px){
    .subscribe {padding: 0 2% 3%;}
    .subscribe .content > div {margin-right: 0; font-size: 1rem;}
    .subscribe_container {padding: 0 1.5rem 1rem 1.5rem;}

    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
    .subscribe_container .title {padding: 2rem 0 0; font-size: 1.8rem; margin-bottom: 0.6875rem;}

    #page_landing_c .formGroup .user_info {font-size: 4vw; padding: 2.9% 3.95% 3%;}

    #page_landing_c .question_box {width: 100%;}
    .wrap_form .agBox {width: 100%;}
    #page_landing_c .wrap_curd label {font-size: 12px;}
    #page_landing_c .formGroup .user_info + .user_info {margin-top: 3%;}
    #page_landing_c .formGroup .user_info input {margin-left: 5px;}

    .wrap_form .description p, .wrap_form .description .ad_txt {font-size: 3.85vw;}
    #page_landing_c .question_box .q_select label, label.selected_label {font-size: 85%;}

}
@media screen and (max-width: 640px){
}
@media screen and (max-width: 480px){
    .agree_box {width: 95%;}
    .agree_box li {font-size: 1.05rem; padding-top: 2px;}
    .agree_box li input[type="checkbox"] {width: 14px; height: 14px; margin-right: 6px;}
    .agree_box li input[type="checkbox"]:checked::after {left: 4px; top: 0px; width: 4px; height: 8px;}
    .agree-popup .ag-header {padding: 26px 16px 8px;}
    .agree-popup .ag-header h2 {font-size: 16px;}
    .agree-popup .ag-body {height: 350px; font-size: 1.05rem; padding: 8px 16px 16px;}
    .agree-popup .ag-body .section-title {font-size: 1.15rem;}

    .agree_box li label {font-size: 80%;}
    .agree_box li .btn-detail {font-size: 75% !important;}

        #page_landing_c input:not( [type="checkbox"], [type="radio"], [type="range"] ), select {
            padding: 4% 3% 2%;
        }
    #page_landing_c .img-area .btm_box .agBox {font-size: 70%; font-weight: 400;}
    #page_landing_c .btm_box .agBox label span {font-size: 80%;}
    #page_landing_c .description {padding: 3.37% 0 1.37%;}
    #page_landing_c .description p {font-size: 90%;}
    #page_landing_c .description .ad_txt, #page_landing_c .description .target {font-size: 90%; word-break: keep-all;}
    #page_landing_c .agBox label span {font-size: 90%;}
    #page_landing_c .legend {font-size: 90%; height: 25px;}
    #page_landing_c .inp {font-size: 135%; border-radius: 1rem; border-width: 4px;}
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) {margin-top: 5.1%;}
    #page_landing_c .question_box .q_select label {height: 56px; font-size: 70%;}

    .count-area .count {font-size: 170%; left: 46.5%; width: 3.7rem;}
    #page_landing_c .agBox {font-size: 90%;}

}
@media screen and (max-width: 395px){
    #page_landing_c .wrap_form .description.orage-box > * {font-size: 85%;}

}
@media screen and (max-width: 375px){
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fonts-archive/GmarketSans/GmarketSans.css" type="text/css"/>

<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.gif"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.gif"></div>
        <div class="img-area gif-area">
            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.gif">
            <!-- <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg"> -->
        </div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.gif"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.jpg"></div>
        <div class="img-area video-area">
            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_05.gif">
            <video id="location" playsinline autoplay muted loop src="//static.savemkt.com/event/v_${eventSeq}/video.mp4" type="video/mp4"></video>
            <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
        </div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_06.jpg"></div>
        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_07.gif"></div>

            <div class="wrap_form">
                <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                    <div class="formGroup">
                        <div class="form_inner">
                            <div class="question_container">
                                <div class="q_text img-area">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png">
                                </div>
                                <div class="question_box">
                                    <div class="user_name">
                                        <!-- <span class="legend">이 름</span> -->
                                        <input type="text" name="name" id="name" class="inp" required placeholder="성함" autocomplete="off">
                                    </div>
                                    <div class="user_age">
                                        <!-- <span class="legend">나 이</span> -->
                                        <input type="tel" name="age" id="age" class="inp" required=""  placeholder="나이" autocomplete="off" maxlength="2" placeholder="">
                                    </div>
                                    <div class="user_phone">
                                        <!-- <span class="legend">연 락 처</span> -->
                                        <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                                    </div>
                                    <!-- <div class="user_text">
                                        <span class="legend">문 의</span>
                                        <input type="text" name="tadd1" id="tadd1" class="inp" required placeholder="(선택 사항)">
                                    </div> -->
                                </div>   
                            </div>
    
                        </div>
                        
                        <!-- <div class="agBox">
                            <label><input name="agBox" type="checkbox"><span>&nbsp;(필수) 개인정보 수집 및 이용 동의</span></label> <a href="#" class="btn-agreement">[자세히 보기]</a>
                        </div> -->
                        <div class="agree_box">
                                <ul>
                                    <li class="all-agree">
                                        <label>
                                            <input type="checkbox" id="chkAll"/>전체 동의
                                        </label>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox" id="agree1" name="agBox" class="chk_item" value="Y"/>(필수) 개인정보 수집 및 이용 동의
                                        </label>
                                        <a href="javascript:void(0);" class="btn-detail" onclick="openAgreePopup('agreePopup1'); return false;">[자세히 보기]</a>
                                    </li>
                                    <li>
                                        <label>
                                            <input type="checkbox" id="agree2" name="agree2" class="chk_item" value="Y"/>(선택) 광고성정보(전화, 문자) 수신 동의
                                        </label>
                                        <a href="javascript:void(0);" class="btn-detail" onclick="openAgreePopup('agreePopup2'); return false;">[자세히 보기]</a>
                                    </li>
                                </ul>
                            </div>

                        <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png" /></div>	

                        <!-- <div class="agBox">
                            <label><input name="agBox" type="checkbox"><span>개인정보수집 및 이용동의</span></label> <a href="#" class="btn-agreement">[내용 보기]</a>
                        </div> -->
                    </div>

                    <div class="description">
                        <p id="event-period"></p>
                        <span class="target">대상 : ${resVo.target}</span>
                        <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
                
            <!-- <div class="subscribe_container">
                <div class="subscribe_bg">
                    <div class="subscribe" data-limit="10">
                    </div>
                </div>
            </div> -->

            <div class="subscribe_group marquee__group subscribe"></div>

            <div class="container">
                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
                <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
            </div>
        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                    개인정보처리방침<br />
                    병원 제휴의 요청 개인정보 수집 및 이용 동의<br /><br />

                    [개인정보 수집 및 이용 동의]<br /><br />

                    - 수집 · 이용 주체 : 이벤트 신청<br />
                    - 수집 · 이용 목적 : 신청한 이벤트 안내, 추가적인 상담 및 방문 예약, 이벤트 신청자 관리<br />
                    - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용<br />
                    - 보유 및 이용 기간 : 의료법 등 관련 병령에서 정한 보존 기간<br /><br />

                    * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여가 제한됩니다.<br />
                    * 고객 동의 철회 시 지체없이 파기합니다.<br /><br />


                    [개인정보 처리위탁 동의]<br /><br />

                    - 수탁자 : 병원 제휴의 요청<br />
                    - 위탁 업무 내용<br />
                    └ 온라인, 모바일을 통한 고객 정보 수집 및 관리<br />
                    └ 고객정보 서버 운영 및 관리<br />
                    └ 서비스 신청 내역 관리를 위한 개인정보 전송<br />
                    └ 서비스 제공을 위해 필요한 개인정보 관련 업무 처리<br />
                    - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용
                </p>
            </div>
        </div>

        <!-- 동의 약관 팝업 오버레이 -->
        <div class="agree-popup-overlay" id="agreePopupOverlay" onclick="closeAgreePopup();"></div>

        <!-- (필수) 개인정보 수집 및 이용 동의 팝업 -->
        <div class="agree-popup" id="agreePopup1">
            <span class="ag-close" onclick="closeAgreePopup();">&times;</span>
            <div class="ag-header">
                <h2>개인정보처리방침</h2>
            </div>
            <div class="ag-body">
                <p class="section-title">병원 제휴의 요청 개인정보 수집 및 이용 동의</p>
                
                <div class="section-content">
                    [개인정보 수집 및 이용 동의]<br /><br />

                    - 수집 · 이용 주체 : 이벤트 신청<br />
                    - 수집 · 이용 목적 : 신청한 이벤트 안내, 추가적인 상담 및 방문 예약, 이벤트 신청자 관리<br />
                    - 수집 · 이용 항목 : 이름, 연락처, 성별, 출생연도, 설문내용<br />
                    - 보유 및 이용 기간 : 의료법 등 관련 병령에서 정한 보존 기간<br /><br />

                    * 동의를 거부할 권리가 있으나, 거부 시 이벤트 참여가 제한됩니다.<br />
                    * 고객 동의 철회 시 지체없이 파기합니다.<br /><br />


                    [개인정보 처리위탁 동의]<br /><br />

                    - 수탁자 : 병원 제휴의 요청<br />
                    - 위탁 업무 내용<br />
                    └ 온라인, 모바일을 통한 고객 정보 수집 및 관리<br />
                    └ 고객정보 서버 운영 및 관리<br />
                    └ 서비스 신청 내역 관리를 위한 개인정보 전송<br />
                    └ 서비스 제공을 위해 필요한 개인정보 관련 업무 처리<br />
                    - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용</div>
            </div>
        </div>

        <!-- (선택) 광고성정보 수신 동의 팝업 -->
        <div class="agree-popup" id="agreePopup2">
            <span class="ag-close" onclick="closeAgreePopup();">&times;</span>
            <div class="ag-header">
                <h2>개인정보 수집·이용 및 제공 동의서</h2>
            </div>
            <div class="ag-body">
                <div class="intro">뷰티트렌드(이하 "회사")가 [전립소 참당귀황귀 프리미엄] 등을 위한 목적으로 아래와 같이 귀하의 개인정보를 수집·이용하는 것에 동의합니다.</div>

                <p class="section-title">I. 홍보 및 마케팅 동의</p>
                <div class="section-content">- 수집목적 : 제품 상담 및 판매, 이벤트 등 광고성 정보 전달<br />
                - 수집항목 : (필수) 성명, 연락처, 성별, 나이<br />
                - 보유기간 : 수집동의일로부터 5년간<br /><br />

                ※ 회사는 전화, 문자, 이메일, 모바일 앱, 카카오톡 등을 통해 귀하에게 연락할 수 있습니다.<br />
                ※ 동의를 거부하실 수 있으나, 거부하는 경우 제품소개, 이벤트 참여 등의 소식을 받을 수 없습니다.</div>
            </div>
        </div>
    </main>
</body>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!--공통_script start --><script src="/js/agreement.js"></script><!--공통_script end-->
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    // ===== 동의 약관 팝업 (전역 함수, inline onclick에서 호출) =====
    function openAgreePopup(popupId) {
        console.log('[openAgreePopup] called with', popupId);
        var popups = document.querySelectorAll('.agree-popup');
        for (var i = 0; i < popups.length; i++) {
            popups[i].classList.remove('show');
        }
        var target = document.getElementById(popupId);
        if (target) {
            target.classList.add('show');
        } else {
            console.warn('[openAgreePopup] target not found:', popupId);
        }
        var overlay = document.getElementById('agreePopupOverlay');
        if (overlay) overlay.classList.add('show');
        document.body.style.overflow = 'hidden';
    }

    function closeAgreePopup() {
        console.log('[closeAgreePopup] called');
        var popups = document.querySelectorAll('.agree-popup');
        for (var i = 0; i < popups.length; i++) {
            popups[i].classList.remove('show');
        }
        var overlay = document.getElementById('agreePopupOverlay');
        if (overlay) overlay.classList.remove('show');
        document.body.style.overflow = '';
    }

    // 개인정보 처리방침(modal2) 관련 이벤트
    (function() {
        var modal2 = document.getElementById("modal2");
        var agree = document.querySelector(".agBox .btn-agreement");
        var close2 = document.getElementById("close");
        if (agree && modal2) {
            agree.onclick = function () { modal2.style.display = "block"; };
        }
        if (close2 && modal2) {
            close2.onclick = function () { modal2.style.display = "none"; };
        }
    })();

    // ===== 동의 박스 체크박스 동기화 =====
    $(document).ready(function() {
        var $chkAll = $('#chkAll');
        var $chkItems = $('.agree_box .chk_item');

        // 전체 동의 클릭 시 모든 항목 체크/해제
        $chkAll.on('click', function() {
            $chkItems.prop('checked', this.checked);
        });

        // 개별 체크 시 전체동의 동기화
        $chkItems.on('click', function() {
            var total = $chkItems.length;
            var checked = $chkItems.filter(':checked').length;
            $chkAll.prop('checked', total === checked);
        });
    });


    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        initDate();

        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

    function returnComment(resultData, meoreData) {
        $('.subscribe').each(function(idx, obj) {
            for (let v in resultData) {
                const data = resultData[v];

                const isComplete = Math.random() < 0.5;
                // const statusText = isComplete ? '신청<br>완료' : '신청중';
                const statusClass = isComplete ? 'active' : 'default'; // ✅ 상태별 클래스 지정

                let html  = '<div class="content ' + statusClass + '" data-id="' + data.seq + '">';
                    // html += '    <div class="msg">' + statusText + '</div>';
                    html += '        <div class="name">' + data.name + '님이 신청했습니다' + '</div>';
                    // html += '        <div class="phone">' + data.phone + '</div>';
                    // html += '        <div class="date">' + data.regDate + '</div>';
                    html += '</div>';

                $(obj).append(html);
            }
        });

        if(resultData.length >= 10){
            $('.subscribe_group').show();
            return;
        } else {
            $('.subscribe_group').hide();
            return;
        }
    }

    // let dataNum;

	// function returnComment(resultData, meoreData){
	// 	$('.subscribe').each(function(idx,obj) {
            
    //         for(v in resultData) {
    //             var data = resultData;
    //             var reg = (data[v].regDate || '').trim();      // "08-21 09:59"
    //             var parts = reg.split(/\s+/);                   // ["08-21", "09:59"]
    //             var md = parts[0] || "";                        // "08-21"
    //             var tm = parts[1] || "";   
	// 			var statusText = Math.random() < 0.5 ? '접수중' : '신청완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
	// 			var backgroundClass = statusText === '신청완료' ? 'color-bg' : ''; // '접수완료'일 경우에만 클래스 추가
	// 			var html  = '<div class="content" data-id="'+ data[v].seq +'">';
	// 				html += '	<div class="name">'+ data[v].name +'</div>';
	// 				html += '	<div class="phone">'+ data[v].phone +'</div>';
	// 				html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
	// 				html += '  <div class="date">'+ data[v].regDate +'</div>';
	// 				html += '</div>';
	// 			$(obj).append(html);
	// 		}
            
	// 	});

    //     $('.subscribe_container').show();
    //     // if(resultData.length >= 10){
    //     //     $('.subscribe_container').show();
    //     //     return;
    //     // } else {
    //     //     $('.subscribe_container').hide();
    //     //     return;
    //     // }
	// }

	// setInterval(function(){
    //     $('.subscribe .content:first').slideUp(function(){
    //         $(this).show().parent().append(this)
    //     })
    // },2000);

    // 45명 → 10명까지 2초마다 1명씩 감소
    // let currentCount = 45;
    // const minCount = 10;

    // const countInterval = setInterval(function () {
    //     currentCount--;

    //     $('.count-area .count').text(currentCount + '명');

    //     // 10명에서 멈춤
    //     if (currentCount <= minCount) {
    //         clearInterval(countInterval);
    //     }
    // }, 2000);

    // 상단 슬라이드
    // var swiper = new Swiper(".mySwiper", {
    //     spaceBetween: 30,
    //     // centeredSlides: true,
    //     speed: 700,
    //     autoplay: {
    //         delay: 5000,
    //         disableOnInteraction: false,
    //     },
    //     loop:true,
    // });
	
	var modal2 = document.getElementById("modal2");
	var agree = document.querySelectorAll(".agBox .btn-agreement");
	var close2 = document.getElementById("close");

    agree.forEach(ag => ag.onclick = function () {
	    modal2.style.display = "block";
	})

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

    // $('.overlay').hide();
    // $('.popup-valid').hide();
    // $('.pop-up').hide();

    // let isConfirm = false;

    // $('.submit .btn_submit').on('click', function(e) {
    //     e.preventDefault();

    //     const tadd1 = $('input[name="tadd1"]:checked').val();
    //     const tadd2 = $('input[name="tadd2"]:checked').val();
    //     const tadd3 = $('input[name="tadd3"]:checked').val();
    //     const agBox = $('input[name="agBox"]:checked').val();
    //     const nameVal = $('input[name="name"]').val();
    //     const phoneVal = $('input[name="phone"]').val();

    //     // ✅ 필수값 유효성 검사
    //     if (!tadd1 || !tadd2 || !tadd3 || !agBox || !nameVal || !phoneVal || phoneVal.length < 11) {
    //         $('.overlay').show();
    //         $('.popup-valid').show();
    //         return;
    //     }

    //     // ✅ 모든 항목이 입력된 경우 → 확인 팝업 표시
    //     $('.overlay, .pop-up').show();
    //     isConfirm = false;
    // });

    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.wrap_form').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

    // $('.btn-valid').on('click', function() {
    //     $('.overlay, .popup-valid').hide();
    // });

    // $('.btn-confirm').on('click', function() {
    //     isConfirm = true;
    //     $('.overlay, .pop-up').hide();

    //     if (isConfirm) {
    //         fnForm('form-1'); // ✅ 폼 전송 함수 실행
    //     }
    // });

    // $('.btn-out').on('click', function() {
    //     isConfirm = false;
    //     $('.overlay, .pop-up').hide();
    // });


    // $('li.btn_submit').bind('click',function() {
	// 	$('#form-1').submit();
	// })

	// $('input[name*="tadd"]').bind('click', function() {
	// 	$(this).closest('.q_select').find('label').removeClass('on');			
	// 	$(this.parentNode).addClass('on');	
	// });

	$('.submit').bind('click',function(){
		if(!$('input[name="name"]').is(':visible')){
			$('.db-name').click();
			$('input[name="name"]').focus();
		}
		else if(!$('input[name="phone"]').is(':visible')){
			$('.db-phone').click();
			$('input[name="phone"]').focus();
		}
		var phoneNum = $('input[name="phone"]').val();
	});

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
        // let selectedRadio1 = procForm.querySelector('input[name="tadd1"]').value;
        // procForm.querySelector("input[name='add1']").value = selectedRadio1;
        
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		// let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		// if (!selectedRadio1) {
		// 	alert("연령대를 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }

		// let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		// if (!selectedRadio2) {
		// 	alert("고민사항을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		// }

		// let selectedRadio3 = procForm.querySelector('input[name="tadd3"]:checked');
		// if (!selectedRadio3) {
		// 	alert("전화상담 가능시간을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
		// }

		// let selectedRadio2 = procForm.querySelector(`input[name="tadd2"]:checked`).value;
		// procForm.querySelector("input[name='add2']").value = selectedRadio2;
		
		// let selectedRadio3 = procForm.querySelector(`input[name="tadd3"]:checked`).value;
		// procForm.querySelector("input[name='add3']").value = selectedRadio3;
		
		
		// 필수값 체크 항목
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			// ,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>