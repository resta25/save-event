<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/sweetalert2.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
 
<style>
@font-face {
    font-family: 'GmarketSans';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansBold.woff') format('woff');
    font-weight: 700;
    font-style: normal;
}
@font-face {
	font-family: 'Elice DX Neolli';
	font-weight: 300;
	font-style: normal;
	font-display: swap;
	src: url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Light.woff2') format('woff2'),
		url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Light.woff') format('woff'),
		url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Light.otf') format('opentype'),
		url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Light.ttf') format('truetype');
}
@font-face {
	font-family: 'Elice DX Neolli';
	font-weight: 500;
	font-style: normal;
	font-display: swap;
	src: url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Medium.woff2') format('woff2'),
		url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Medium.woff') format('woff'),
		url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Medium.otf') format('opentype'),
		url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Medium.ttf') format('truetype');
}
@font-face {
	font-family: 'Elice DX Neolli';
	font-weight: 700;
	font-style: normal;
	font-display: swap;
	src: url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Bold.woff2') format('woff2'),
		url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Bold.woff') format('woff'),
		url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Bold.otf') format('opentype'),
		url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli-Bold.ttf') format('truetype');
}
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
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2408-3@1.0/Paperlogy-7Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}

    html{
        height: 100%;
    }
	.content {padding: 20px 10px;}
	.content + .content {border-top: 1px solid #ddd;}
	.content * {padding: 8px 10px;}

    .count_box {width: 15%; text-align: center; font-size: 2.8rem; color: #fff; position: absolute; top: 31.5%; left: 58.5%; transform: translateX(-50%);}
    .count {color: #ffde00; font-size: 360% !important; font-family: 'GmarketSans'; font-weight: 700; line-height: 1;}

    /* 실시간 신청 현황 */
    .subscribe_container {width: 100%; background: #fff; padding: 0 4.5rem 4.5rem;}
    .subscribe_bg {background: #f8f8f8; padding: 3.75% 8.5%; border-radius: 20px}
    .subscribe_container .title {padding: 3.5rem 0 0; font-size: 3.5rem; text-align: center; color: #000; font-weight: 700; margin-bottom: 2.8rem;}
    .subscribe_container .img-area {width: 40%; margin: 3% auto;}
    .subscribe {height: 530px; overflow: hidden;}
    .subscribe .content {display: flex; justify-content: space-between; align-items: center; padding: 0.8rem 0rem; border-bottom: 1px solid rgba(28, 28, 28, 0.1);}
    .subscribe .content > div {font-size: 1.35rem; width: calc(100% / 4);}
    .subscribe .content .text {border: 1px solid #333f50; color: #333f50; width: 20%; max-width: 150px; text-align: center; border-radius: 999px; font-weight: 700;}
    .subscribe .content .text.color-bg {
        background-color: #333f50;
        color: #fff;
    }
    .subscribe .content .date {text-align: right;}

    #page_landing_c main {max-width: 1080px;}
    #page_landing_c .wrap_form {padding: 0; border: 0;  background: url('//static.savemkt.com/event/v_${eventSeq}/bg.jpg') no-repeat center top / 100% 100%;}
    .btn_submit {background-color: transparent !important;}
    input:not( [type="checkbox"], [type="radio"], [type="range"] ):disabled, input:not( [type="checkbox"], [type="radio"], [type="range"] ):read-only {border: none;}
    .wrap_form .submit {position: relative; width: 85.466%; height: auto; background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%; margin: 3% auto; padding: 0% 0;}
    .wrap_form .submit input[type="image"] {
        width: 71.46% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite;
    }

    :is(#page_landing_a, #page_landing_c) .wrap_curd .btn_submit {padding: 6% 0;}

    .top-img {width: 93.236%; margin: 0 auto;}
    .select-box {width: 100%;}
    .select-box .q_select {outline: none; border: none; width: 100%; padding: 3%; text-align: center; border: 1px solid #bebebe; border-radius: 0.3em; font-weight: 600;}
    #page_landing_c .wrap_curd {padding: 7.684% 2.927%; background: transparent;}
    #page_landing_c .wrap_curd .q_select {font-size: 150%;
    flex-shrink: 0;
    display: flex;
    align-items: center; justify-content: flex-end;}
    #page_landing_c .wrap_form .description {width: 100%;}
    #page_landing_c .wrap_form .description .ad_txt {font-family: 'Paperlogy';}

    #page_landing_c .description.footer {width: 100%; padding: 1.115% 0; background-color: #8e8e8e; text-align: center;}
    #page_landing_c .description.footer #target {margin: 0.5% 0;}
    
    /* #page_landing_c .wrap_form .description.orage-box{display: flex; justify-content: flex-start; padding-top:3%; padding-bottom: 3%; padding-left: 1.5%; gap: 4px;}
    #page_landing_c .wrap_form .description.orage-box > * {background-color: #0a151e; color:#fff; font-size:110%; border-radius:999px; color:#fff; padding:2% 3%; line-height: 1.06; font-weight: 500; letter-spacing: -0.9px; margin: 0;}
    #page_landing_c .wrap_form .description.orage-box > span{background-color: #0a151e;} */

    #page_landing_c .wrap_form .question {position: relative; display: flex; align-items: center; justify-content: center; font-family: 'Paperlogy';}
    #page_landing_c .wrap_form .question .btn-agreement {font-weight: 700; font-family: 'Paperlogy';}
    #page_landing_c .wrap_form .question_box > div:not(.formContents):not(.txt-area),
    #page_landing_c .wrap_form .question_box > label {display: flex; align-items: center; justify-content: space-between; gap: 1%; border-radius: 25px; background-color: #dadada; padding: 2.926% 3.901%; box-sizing: border-box; margin-bottom: 2%;}
    #page_landing_c .wrap_form .question_box > label input {background: url("//static.savemkt.com/event/v_${eventSeq}/check.png") no-repeat right 1.5rem center; background-color: #fff;}
    #page_landing_c .wrap_form .question_box > div.txt-area {width: 81.42%; margin: 0 auto 9%;}

    #page_landing_c .wrap_form .legend {font-family: 'Elice DX Neolli'; font-size: 280%; font-weight: 500; line-height: 1; letter-spacing: -1.78px; color: #0a151e;}
    #page_landing_c .wrap_form .agBox .legend {max-width: max-content;}
    .selected_area{background-color:#000; padding:3% 5%;}
    #page_landing_c .wrap_form .question_box .agBox .question {display: flex; align-items: center; width: 100%;}
    /* #page_landing_c .wrap_form .question_box .q_select{position: absolute; z-index: 1; display: flex; top: 23%; left: 29%; width: 70%;} */

    /* 설문값, 동의, 미동의 버튼 공통 */
    #page_landing_c .wrap_form .question_box .q_select label, 
    label.selected_label, 
    #page_landing_c .wrap_form .agBox .disagree{display: inline-block; border-radius: 1rem; font-size: 187%; text-align: center;  color: #0a151e; font-weight: 500; cursor: pointer; padding: 3% 2%; font-family: 'Elice DX Neolli';}
    #page_landing_c .wrap_form .agBox .disagree {margin-right: 0;}
     #page_landing_c .wrap_form .question_box .q_select label + label {margin-left: 7.555%;}
    #page_landing_c .wrap_form .question_box .q_select:nth-of-type(2) label.on, label.add1{background-color: #000; color:#fff;}
    #page_landing_c .wrap_form .question_box .q_select:nth-of-type(4) label.on, label.add2{background-color: #000;}
    #page_landing_c .wrap_form .question_box .q_select label {flex-shrink: 0; background-color: #fff; max-width: 192px; width: 100%;}
    #page_landing_c .wrap_form .question_box .q_select label.on, label.add3{background-color: #fff83d; color:#00385c;}

    /* user db입력칸 (이름) */
    #page_landing_c .wrap_form .user_info {width: 90%; margin: 0 auto;}
    #page_landing_c .wrap_form .user_info .user_name {position: relative; margin-bottom: 2%;}
    #page_landing_c .wrap_form .user_info .user_name img {width:100%;}

    /* user db입력칸 (연락처) */
    #page_landing_c .wrap_form .user_info .user_phone {position: relative; margin-bottom: 2%;}
    #page_landing_c .wrap_form .user_info .user_phone img {width:100%;}

    /* 이름, 연락처 공통 */
    #page_landing_c .wrap_form .user_info input {background: #ffeef4; padding: 2%; font-size: 150%; border-radius: 0.5rem; width: 67%;
    position: absolute; left: 29%; top: 14%; height: 70%; border: 1px solid #e3ccd4;}

    #page_landing_c .wrap_form .inp{font-size: 120%; border-radius: 10px; border: solid 1px #bebebe; background-color: #fff; min-height: 34px; padding: 3%; box-sizing: border-box;}
    #page_landing_c .wrap_form input[type="checkbox"] + span:before{border-color:#fff;}
    #page_landing_c .wrap_form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

    #page_landing_c .wrap_form .agBox {width: auto; font-size: 100%; text-align: center;}
    #page_landing_c .wrap_form .agBox .ag_btn {left: 55%; flex-grow: 1;}
    #page_landing_c .wrap_form .agBox label{background-color: #127ee3;}
    #page_landing_c .wrap_form .agBox .disagree{background-color: #fff; font-weight: 400; color: #0a151e;}

    .wrap_form .agBox a {font-weight: 700; margin: 0; font-family: 'Paperlogy';}

    #page_landing_c .wrap_form .agBox.on label{background-color:#fff83d; color: #00385c;}

    #page_landing_c .wrap_form ul.table_box{width:90%;}
    #page_landing_c .wrap_form ul.table_box li{display: flex; margin-bottom:2%;   }
    #page_landing_c .wrap_form ul.table_box li  >*{background-color: #fff;  padding:1% 10px; border-radius:25px; border:1px solid #000; box-sizing: border-box;}
    #page_landing_c .wrap_form ul.table_box li .th{width:20%;}
    #page_landing_c .wrap_form ul.table_box li .td{width: 78%; display:none; position: relative;}
    #page_landing_c .wrap_form ul.table_box li .td.cursor_box::after{position: absolute; top: 50%; left: 54%; transform: translateY(-50%); display: block; content: ''; width: 2px; height: 50%; background-color: #000; animation: blink-effect 1s step-end infinite;}
    #page_landing_c .wrap_form ul.table_box li .td.cursor_box span{position: absolute; top: 50%; left: 60%; transform: translateY(-50%); display: block; font-size:120%;}


    #page_landing_c .wrap_form ul.table_box li:nth-child(2) .th,
    #page_landing_c .wrap_form ul.table_box li:nth-child(3) .th{margin-right:1%;}
    #page_landing_c .wrap_form ul.table_box li.on .th{border-radius: 25px 0 0 25px; border-right:none;}
    #page_landing_c .wrap_form ul.table_box li.on .td{border-radius:0 25px 25px 0; border-left:none;}
    .question_container {padding: 6.945% 2.398%;
    margin-top: 66.5%;
    background: #fff;
    border: 13px solid #3ea3d1;
    border-radius: 40px;}

    /* 비용 결과 */
    #page_landing_c .wrap_form .result {margin: 0 auto; width: 90%; position: relative;}
    #page_landing_c .wrap_form .result .value {display: flex; position: absolute; left: 4%; top: 42%; transform: translateY(-50%); width: 37.5%;}
    #page_landing_c .wrap_form .result .value .add_value {font-size: 120%; background-color: #fff83d; border-radius: 0.5em; width: 49%; padding:0.5em 1em; margin: 0; font-weight: 800;
    text-align: center; color: #00385c; cursor: pointer; display: none; }
    #page_landing_c .wrap_form .result .value .add1_value {margin-right: 2%;}
    #page_landing_c .wrap_form .result .value .add2_value {}
    
    #page_landing_c .wrap_curd .warn-txt {
        padding: 2% 3% 0%;
        line-height: 1.27;
        font-weight: 400;
        letter-spacing: -0.9px;
        font-size: 125%;
        text-align: center;
        margin: 0;
    }
    #page_landing_c .wrap_curd strong {
        font-size: 100%;
        font-weight: 700;
        color: #ff0000;
    }

    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
    }
    .font-red {
        color: #ff0000;
    }
    [class^="popup-"] {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 600px;
        height: max-content;
        margin: 0;
        padding: 30px 0;
        background-color: #fff;
        border-radius: 10px;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        opacity: 1;
        visibility: visible;
    }
    [class^="popup-"] p,
    [class^="popup-"] span {
        text-align: center;
        font-size: 250%;
        font-weight: 700;
        font-family: 'Elice DX Neolli';
    }
    [class^="popup-"] strong {
        color: #ff0000;
        font-weight: 700;
        font-family: 'Elice DX Neolli';
    }
    [class^="popup-"] .btn-box {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 1rem;
        margin-top: 5%;
    }
    [class^="popup-"] .btn-box button {
        background-color: #18609d;
        color: #fff;
        width: 150px;
        height: 50px;
        font-size: 125%;
        font-weight: 700;
        border-radius: 0.5rem;
        font-family: 'Elice DX Neolli';
    }
    .popup-valid .btn-box button {
        width: 65%;
        margin: 0 auto;
        font-size: 175%;
        font-weight: 500;
        font-family: 'Elice DX Neolli';
    }

    /* submit 버튼 애니메이션 */
    @keyframes pulsating {
        0% {transform: scale(1);}
        50% {transform: scale(0.95);}
        100% {transform: scale(1);}
    }
    @keyframes blink-effect {
        50% {opacity: 0;}
    }

@media screen and (max-width: 768px){
    .subscribe {padding: 3% 2%; height: 150px;}
    .subscribe .content {padding: 0.5rem 0.7rem;}
    .subscribe .content > div {margin-right: 0; font-size: 0.8rem;}
    .subscribe_container {padding: 0 1.5rem 1rem 1.5rem;}
    .subscribe .content .name {width: 10%;}

    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
    .subscribe_container .title {padding: 2rem 0 0; font-size: 1.8rem; margin-bottom: 0.6875rem;}

    /* .popup-confirm {width: 450px;}
    .popup-confirm p {font-size: 200%;}
    .popup-confirm .btn-box button {width: 120px; height: 40px; font-size: 100%;} */

    [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%;}
    .popup-valid .btn-box button {width: 50vw; height: 40px}

    .count {font-size: 150% !important;}
}

@media screen and (max-width: 480px){
    #page_landing_c .wrap_form .question_box .q_select label, 
    label.selected_label, 
    #page_landing_c .wrap_form .agBox .disagree {max-width: 70px; font-size: 60%; border-radius: 4px;}
    /* #page_landing_c .wrap_form .agBox .ag_btn {width: 45%;}
    #page_landing_c .wrap_form .agBox .disagree {width: 45%; margin-left: 0;} */
    #page_landing_c .wrap_form .result .value .add_value {font-size: 90%; padding: 0.5em;}
    #page_landing_c .wrap_form .legend {font-size: 100%;}
    #page_landing_c .wrap_form .description.orage-box > * {font-size: 95%;}
    #page_landing_c .wrap_form .inp {font-size: 13px;}
    .wrap_form .agBox a {margin-top: 0; white-space: nowrap;}

    #page_landing_c .wrap_curd .warn-txt {font-size: 100%;}

    #page_landing_c .description.footer p, #page_landing_c .description.footer #target {font-size: 80%;}
    #page_landing_c .wrap_form .description .ad_txt {font-size: 12px;}

    /* #page_landing_c .wrap_curd .btn-agreement {font-size: 12px;} */

    /* .popup-confirm {width: 370px;}
    .popup-confirm p {font-size: 175%;} */
}
@media screen and (max-width: 395px){
    .subscribe .content {padding: 0.5rem 0.2rem;}
    #page_landing_c .wrap_form .description.orage-box > * {font-size: 85%;}

    /* .popup-confirm {width: 360px;}
    .popup-confirm p {font-size: 150%;} */

}
@media screen and (max-width: 375px){
    .subscribe {padding: 0;}
}
</style>
<script src="/js/jquery-3.6.1.min.js"></script>
<script src="/js/sweetalert2.js"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        <!-- <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png" alt="landing_top" class="landing_top"> -->
            <div class="wrap_form">
                <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                        <div class="img-area top-img">
                            <div class="img-area roulette">
                                    <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.png">
                                    <div class="count_box"><div class="count"></div></div>
                                </div>
                        </div>
                        <div class="question_container">
                            <div class="question_box">
                                <div class="img-area txt-area"><img src="//static.savemkt.com/event/v_${eventSeq}/txt.png"></div>
                                <div class="question">
                                    <span class="legend">수도권에 거주하시나요?</span>
                                    <div class="q_select">
                                        <label>네<input type="radio" name="tadd1" value="네"></label>
                                        <label>아니요<input type="radio" name="tadd1" value="아니요"></label>
                                    </div>
                                </div>
                                <div class="question">
                                    <span class="legend">연령대</span>
                                    <div class="q_select">
                                        <label>20대<input type="radio" name="tadd2" value="20대"></label>
                                        <label>30대<input type="radio" name="tadd2" value="30대"></label>
                                        <label>40대<input type="radio" name="tadd2" value="40대"></label>
                                    </div>
                                </div>
                                <div class="question">
                                    <span class="legend">고민사항</span>
                                    <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.png"></div> -->
                                    <div class="q_select">
                                        <label>치아색상<input type="radio" name="tadd3" value="치아색상"></label>
                                        <label>치아모양<input type="radio" name="tadd3" value="치아모양"></label>
                                        <label>기타<input type="radio" name="tadd3" value="기타"></label>
                                    </div>
                                </div>        

                                <div class="user_name">
                                    <span class="legend">이름</span>
                                    <input type="text" name="name" id="name" class="inp" required autocomplete="off">
                                </div>
                                <div class="user_phone">
                                    <span class="legend">연락처</span>
                                    <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                                </div>
                                
                            </div>   
                            <div class="agBox">
                                <div class="question">
                                    <!-- <span class="legend">개인정보 수집 · 이용</span> -->
                                     혜택 제공을 위한&nbsp;
                                    <a href="#">
                                        <span class="btn-agreement">개인정보 처리방침</span>
                                        <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_09.png"></div> -->
                                    </a>
                                    에 동의해주세요
                                    <!-- <div class="q_select ag_btn">
                                        <label><input name="agBox" type="checkbox">동의</label>
                                        <a href="javascript:void(0);" class="disagree">미동의</a>
                                    </div> -->
                                </div>
                            </div>
                        </div>

                        <!-- <div class="img-area result">
                            <div class="value">
                                <p class="add_value add1_value"></p>
                                <p class="add_value add2_value"></p>
                            </div>
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_07.png">
                            <span id="cursor"></span>
                        </div> -->

                        <!-- <p class="warn-txt">
                            허위·부정확한 정보 제출 시 <br />
                            <strong>법적 책임 및 손해배상 청구</strong>가 발생할 수 있습니다
                        </p> -->
                        <div class="submit"><input type="image" onclick="fnForm('form-1')" value="" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png" /></div>	

                        <div class="description">
                            <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br>상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
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
                
            <div class="subscribe_container">
                <div class="title">
                    실시간 신청현황
                </div>
                <div class="subscribe_bg">
                    <div class="subscribe" data-limit="10">
                    </div>
                </div>
            </div>

            <div class="container">
                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
                <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div> -->
            </div>

            <div class="description footer">
                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                <span id="target">대상 : ${resVo.target}</span>
                <p>시술 결과는개인에 따라 상이할 수 있으며, 치료방법에 따라 수가가 변동될 수 있습니다. </p>
            </div>	

        <div class="overlay"></div>
        <div class="popup-valid">
            <span class="font-red">필수 항목을 모두 입력해주세요.</span>
            <div class="btn-box">
                <button type="button" class="btn-valid">확인</button>
            </div>
        </div>
        <div class="popup-confirm">
            <p>
                <strong>수도권 거주자</strong> 대상 <br />이벤트 입니다.
            </p>
            <div class="btn-box">
                <button type="button" class="btn-confirm">확인</button>
                <button type="button" class="btn-out">해당없음<br />(나가기)</button>
            </div>
        </div>
        
        <div id="modal2" class="modal modal2" style="display: none;">
            <div class="modal-content">
                <span class="close" id="close">×</span>
                <p>
                </p>
            </div>
        </div>
    </main>
</body>
<!--공통_script start --><script src="/js/agreement.js"></script><!--공통_script end-->
<!--공통_script start --><script src="/js/form-event.js"></script><!--공통_script end-->
<script>
    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        zeaDentalAgreement();
        
        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

    let dataNum;

	function returnComment(resultData, meoreData){
		$('.subscribe').each(function(idx,obj) {
            
            for(v in resultData) {
                var data = resultData;
                var reg = (data[v].regDate || '').trim();      // "08-21 09:59"
                var parts = reg.split(/\s+/);                   // ["08-21", "09:59"]
                var md = parts[0] || "";                        // "08-21"
                var tm = parts[1] || "";   
				var statusText = Math.random() < 0.5 ? '접수중' : '신청완료'; // 랜덤으로 '접수중' 또는 '접수완료' 선택
				var backgroundClass = statusText === '신청완료' ? 'color-bg' : ''; // '접수완료'일 경우에만 클래스 추가
				var html  = '<div class="content" data-id="'+ data[v].seq +'">';
					html += '	<div class="name">'+ data[v].name +'</div>';
					html += '	<div class="phone">'+ data[v].phone +'</div>';
					html += '   <div class="text ' + backgroundClass + '">' + statusText + '</div>'; // 랜덤 텍스트 및 클래스 적용
					html += '  <div class="date">'+ data[v].regDate +'</div>';
					html += '</div>';
				$(obj).append(html);
			}
            
		});

        if(resultData.length >= 10){
            $('.subscribe_container').show();
            return;
        } else {
            $('.subscribe_container').hide();
            return;
        }
	}

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);

    // 신청 인원 카운트다운 기능
    let remainingCount = 15; // 초기 인원수
    const $countElement = $('.remaining-count'); // 숫자를 표시하는 요소

    // 카운트다운 시작
    const countdownInterval = setInterval(() => {
        if (remainingCount > 3) {
            remainingCount--; // 1명 차감
            $countElement.text(remainingCount + '명'); // 새로운 값 표시
        } else {
            clearInterval(countdownInterval); // 0명이 되면 카운트다운 중지
            $countElement.text(3 + '명'); // 0으로 표시
        }
    }, 2000); // 2000ms = 2초 간격

    // count
    $(document).ready(function() {
        let count = 15; // 초기 인원 수
        const intervalTime = 2000; // 2초마다 업데이트

        // 인원 수 업데이트 함수
        function updateCount() {
            let countText = count + '명'
            $('.count').text(countText); // 인원 수를 화면에 표시

            count--; // 인원 수 감소
            if (count < 3) {
                count = 15; // 0이 되면 다시 45로 초기화
            }
        }

        // 3초마다 updateCount 함수 실행
        setInterval(updateCount, intervalTime);

        // 페이지 로드 시 초기 인원 표시
        updateCount();
    });
	
	var modal2 = document.getElementById("modal2");
	var agree = document.querySelector(".agBox .btn-agreement");
	var close2 = document.getElementById("close");

	agree.onclick = function () {
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


    // $('li.btn_submit').bind('click',function() {
	// 	$('#form-1').submit();
	// })

	$('input[name*="tadd"]').bind('click', function() {
		$(this).closest('.q_select').find('label').removeClass('on');			
		$(this.parentNode).addClass('on');	
	});

    $('.overlay').hide();
    $('.popup-valid').hide();
    $('.popup-confirm').hide();

    let isConfirm = false;

    $('input[name="tadd1"]').on('click', function () {
        if ($(this).val() === "아니요") {
            $(this).prop('checked', false);
            $('.overlay, .popup-confirm').show();
            $(this.parentNode).removeClass('on');
        }
    });

    // 제출 버튼 클릭
    // $('.submit .btn_submit').on('click', function(e){
    //     e.preventDefault();

    //     const tadd1 = $('input[name="tadd1"]:checked').val();
    //     const tadd2 = $('input[name="tadd2"]:checked').val();
    //     const agBox = $('.ag_btn input[name="agBox"]:checked').val();
    //     const nameVal = $('input[name="name"]').val();
    //     const phoneVal = $('input[name="phone"]').val();

    //     // 필수값 체크
    //     if (!tadd1 || !tadd2 || !agBox || !nameVal || !phoneVal || phoneVal.length < 11) {
    //         $('.overlay').show();
    //         $('.popup-valid').show();   // ⛔ 미입력 → 유효성 팝업
    //         return;
    //     }

    //     // ✅ 모두 입력됨 → 확인 팝업 띄움
    //     $('.overlay, .popup-confirm').show();
    // });

    $('.btn-valid').on('click', function(){
        $('.overlay, .popup-valid').hide();
    });

    // popup-confirm > 확인 버튼
    $('.btn-confirm').on('click', function(){
        $('.overlay, .popup-confirm').hide();
        // fnForm('form-1'); // ✅ 실제 제출 실행
    });

    // popup-confirm > 취소 버튼
    $('.btn-out').on('click', function(){
        $('.overlay, .popup-confirm').hide();
    });

	// $('.agBox label').bind('click',function(){
	// 	$('input[name="agBox"]').closest('.agBox').addClass('on');
	// });

	// $('.submit').bind('click',function(){
	// 	if(!$('input[name="name"]').is(':visible')){
	// 		$('.db-name').click();
	// 		$('input[name="name"]').focus();
	// 	}
	// 	else if(!$('input[name="phone"]').is(':visible')){
	// 		$('.db-phone').click();
	// 		$('input[name="phone"]').focus();
	// 	}
	// 	var phoneNum = $('input[name="phone"]').val();
	// });

	$('a.disagree').bind('click',function(){
        const $agBox = $('input[name="agBox"]').closest('.agBox');

        // 상태 초기화
        $agBox.removeClass('on');

        const $checkbox = $agBox.find('input[name="agBox"]');
        $checkbox.prop('checked', false);
        $checkbox.val('n');

		alert('안심하세요. 혜택 안내를 위함으로 미동의를 선택 시 예상 비용을 받아볼 수 없습니다.');
	});


	// radio value값 츨략
	// $('input:radio[name="tadd1"]').click(function(){
	// 	var checked = $(this).val();
	// 	$('.add1_value').show();
	// 	$('.add1_value').html(checked);
	// })

	// $('input:radio[name="tadd2"]').click(function(){
	// 	var checked = $(this).val();
	// 	let labelText = $(this).closest('label').text().trim();
	// 	$('.add2_value').show();
	// 	$('.add2_value').html(labelText)
	// })

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);
		
		// 라디오버튼에 대한 필수값 확인 - 체크된게 하나도 없을때 경고창
		let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		if (!selectedRadio1) {
			alert("수도권 거주 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		}

		let selectedRadio2 = procForm.querySelector('input[name="tadd2"]:checked');
		if (!selectedRadio2) {
			alert("연령대를 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add2']").value = selectedRadio2.value;
		}

		let selectedRadio3 = procForm.querySelector('input[name="tadd3"]:checked');
		if (!selectedRadio3) {
			alert("고민사항 항목을 선택해주세요.");
			return;
		} else {
			procForm.querySelector("input[name='add3']").value = selectedRadio3.value;
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
			// ,'age': '나이'
			,'phone': '전화번호'
			,'add1': '설문1'
			,'add2': '연령대'
			,'add3': '고민사항'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>