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
    font-family: 'GmarketSans';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: 500;
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

    .count_box {display: flex; align-items: center; min-width: 13%; font-size: 2.8rem; color: #fff; position: absolute; top: 31.5%; left: 58.7%; transform: translateX(-50%);}
    .count {flex-shrink: 0; width: 50%; color: #ffde00; font-size: 360% !important; font-family: 'GmarketSans'; font-weight: 500; line-height: 1; text-align: right;}
    .count-txt {flex-shrink: 0; color: #ffde00; font-size: 360% !important; font-family: 'GmarketSans'; font-weight: 500; line-height: 1;}

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
    .wrap_form .submit input[type="image"] {width: 71.46% !important; margin: 0 auto; animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

    :is(#page_landing_a, #page_landing_c) .wrap_curd .btn_submit {padding: 6% 0;}

    .top-img {width: 93.236%; margin: 0 auto;}
    .select-box {width: 100%;}
    .select-box .q_select {outline: none; border: none; width: 100%; padding: 3%; text-align: center; border: 1px solid #bebebe; border-radius: 0.3em; font-weight: 600;}
    #page_landing_c .wrap_curd {padding: 7.684% 2.927%; background: transparent;}
    #page_landing_c .wrap_curd .q_select {width: 100%; font-size: 150%; display: flex; align-items: center; justify-content: flex-end;}
    #page_landing_c .wrap_form .description {width: 100%;}
    #page_landing_c .wrap_form .description .ad_txt {font-family: 'Paperlogy';}

    #page_landing_c .description.footer {width: 100%; padding: 1.115% 0; background-color: #8e8e8e; text-align: center;}
    /* #page_landing_c .description.footer #target, #page_landing_c .description.footer p {margin: 0.5% 0;} */
    #page_landing_c .description.footer p {line-height: 1.21;}

    #page_landing_c .wrap_form .agBox {position: relative; display: flex; align-items: center; justify-content: center; font-family: 'Paperlogy';}
    #page_landing_c .wrap_form .agBox .btn-agreement {font-weight: 700; font-family: 'Paperlogy'; font-size: 130%;}
    #page_landing_c .wrap_form .question_box > div:not(.formContents):not(.txt-area),
    #page_landing_c .wrap_form .question_box > label {width: 100%; display: flex; align-items: center; justify-content: space-between; gap: 1%; border-radius: 25px; background-color: #dadada; padding: 2.926% 3.901%; box-sizing: border-box; margin-bottom: 2%;}
    #page_landing_c .wrap_form .question_box > label input {background: url("//static.savemkt.com/event/v_${eventSeq}/check.png") no-repeat right 1.5rem center; background-color: #fff;}
    #page_landing_c .wrap_form .question_box > div.txt-area {width: 81.42%; margin: 0 auto 9%;}

    /* 질문 줄 전체를 감싸는 컨테이너 */
    #page_landing_c .wrap_form .question, 
    #page_landing_c .wrap_form .user_name, 
    #page_landing_c .wrap_form .user_phone { display: flex; align-items: center; justify-content: space-between; /* 왼쪽 정렬 */ width: 100%; margin-bottom: 2%; /* 줄 간격 */ background-color: #dadada; /* 배경색 */ border-radius: 15px; /* 라운드 처리 */ padding: 10px 20px; box-sizing: border-box;}

    /* 왼쪽 질문 텍스트 영역 너비 고정 */
    #page_landing_c .wrap_form .legend { flex: 0 0 30%; /* 질문 영역 너비를 30%로 고정 */ font-size: 1.5rem; /* 폰트 크기 조정 */ font-family: 'Paperlogy'; font-weight: 700; color: #000; text-align: left;}

    #page_landing_c .wrap_form .question:nth-child(1) .legend {flex: 0 0 50%;}

    /* 오른쪽 답변 영역(선택지/입력창) 너비 고정 */
    #page_landing_c .wrap_form .q_select,
    #page_landing_c .wrap_form .inp {flex: 0 0 70%; /* 답변 영역 너비를 70%로 고정 */ display: flex; gap: 10px; /* 버튼 사이 간격 */}
    #page_landing_c .wrap_form .question:nth-child(1) .q_select, #page_landing_c .wrap_form .question:nth-child(1) .inp {flex: 0 0 46.5%;}

    /* 라디오 버튼(네/아니오 등) 디자인 */
    #page_landing_c .wrap_form .q_select label {flex: 1; /* 선택지 개수가 달라도 해당 영역 안에서 균등 배분 */ background-color: #fff; padding: 10px 0; border-radius: 8px; text-align: center; cursor: pointer; font-size: 1.2rem; font-weight: 500; margin: 0 !important; /* 기존 마진 제거 */}

    /* 텍스트 입력창 디자인 */
    #page_landing_c .wrap_form .inp {width: 100% !important; /* flex-basis 안에서 꽉 차게 */ border: none; border-radius: 8px; background-color: #fff; padding: 12px; font-size: 1.2rem; position: static; /* 기존 absolute 해제 필수 */}

    /* 라디오 input 숨기기 */
    #page_landing_c .wrap_form .q_select input[type="radio"] {display: none;}

    #page_landing_c .wrap_form .legend {font-family: 'Elice DX Neolli'; font-size: 280%; min-width: 24%; font-weight: 500; line-height: 1; letter-spacing: -0.05em; color: #0a151e;}
    #page_landing_c .wrap_form .first .legend {min-width: 50%;}
    #page_landing_c .wrap_form .agBox .legend {max-width: max-content;}
    .selected_area{background-color:#000; padding:3% 5%;}
    #page_landing_c .wrap_form .question_box .agBox .question {display: flex; align-items: center; width: 100%;}
    /* #page_landing_c .wrap_form .question_box .q_select{position: absolute; z-index: 1; display: flex; top: 23%; left: 29%; width: 70%;} */

    /* 설문값, 동의, 미동의 버튼 공통 */
    #page_landing_c .wrap_form .question_box .q_select label, 
    label.selected_label, 
    #page_landing_c .wrap_form .agBox .disagree{display: inline-block; border-radius: 1rem; font-size: 187%; text-align: center;  color: #0a151e; font-weight: 500; cursor: pointer; padding: 3% 2%; font-family: 'Elice DX Neolli';}
    #page_landing_c .wrap_form .agBox .disagree {margin-right: 0;}
     #page_landing_c .wrap_form .question_box .q_select label + label {margin-left: 2.555%;}
    #page_landing_c .wrap_form .question_box .q_select:nth-of-type(2) label.on, label.add1{background-color: #000; color:#fff;}
    #page_landing_c .wrap_form .question_box .q_select:nth-of-type(4) label.on, label.add2{background-color: #000;}
    #page_landing_c .wrap_form .question_box .q_select label {flex-shrink: 0; background-color: #fff; }
    #page_landing_c .wrap_form .question_box .q_select label.on, label.add3{background-color: #fff83d; color:#00385c;}

    /* user db입력칸 (이름) */
    #page_landing_c .wrap_form .user_info {width: 90%; margin: 0 auto;}
    #page_landing_c .wrap_form .user_info .user_name {position: relative; margin-bottom: 2%;}
    #page_landing_c .wrap_form .user_info .user_name img {width:100%;}

    /* user db입력칸 (연락처) */
    #page_landing_c .wrap_form .user_info .user_phone {position: relative; margin-bottom: 2%;}
    #page_landing_c .wrap_form .user_info .user_phone img {width:100%;}

    /* 이름, 연락처 공통 */
    /* #page_landing_c .wrap_form .user_info input {background: #ffeef4; padding: 2%; font-size: 150%; border-radius: 0.5rem; width: 67%;
    position: absolute; left: 29%; top: 14%; height: 70%; border: 1px solid #e3ccd4;} */

    #page_landing_c .wrap_form .inp{    width: 63%;
    margin-left: 0; font-size: 120%; border-radius: 10px; border: solid 1px #bebebe; background-color: #fff; min-height: 34px; padding: 3%; box-sizing: border-box;}
    #page_landing_c .wrap_form input[type="checkbox"] + span:before{border-color:#fff;}
    #page_landing_c .wrap_form .submit input[type="image"]{animation: pulsating 0.8s linear infinite; -webkit-animation: pulsating 0.8s linear infinite;}

    #page_landing_c .wrap_form .agBox {width: auto; font-size: 100%; text-align: center; margin: 5% auto 0; font-size: 150% !important;}
    #page_landing_c .wrap_form .agBox .ag_btn {left: 55%; flex-grow: 1;}
    #page_landing_c .wrap_form .agBox label{background-color: #127ee3;}
    #page_landing_c .wrap_form .agBox .disagree{background-color: #fff; font-weight: 400; color: #0a151e;}

    .wrap_form .agBox a {font-weight: 700; margin: 0; font-family: 'Paperlogy';}

    #page_landing_c .wrap_form .agBox.on label{background-color:#fff83d; color: #00385c;}

    #page_landing_c .wrap_form ul.table_box li:nth-child(2) .th,
    #page_landing_c .wrap_form ul.table_box li:nth-child(3) .th{margin-right:1%;}
    #page_landing_c .wrap_form ul.table_box li.on .th{border-radius: 25px 0 0 25px; border-right:none;}
    #page_landing_c .wrap_form ul.table_box li.on .td{border-radius:0 25px 25px 0; border-left:none;}
    .question_container {padding: 6.945% 2.398% 4.945%; margin-top: 68.5%; background: #fff; border: 13px solid #3ea3d1; border-radius: 40px;}
    .question_container .img-area {width: 81.315%; margin: 0 auto 3%;}
    .question_container .sub-txt {width: 100%; margin: 0 auto 3%; text-align: center; font-weight: 300; font-size: 157% !important;}

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
        position: fixed;
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
        padding: 30px 5%;
    }
    [class^="popup-"] p,
    [class^="popup-"] span {
        text-align: center;
        font-size: 250%;
        font-weight: 700;
        font-family: 'Paperlogy';
    }
    [class^="popup-"] strong {
        color: #ff0000;
        font-weight: 700;
        font-family: 'Paperlogy';
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
        font-family: 'Paperlogy';
    }
    .popup-valid .btn-box button {
        width: 65%;
        margin: 0 auto;
        font-size: 175%;
        font-weight: 500;
        font-family: 'Paperlogy';
    }

    /* submit 버튼 애니메이션 */
    @keyframes pulsating {
        0% {transform: scale(1);}
        50% {transform: scale(0.95);}
        100% {transform: scale(1);}
    }

@media screen and (max-width: 960px){
    /* #page_landing_c .wrap_form .legend {font-size: 250%;} */
    #page_landing_c .wrap_form .question_box .q_select label, label.selected_label, #page_landing_c .wrap_form .agBox .disagree {
        font-size: 147%;
    }
}
@media screen and (max-width: 768px){
    #page_landing_c .wrap_form .legend {font-size: 190%;}
    #page_landing_c .wrap_form .question_box .q_select label, label.selected_label, #page_landing_c .wrap_form .agBox .disagree {
        font-size: 117%;
    }
    .subscribe {padding: 3% 2%; height: 318px;}
    .subscribe .content {padding: 0.5rem 0.7rem;}
    .subscribe .content > div {margin-right: 0; font-size: 0.8rem;}
    .subscribe_container {padding: 0 1.5rem 1rem 1.5rem;}
    .subscribe .content .name {width: 10%;}

    .subscribe_bg {padding: 3.75% 3.5%;}
    .content * {padding: 8px 0px;}
    .content .text {padding: 4px 0;}
    .subscribe_container .title {padding: 1rem 0 0; font-size: 1.8rem; margin-bottom: 0.6875rem;}

    [class^="popup-"] {width: 90vw; font-size: 2.5vw; border-radius: 20px; top: 57%;}
    .popup-valid .btn-box button {width: 50vw; height: 40px}

    .count {font-size: 150% !important;}
    .count-txt {font-size: 150% !important;}

    #page_landing_c .wrap_curd .sub-txt {font-size: 12px;}
}

@media screen and (max-width: 480px){
    #page_landing_c .wrap_form .legend {font-size: 135%;}
    #page_landing_c .wrap_form .question_box .q_select label, label.selected_label, #page_landing_c .wrap_form .agBox .disagree {
        font-size: 80%; border-radius: 0.5rem;
    }
    #page_landing_c .wrap_form .question:nth-child(1) .q_select, #page_landing_c .wrap_form .question:nth-child(1) .inp {
        flex: 0 0 41.5%;
    }
    #page_landing_c .wrap_form .question:nth-child(1) .legend {flex: 0 0 55%;}

    #page_landing_c .wrap_form .q_select, #page_landing_c .wrap_form .inp {flex: 0 0 64%; gap: 5px;}
    

    #page_landing_c .wrap_form .result .value .add_value {font-size: 90%; padding: 0.5em;}
    /* #page_landing_c .wrap_form .legend {font-size: 100%;} */
    #page_landing_c .wrap_form .inp {font-size: 13px;}
    .wrap_form .agBox a {margin-top: 0; white-space: nowrap;}

    #page_landing_c .wrap_curd .warn-txt {font-size: 100%;}

    #page_landing_c .description.footer p, #page_landing_c .description.footer #target {font-size: 75%;}
    #page_landing_c .wrap_form .description .ad_txt {font-size: 12px;}

    #page_landing_c .wrap_curd .sub-txt {font-size: 9px;}

    .question_container {border-width: 8px;}
    .question_container .sub-txt {font-size: 72% !important;}
    #page_landing_c .wrap_form .agBox {font-size: 100% !important;}
    #page_landing_c .wrap_form .agBox .btn-agreement {font-size: 110%;}


    /* #page_landing_c .wrap_curd .btn-agreement {font-size: 12px;} */

    /* .popup-confirm {width: 370px;}
    .popup-confirm p {font-size: 175%;} */
}
@media screen and (max-width: 395px){
    .subscribe .content {padding: 0.5rem 0.2rem;}

    #page_landing_c .wrap_form .legend {font-size: 110%;}
    #page_landing_c .wrap_form .question_box .q_select label, label.selected_label, #page_landing_c .wrap_form .agBox .disagree {font-size: 75%;}

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
                                <div class="count_box"><div class="count"></div><span class="count-txt">명</span></div>
                            </div>
                        </div>
                        <div class="question_container">
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png"></div>
                            <div class="sub-txt">타인의 정보를 무단으로 도용할 시, 관련 법령에 따라 제재를 받을 수 있습니다.</div>
                            <div class="question_box">
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
                                    <input type="text" name="name" id="name" class="inp" placeholder="이름을 입력해주세요" required>
                                </div>

                                <div class="user_phone">
                                    <span class="legend">연락처</span>
                                    <input type="tel" name="phone" id="phone" class="inp" value="010-" required maxlength="11">
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

                        <div class="agBox">
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
                <span id="target">대상자 : ${resVo.target}</span>
                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                <p>시술 결과는개인에 따라 상이할 수 있으며, 치료방법에 따라 수가가 변동될 수 있습니다. <br />
                    부작용 안내 : 시림·이물감 및 드물게 탈락 가능성(개인차 있음) ㅣ 정가: 55만원 </p>
                </div>	
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>

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

    if (typeof window.thisAgreementWithText !== 'function') {
        window.thisAgreementWithText = function(policyText, selector) {
            var targetSelector = selector || '.modal-content p';
            var modal = $(targetSelector);
            modal.text((policyText || '').trim());
            modal.css('white-space', 'pre-line');
        };
    }

    $(document).ready(function(){
        initDate();/* 기간항목 start */
        blockSourceView();//드래그, 우클릭 방지
        cleardcAgreement();
        
        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        initDate();
        
        thisAgreementWithText(`
        개인정보처리방침

        강남클리어치과의원(이하 “병원”)에서는 고객의 개인정보를 매우 소중하게 생각하며 정보주체의 권익을 보호하기 위하여 적법하고 적정하게 취급할 것입니다. 전기통신기본법, 전기통신사업법, 개인정보 보호법 및 동법 시행령 등 관련 법이 정하는 대로 준수하고 있습니다. “병원”은 제공하신 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보 보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.

        ■ 수집하는 개인정보 항목
        1. “병원”은 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 아래와 같은 개인정보를 수집하고 있습니다.
        - 개인회원: 이름, 생년월일, 성별, 주소, 연령, 연락처, 휴대전화 정보, 이메일주소
        - 14세미만 개인회원: 법정 대리인 정보(주민등록번호 또는 아이핀 번호, 휴대전화 정보)
        - 기타정보: 내원정보, 처방정보, 진료정보, 카드사명, 카드번호 등 카드결제 승인정보
        - 이벤트 참여시 : 이름, 나이, 연락처, 신청항목

        2. 개인정보 수집 방법
        - 홈페이지, 서면양식, 팩스, 전화, 게시판, 이메일, 이벤트 참여

        3. 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
        - IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록

        ■ 개인정보의 수집 및 이용목적
        “병원”에서는 개인정보를 다음의 목적이외의 용도로는 이용하지 않으며 이용 목적이 변경될 경우에는 동의를 받아 처리하겠습니다.

        1. 서비스 제공
        - 진료정보: 진단 및 치료를 위한 진료서비스와 청구, 수납 및 환급 등의 원무 서비스 제공
        - 예약정보: 진료 예약 및 예약조회 등 기타 서비스 이용에 따른 본인 확인 절차에 이용
        - 기타: 문자 및 SNS를 통한 병원소식, 질병정보 등의 안내, 설문조사

        2. 회원관리
        서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용방지, 만 14세미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달, 회원 관리를 위한 각종 정보 제공, 소식 전달, 설문조사

        3. 신규 서비스 개발 및 마케팅, 광고에의 활용
        - 신규 서비스 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공
        - 이벤트 프로모션에 참여하거나 선택형 서비스를 이용하려는 경우 회원의 별도 동의 하에 아래의 정보를 수집할 수 있습니다.
        • 휴대전화번호, 전자우편 주소, 주소, 성별, 지역
        • 회원의 휴대전화기 주소록 내에 저장된 제3자의 휴대전화번호 (소셜 커뮤니티 기능이 탑재되어 있는 서비스에 한하며, 이 경우에도 제3자의 휴대전화번호를 저장하지 않음)
        • 신용카드 번호, 휴대전화번호, 상품권 결제 제휴사의 ID 및 비밀번호 (유료 결제 서비스를 사용하는 회원에 한함)

        4. 이벤트 참여시
        강남클리어치과의원에서 임플란트, 라미네이트등의 상담 활용 (전화, 문자)

        ■ 개인정보의 처리 및 보유기간
        서비스 이용자가 “병원”의 회원으로서 서비스를 계속 이용하는 동안 이용자의 개인정보를 계속 보유하며 서비스의 제공 등을 위해 이용합니다. 이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성 또는 이벤트 참여시 이벤트 페이지에 별도 명시한 수집동의 받은 날로부터 동의 받은 기간이 만료되거나 이용자가 직접 삭제, 수정 또는 회원 탈퇴한 경우에 재생할 수 없는 방법으로 파기합니다.
        단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.
        상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 병원은 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 “병원”은 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.

        - 웹사이트 방문기록
        • 보존 이유 : 통신비밀보호법
        • 보존 기간 : 3개월
        - 본인확인에 관한 기록
        • 보존 이유 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률
        • 보존 기간 : 6개월
        - 소비자의 불만 또는 분쟁처리에 관한 기록
        • 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률
        • 보존 기간 : 3년
        - 신용정보의 수집/처리 및 이용 등에 관한 기록
        • 보존 이유 : 신용정보의 이용 및 보호에 관한 법률
        • 보존 기간 : 3년


        ■ 개인정보처리의 제3자 제공 및 위탁에 관한 사항
        “병원”은 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. “병원”의 개인정보 위탁처리 기관 및 위탁업무 내용은 아래와 같습니다

        - 위탁업체:
        • ㈜세이브마케팅 / 010-4383-1224 / savemarketing1@gmail.com
        • ㈜원모아파트너 / 010-8354-0054 / onemoacorp@naver.com
        - 위탁업무 내용: 광고를 통한 개인정보 취급 및 보관, 서버 관리

        ■ 정보주체의 권리의무 및 그 행사방법
        1. 개인정보 열람 요구: “병원”에서 보유하고 있는 개인정보파일은 개인정보보호법 제35조(개인정보의 열람)에 따라 열람을 요구할 수 있습니다. 다만 개인정보 열람 요구는 개인정보보호법 제35조 제5항에 의하여 다음과 같이 제한될 수 있습니다.
        - 법률에 따라 열람이 금지되거나 제한되는 경우
        - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우

        2. 개인정보 정정•삭제 요구: “병원”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제36조(개인정보의 정정, 삭제)에 따라 “병원”에 개인정보의 정정, 삭제를 요구할 수 있습니다. 다만, 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.

        3. 개인정보 처리정지 요구: “병원”에서 보유하고 있는 개인정보파일에 대해서는 개인정보보호법 제37조(개인정보의 처리정지 등)에 따라 병원에 개인정보의 처리정지를 요구할 수 있습니다. 또한 만 14세 미만 아동의 법정대리인은 병원에 그 아동의 개인정보의 열람, 정정, 삭제, 처리정지 요구를 할 수 있습니다. 다만, 개인정보 처리정지 요구시 「개인정보보호법」 제37조 제2항에 의하여 처리정지 요구가 거절될 수 있습니다.
        - 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우
        - 다른 사람의 생명과 신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가 있는 경우
        - 개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한 경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우

        ■ 개인정보의 파기절차 및 파기방법
        “병원”은 원칙적으로 개인정보의 보유기간이 경과했거나 처리목적이 달성된 경우에는 지체 없이 해당 개인정보를 파기합니다. 다만, 다른 법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.

        1. 파기절차
        이용자가 입력한 정보는 보유기간이 경과했거나 처리목적이 달성 후 내부 방침 및 관련 법령에 따라 파기합니다. (개인정보처리 및 보유기간 참조)

        2. 파기기한
        이용자의 개인정보는 개인정보의 보유기간이 경과된 경우 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.

        3. 파기방법
        “병원”에서 처리하는 개인정보를 파기할 때에는 다음의 방법으로 파기 합니다.
        - 전자적 파일 형태인 경우: 복원이 불가능한 방법으로 영구삭제
        - 전자적 파일의 형태 외의 기록물, 인쇄물, 서면, 그 밖의 기록매체인 경우: 파쇄 또는 소각

        ■ 개인정보의 안전성 확보 조치
        “병원”은 (개인정보보호법) 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적, 관리적, 물리적 조치를 하고 있습니다.

        1. 내부관리계획의 수립 및 시행
        “병원”은 (개인정보보호법) 제29조에 따라 내부관리 계획을 수립 및 시행합니다.

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
        병원은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.

        8. 비인가자에 대한 출입 통제
        개인정보를 보관하고 있는 개인정보시스템의 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.

        ■ 개인정보 보호책임자
        “병원”은 개인정보를 보호하고 개인정보와 관련된 사항을 처리하기 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
        이름 : 주홍하
        직위 : 실장
        소속 : 강남클리어치과의원
        전화 : 1661-7502

        ■ 개인정보 처리방침의 변경
        이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 가능한 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
        - 시행일자: 2011년 9월 30일

        ■ 권익침해 구제방법
        고객은 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.
        - 개인정보침해신고센터 / privacy.kisa.or.kr / 국번없이 118
        - 대검찰청 사이버수사과 / www.spo.go.kr / 국번없이 1301
        - 경찰청 사이버안전국 / police.go.kr / 국번없이 182
            `);
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

    // 신청 인원 카운트다운
    $(document).ready(function() {
        let count = 15; // 초기 인원 수
        const intervalTime = 2000; // 2초마다 업데이트

        // 인원 수 업데이트 함수
        function updateCount() {
            let countText = count
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