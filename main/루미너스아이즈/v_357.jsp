<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/css/landing.css">
<link rel="stylesheet" href="/css/common_sand.css">
<style>
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/EliceDXNeolli/EliceDXNeolli.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Paperlogy/Paperlogy.css');
    @import url('https://cdn.jsdelivr.net/gh/fonts-archive/Pretendard/Pretendard.css');
    * { box-sizing: border-box; font-family: 'Pretendard', sans-serif; }
    html { height: 100%; }
    #page_landing_c { padding: 0; border: 0; }
    #page_landing_c main { position: relative; background-color: #2f000e; }
    #page_landing_c .wrap_form { padding: 0; border: none; background-color: transparent; }
    #page_landing_c .wrap_curd { background: transparent; }
    #page_landing_c .wrap_curd * { font-size: 100%; font-family: inherit; }
    #page_landing_c .wrap_curd label { gap: 0; display: block; }
    .img-area { position: relative; }
    .content { padding: 20px 10px; }
    .content * { padding: 8px 10px; }
    .page:not(#page-1) { display: none; }
    .paging button { width: 100%; cursor: pointer; background-color: #fff; border-radius: 999px; }
    .arrow-area { position: relative; }
    .icon-arrow {
        position: absolute;
        bottom: 17%;
        left: 50%;
        transform: translateX(-50%);
        width: 4.1rem !important;
        animation: arrow_ani 0.6s ease-in-out infinite alternate;
    }
    @keyframes arrow_ani {
        50% { transform: translate(-50%, -25%); }
    }
    #page-1 .poster_01 { position: relative; }
    #page-1 .inner {
        padding: 4% 1%;
        border-radius: 25px;
        width: 95%;
        margin: 3% auto;
        background-color: #fff;
    }
    #page-1 .inner > .img-area { width: 85%; margin: 0 auto; }
    .q_box { margin-top: 57px; }
    .formGroup { background-color: #fff; padding: 5% 10%; }
    #page-2 { position: relative; }
    .formGroup + .img-area { background-color: #fff; padding: 2%; padding-top: 0; }
    .formGroup + .img-area img { width: 70% !important; margin: 0 auto; }
    #page_landing_c .btn_submit { background-color: transparent !important; }
    #page_landing_c .description {
        width: 100%;
        padding: 1.37% 3.9% 3.37%;
        text-align: center;
        font-family: 'Pretendard';
    }
    #page_landing_c .description p,
    #page_landing_c .description .ad_txt,
    #page_landing_c .description span {
        display: block;
        text-align: center;
        color: #000;
        padding: 0;
        letter-spacing: -0.02em;
        font-family: 'Elice DX Neolli';
        font-weight: 200;
    }
    #page_landing_c .description p { font-size: 150%; }
    #page_landing_c .description .ad_txt,
    #page_landing_c .description span { font-size: 150%; }
    #page_landing_c .question_box { width: 100%; margin: 0 auto 4%; }
    #page_landing_c .question_box [class^="user_"] {
        display: flex;
        align-items: center;
        justify-content: center;
        column-gap: 32px;
    }
    #page_landing_c .question_box > div:not(.formContents) { width: 100%; font-size: 150%; }
    #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) { margin-top: 4.655%; }
    #page_landing_c .legend {
        flex-shrink: 0;
        position: relative;
        display: block;
        width: 20%;
        font-size: 240%;
        font-weight: 600;
        line-height: 1;
        letter-spacing: -1.78px;
        color: #000;
    }
    #page_landing_c .inp {
        font-size: 240%;
        line-height: 1;
        color: #111;
        padding: 3.355% 4.335%;
        margin-left: 0;
        transition: 0s;
        background-color: #fff;
        border: 2px solid #ababab;
        border-radius: 0;
    }
    #page_landing_c .inp::placeholder { color: #6d6d6d; }
    #page_landing_c .agBox {
        text-align: center;
        color: #000;
        font-size: 180%;
        margin: 0 auto 3%;
        font-family: 'Pretendard';
    }
    #page_landing_c .agBox label { font-family: 'Paperlogy'; font-weight: 200; }
    #page_landing_c .agBox .btn-agreement { line-height: 1; }
    .wrap_form .agBox { margin: 7px auto; }
    .wrap_form .agBox a { color: #000; font-weight: 800; }
    #page_landing_c .description + .img-area { width: 80%; margin: 0 auto; }
    #page_landing_c .wrap_curd .submit {
        width: 90%;
        margin: 0 auto;
        padding: 6%;
        background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%;
    }
    #page_landing_c .wrap_curd .submit input[type="image"] {
        width: 70%;
        margin: 0 auto;
        animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite;
        border: none;
    }
    #page-1 .first {
        padding: 4%;
        border-radius: 0;
        background: url('//static.savemkt.com/event/v_${eventSeq}/btn_newsb.png') no-repeat center center / 100% 100%;
    }
    #page-1 .first img {
        width: 50%;
        margin: 0 auto;
        animation: pulsating 0.8s linear infinite;
        -webkit-animation: pulsating 0.8s linear infinite;
    }
    @keyframes pulsating {
        50% { transform: scale(0.95); }
    }
    .score-area { position: relative; }
    .score-area #totalScoreText {
        position: absolute;
        width: 25%;
        left: 50.5%;
        top: 46%;
        transform: translateX(-50%);
        font-weight: 700;
        color: #fffc00;
        font-size: 10vw;
        text-align: center;
    }
    .count-area { position: relative; }
    .count-area .count {
        position: absolute;
        width: 13%;
        left: 52.5%;
        bottom: 7%;
        transform: translateX(-50%);
        font-weight: 700;
        color: #fffc00;
        font-size: 4.5vw !important;
        text-align: center;
    }
    /* 실시간 신청 현황 */
    .subscribe_container { width: 100%; background: #23000c; padding: 0 4.5rem 4rem; }
    .subscribe_bg { background: #f8f8f8; padding: 2.75% 3.5%; border-radius: 20px; }
    .subscribe_container .title {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 3.5rem 0 0;
        column-gap: 1.2rem;
        font-size: 3.5rem;
        text-align: center;
        color: #000;
        font-weight: 700;
        margin-bottom: 2.8rem;
    }
    .subscribe { height: 185px; overflow: hidden; background-color: #f8f8f8; padding: 0; }
    .subscribe .content {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0.4rem 0;
        border-bottom: 0;
    }
    .subscribe .content > div { font-size: 1.35rem !important; width: calc(100% / 3); text-align: center; }
    .subscribe .content > div.date {text-align: left;}
    .subscribe .content > div.phone {text-align: right;}


    /* score table */
    #page_landing_c .score-table-wrap {
        border: 1px solid #850026;
        border-radius: 10px;
        overflow-x: auto;
        overflow-y: hidden;
        -webkit-overflow-scrolling: touch;
    }
    #page_landing_c .wrap_curd .score-table {
        width: 100%;
        min-width: 720px;
        border-collapse: separate;
        border-spacing: 0;
        border: 0;
        table-layout: fixed;
    }
    #page_landing_c .wrap_curd .score-table col.col-no { width: 10%; }
    #page_landing_c .wrap_curd .score-table col.col-symptom { width: 30%; }
    #page_landing_c .wrap_curd .score-table col.col-score { width: 15%; }
    #page_landing_c .wrap_curd .score-table thead { display: table-header-group !important; }
    #page_landing_c .wrap_curd .score-table tbody { display: table-row-group !important; }
    #page_landing_c .wrap_curd .score-table tr { display: table-row !important; }
    #page_landing_c .wrap_curd .score-table th,
    #page_landing_c .wrap_curd .score-table td {
        display: table-cell !important;
        float: none !important;
        width: auto !important;
        position: static !important;
        padding: 12px;
        text-align: center;
        font-size: 37px !important;
        border-right: 1px solid #850026;
        border-bottom: 1px solid #850026;
        border-radius: 0;
    }
    #page_landing_c .wrap_curd .score-table td::before,
    #page_landing_c .wrap_curd .score-table th::before {
        content: none !important;
        display: none !important;
    }
    #page_landing_c .wrap_curd .score-table tr > *:last-child { border-right: 0; }
    #page_landing_c .wrap_curd .score-table tbody tr:last-child > * { border-bottom: 0; }
    #page_landing_c .wrap_curd .score-table thead th { background: #5a001a; color: #fff; }
    #page_landing_c .wrap_curd .score-table tbody td { background: #fff; color: #111; font-weight: 600; }
    #page_landing_c .wrap_curd .score-table tbody td:nth-child(1) { background: #5a001a; color: #fff; }
    #page_landing_c .wrap_curd .score-table td:nth-child(2) { white-space: normal; word-break: keep-all; }
    #page_landing_c .wrap_curd .score-table td[data-score].active {
        background: #ff004a !important;
        color: #fff !important;
    }
    @media screen and (max-width: 768px) {
        #page_landing_c .legend, #page_landing_c .inp {font-size: 200%;}
        .subscribe { padding: 0 2%; height: 80px; }
        .subscribe .content { padding: 0.1rem 0.7rem; }
        .subscribe .content > div { margin-right: 0; font-size: 1.2rem !important; }
        .subscribe_container { padding: 0 1.5rem 1rem; }
        .subscribe .content .name { width: 10%; }
        .content * { padding: 8px 0; }
        .subscribe_container .title {
            width: 70%;
            margin: 0 auto 1rem;
            padding: 2rem 0 0;
            font-size: 1.8rem;
        }
        #page_landing_c .wrap_curd .score-table th,
        #page_landing_c .wrap_curd .score-table td {
            font-size: 20px !important;
            padding: 8px 6px;
        }
    }
    @media screen and (max-width: 480px) {
        .formGroup { padding: 5%; }
        #page_landing_c .wrap_curd .score-table th, #page_landing_c .wrap_curd .score-table td {font-size: 14px !important;}
        #page_landing_c .question_box [class^="user_"] { column-gap: 16px; }
        #page_landing_c .description p { font-size: 68%; }
        #page_landing_c .description .ad_txt { font-size: 70%; word-break: keep-all; }
        .wrap_form .description span { font-size: 70% !important; }
        #page_landing_c .legend { font-size: 90%; width: 14.5%; }
        #page_landing_c .inp { font-size: 90%; padding: 2.488% 4.335% !important; }
        #page_landing_c .question_box > div:not(.formContents) + div:not(.formContents) { margin-top: 5.1%; }
        #page_landing_c .agBox { font-size: 90%; margin-bottom: 3%; }
        .subscribe_container .title {
            margin: 0 auto 0.6875rem;
        }
    .subscribe .content > div { margin-right: 0; font-size: 0.8rem !important; }
    .count-area .count { font-size: 5.5vw !important; }
    .q_box { margin-top: 27px; }
    #page_landing_c .wrap_curd .score-table {
        min-width: 500px;
    }
#page_landing_c .wrap_curd .score-table thead tr:first-child th:nth-child(1),
    #page_landing_c .wrap_curd .score-table tbody td:nth-child(1) {
        position: sticky !important;
        left: -1px;   /* 기존 0 -> -1px */
        z-index: 4;
    }
    #page_landing_c .wrap_curd .score-table thead tr:first-child th:nth-child(2),
    #page_landing_c .wrap_curd .score-table tbody td:nth-child(2) {
        position: sticky !important;
        left: 49px;   /* 기존 50px -> 49px */
        z-index: 4;
    }
    #page_landing_c .wrap_curd .score-table {
        border-left: 1px solid #850026; /* 좌측 라인 보강 */
    }
    /* sticky 셀 배경 강제 (뒤 셀 비침 방지) */
    #page_landing_c .wrap_curd .score-table tbody td:nth-child(1) { background: #5a001a !important; color: #fff; }
    #page_landing_c .wrap_curd .score-table tbody td:nth-child(2) { background: #fff !important; color: #111; }
        .icon-arrow { width: 2.7rem !important; }
    }
    @media screen and (max-width: 375px) {
        .subscribe { padding: 0; }
    }
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"><!-- 애니메이션 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js" integrity="sha512-7eHRwcbYkK4d9g/6tD/mhkf++eoTHwpNM9woBxtPUBWm67zeAfFC+HrdoE2GanKeocly/VxeLvIqwvCdk7qScg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="/js/common.js"></script>

<body id="page_landing_c" class="loaded">
    <main>
        
        <div class="wrap_form">
            <form class="wrap_curd" id="form-1" method="POST" accept-charset="utf-8">
                <div class="formContents">
                    <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_01.gif"></div>
                    <section class="page" id="page-1">
                        <div class="img-area arrow-area">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.jpg">
                            <img class="icon-arrow" src="//static.savemkt.com/event/v_${eventSeq}/arrow.png">
                        </div>
                        <div class="inner">
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_01.png"></div>
                            <div class="q_box">
                                <!-- 1) 표: 각 td에 data-score -->
                                <div class="score-table-wrap">
                            
                                    <table class="score-table">
                                        <colgroup>
                                            <col class="col-no">
                                            <col class="col-symptom">
                                            <col class="col-score">
                                            <col class="col-score">
                                            <col class="col-score">
                                            <col class="col-score">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th rowspan="2">구분</th>
                                                <th rowspan="2">증상</th>
                                                <th colspan="4">상태 정도</th>
                                            </tr>
                                            <tr>
                                                <th>없음</th>
                                                <th>약간</th>
                                                <th>보통</th>
                                                <th>심함</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr data-question="1">
                                                <td>1</td>
                                                <td>안면 홍조</td>
                                                <td data-score="0">0</td>
                                                <td data-score="4">4</td>
                                                <td data-score="8">8</td>
                                                <td data-score="12">12</td>
                                            </tr>
                                            <tr data-question="2">
                                                <td>2</td>
                                                <td>손발 저림</td>
                                                <td data-score="0">0</td>
                                                <td data-score="2">2</td>
                                                <td data-score="4">4</td>
                                                <td data-score="6">6</td>
                                            </tr>
                                            <tr data-question="3">
                                                <td>3</td>
                                                <td>불면증</td>
                                                <td data-score="0">0</td>
                                                <td data-score="2">2</td>
                                                <td data-score="4">4</td>
                                                <td data-score="6">6</td>
                                            </tr>
                                            <tr data-question="4">
                                                <td>4</td>
                                                <td>신경질</td>
                                                <td data-score="0">0</td>
                                                <td data-score="2">2</td>
                                                <td data-score="4">4</td>
                                                <td data-score="6">6</td>
                                            </tr>
                                            <tr data-question="5">
                                                <td>5</td>
                                                <td>우울증</td>
                                                <td data-score="0">0</td>
                                                <td data-score="1">1</td>
                                                <td data-score="2">2</td>
                                                <td data-score="3">3</td>
                                            </tr>
                                            <tr data-question="6">
                                                <td>6</td>
                                                <td>현기증</td>
                                                <td data-score="0">0</td>
                                                <td data-score="1">1</td>
                                                <td data-score="2">2</td>
                                                <td data-score="3">3</td>
                                            </tr>
                                            <tr data-question="7">
                                                <td>7</td>
                                                <td>피로감</td>
                                                <td data-score="0">0</td>
                                                <td data-score="1">1</td>
                                                <td data-score="2">2</td>
                                                <td data-score="3">3</td>
                                            </tr>
                                            <tr data-question="8">
                                                <td>8</td>
                                                <td>관절통</td>
                                                <td data-score="0">0</td>
                                                <td data-score="1">1</td>
                                                <td data-score="2">2</td>
                                                <td data-score="3">3</td>
                                            </tr>
                                            <tr data-question="9">
                                                <td>9</td>
                                                <td>두통</td>
                                                <td data-score="0">0</td>
                                                <td data-score="1">1</td>
                                                <td data-score="2">2</td>
                                                <td data-score="3">3</td>
                                            </tr>
                                            <tr data-question="10">
                                                <td>10</td>
                                                <td>가슴 두근거림</td>
                                                <td data-score="0">0</td>
                                                <td data-score="1">1</td>
                                                <td data-score="2">2</td>
                                                <td data-score="3">3</td>
                                            </tr>
                                            <tr data-question="11">
                                                <td>11</td>
                                                <td>개미환각</td>
                                                <td data-score="0">0</td>
                                                <td data-score="1">1</td>
                                                <td data-score="2">2</td>
                                                <td data-score="3">3</td>
                                            </tr>
                                            <tr data-question="12">
                                                <td>12</td>
                                                <td>질건조/분비물감소</td>
                                                <td data-score="0">0</td>
                                                <td data-score="1">1</td>
                                                <td data-score="2">2</td>
                                                <td data-score="3">3</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <!-- 합계 저장용 hidden -->
                                <input type="hidden" id="totalScore" name="add2" value="0">
                            </div>
                            <div class="poster_01">
                                <p class="paging">
                                    <button type="button" onclick="show2pg()" class="first"><img src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt.png"></button>
                                </p>
                            </div>
                        </div>
                        <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_02.gif"></div> -->
                    </section>
                    
                    <section class="page" id="page-2">
                        <!-- 다음 페이지에서 보여줄 영역 -->
                        <div class="img-area score-area">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_03.jpg">
                            <span id="totalScoreText">0</span>
                        </div>
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/event_main_04.gif"></div>
                        <div class="formGroup">
                            <div class="form_inner">
                                <div class="question_container">
                                    <div class="question_box">
                                        <div class="user_name">
                                            <span class="legend">이름</span>
                                            <input type="text" name="name" id="name" class="inp" required placeholder="성함" autocomplete="off">
                                        </div>
                                        <div class="user_phone">
                                            <span class="legend">연락처</span>
                                            <input type="tel" name="phone" id="phone" class="inp" required autocomplete="off" maxlength="11">
                                        </div>
                                        <div class="user_age">
                                            <span class="legend">나이</span>
                                            <input type="tel" name="age" id="age" class="inp" required="" placeholder="나이" autocomplete="off" maxlength="2">
                                        </div>
                                    </div>   
                                </div>
                            </div>
                        
                            <div class="agBox">
                                <label><input name="agBox" type="checkbox">혜택 제공을 위한 <a href="#" class="btn-agreement">개인정보 처리방침</a>에 동의해주세요</label>
                            </div>
                            <div class="submit"><input type="image" value="" onclick="fnForm('form-1')" class="btn_submit" src="//static.savemkt.com/event/v_${eventSeq}/btn_newsb_txt_02.png" /></div>
                            <div class="description">
                                <p id="event-period">이벤트 기간 :  <?=date("Y년 m월 01일")." ~ ".date("Y년 m월 t일 까지")?></p>
                                <div class="ad_txt">안심하세요! 본원에서는 고객님의 소중한 개인정보를 <br />상담 외 어떠한 목적으로도 사용하지 않습니다.</div>
                                <span id="target">대상 : ${resVo.target}</span>
                            </div>
                            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/txt_02.png"></div>
                        </div>
                        
                        <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/arrow_sub.png"></div>
                        <div class="subscribe_container">

                            <div class="title img-area">
                                <div class="img-area icon-img"><img src="//static.savemkt.com/event/v_${eventSeq}/icon_01.gif"></div>
                                <div class="img-area text-img"><img src="//static.savemkt.com/event/v_${eventSeq}/sub_title.png"></div>
                            </div>
                            <div class="subscribe_bg">
                                <div class="subscribe" data-limit="10"></div>
                            </div>
                        </div>

                        <div class="img-area count-area">
                            <img src="//static.savemkt.com/event/v_${eventSeq}/event_main_05.gif">
                            <span class="count"></span>
                        </div>
                    </section>
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
            <!-- <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/notice.jpg"></div> -->
            <div class="img-area"><img src="//static.savemkt.com/event/v_${eventSeq}/footer.jpg"></div>
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

    let isAnimating = false;

    // ==========================
    // UI LOCK (핵심)
    // ==========================
    function lockUI() {
        $('body').addClass('ui-lock');
    }

    function unlockUI() {
        $('body').removeClass('ui-lock');
    }

    function isBlocked() {
        return isAnimating;
    }

    if (typeof window.sungmoAgreementWithText !== 'function') {
        window.sungmoAgreementWithText = function(policyText, selector) {
            var targetSelector = selector || '.modal-content p';
            var modal = $(targetSelector);
            modal.text((policyText || '').trim());
            modal.css('white-space', 'pre-line');
        };
    }

    $(document).ready(function(){
        blockSourceView();//드래그, 우클릭 방지
        initDate();
        
        cleardcAgreement();

        thisAgreementWithText(`개인정보처리방침
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
            - 위탁 항목 : 이름, 연락처, 성별, 출생연도, 설문내용`);


        //신청현황 리스트
        getComment(`${eventSeq}`);
    });

	function returnComment(resultData){
		$('.subscribe').each(function(idx,obj) {
            resultData.forEach(function(item) {
				var html  = '<div class="content" data-id="'+ item.seq +'">';
					html += '   <div class="date">'+ item.regDate +'</div>';
					html += '   <div class="name">'+ item.name +'</div>';
					html += '   <div class="phone">'+ item.phone +'</div>';
					html += '</div>';
				$(obj).append(html);
			});
            
		});

        $('.subscribe_container').toggle(resultData.length >= 10);
        $('.formGroup + .img-area').toggle(resultData.length >= 10);
	}

	setInterval(function(){
        $('.subscribe .content:first').slideUp(function(){
            $(this).show().parent().append(this)
        })
    },2000);


    // 3) 선택값 저장 + 합계 계산
    const selectedScores = {}; // { "1": 8, "2": 4, ... }

    function updateTotalScore() {
    const total = Object.values(selectedScores).reduce((sum, v) => sum + v, 0);

    // hidden 저장 (서버 전송용)
    document.getElementById('totalScore').value = total;

    // 다음 페이지 표시용
    const totalEl = document.getElementById('totalScoreText');
    if (totalEl) totalEl.textContent = total + '점';
    }

    // 이벤트 위임 (동적으로 표가 바뀌어도 안전)
    document.querySelector('.score-table').addEventListener('click', (e) => {
    const td = e.target.closest('td[data-score]');
    if (!td) return;

    const tr = td.closest('tr[data-question]');
    const q = tr.dataset.question;

    // 같은 행 active 제거
    tr.querySelectorAll('td[data-score]').forEach(cell => cell.classList.remove('active'));

    // 현재 선택 active
    td.classList.add('active');

    // 점수 저장 + 합계 업데이트
    selectedScores[q] = Number(td.dataset.score);
    updateTotalScore();
    });

    let countTimer = null;
    let currentCount = 20;

     function renderCount(n) {
        const el = document.querySelector('.count');
        if (!el) return;
        el.textContent = n + '명';
    }
    function startCountOnPage2Enter() {
        if (countTimer) {
            clearInterval(countTimer);
            countTimer = null;
        }
        currentCount = 20;
        renderCount(currentCount);
        countTimer = setInterval(() => {
            currentCount -= 1;
            if (currentCount <= 1) {
                currentCount = 1;
                renderCount(currentCount);
                clearInterval(countTimer);
                countTimer = null;
                return;
            }
            renderCount(currentCount);
        }, 3000);
    }


    // 리프레시 시 브라우저의 스크롤 복원으로 하단에서 시작하는 문제 방지.
    if ('scrollRestoration' in history) {
        history.scrollRestoration = 'manual';
    }
    $(window).on('pageshow', function () {
        window.scrollTo(0, 0);
    });

    $('input[name="tadd1"]').on('change', function () {
        const $tadd1Labels = $('input[name="tadd1"]').closest('label');
        $tadd1Labels.removeClass('on');

        if ($(this).val() === "그 외 지역") {
            $('.overlay, .popup_01').show();
        } else {
            $(this).closest('label').addClass('on');
        }
    });

    // 첫번째 페이지
    function show1pg() {
        const tl = gsap.timeline();

        tl.from('#page-1 .poster_01', {
            y: 50,
            opacity: 0,
            delay: 0.2,
            ease: "power1.out"
        });

        tl.from('#page-1 .paging', {
            y: 50,
            opacity: 0,
            ease: "power1.out"
        });
    }

    show1pg();

    function scrollPageTop() {
        window.scrollTo(0, 0);
        document.documentElement.scrollTop = 0;
        document.body.scrollTop = 0;
    }

    // 두번째 페이지
    function show2pg() {
        const totalQuestions = document.querySelectorAll('.score-table tr[data-question]').length;
        const answered = Object.keys(selectedScores).length;
        if (answered < totalQuestions) {
            alert('모든 항목을 선택해주세요.');
            return;
        }

        updateTotalScore(); // 최신 합계 반영

        startCountOnPage2Enter();

        if (isAnimating) return;
        isAnimating = true;
        lockUI();
        const isMobile = window.matchMedia("(max-width: 768px)").matches;
        const tl = gsap.timeline({
            onComplete: () => {
                isAnimating = false;
                unlockUI();
            }
        });
        tl.to('#page-1', { opacity: 0, duration: 0.2 })
        .set('#page-1', { display: 'none' })
        .set('#page-2', { display: 'block', opacity: 1 })
        .call(scrollPageTop);
        
        // 페이지2 진입 시 카운트 시작
        startCountOnPage2Enter();
        // count_box -> count-box 오타 수정
        tl.from('#page-2 .poster_03', {
            x: 200,
            opacity: 0,
            duration: 0.2
        });
        tl.from('#page-2 .poster_04', {
            x: 200,
            opacity: 0,
            duration: 0.2
        });
        tl.from('#page-2 .q_select label', {
            x: 200,
            opacity: 0,
            stagger: 0.1
        });
    }
    // 세번째 페이지
    function show3pg() {
        if (isAnimating) return;
        isAnimating = true;
        lockUI();

        const tl = gsap.timeline({
            onComplete: () => {
                isAnimating = false;
                unlockUI();
            }
        });

        tl.to('#page-2', { opacity: 0, duration: 0.2 })
        .set('#page-2', { display: 'none' })
        .set('#page-3', { display: 'block', opacity: 1 });

        tl.from('#page-3 .table_box, #page-3 .submit, #page-3 .description', {
            x: 200,
            opacity: 0,
            stagger: 0.1
        });
    }

    // 버튼 페이지 이동 함수 (설문)
    function pageSelFuc(num, nextFn) {
        if (isBlocked()) return;

        const questionName = 'tadd' + num;
        const checked = $('input[name="' + questionName + '"]:checked, input[name="' + questionName + '[]"]:checked');

        if (checked.length > 0) {
            if (typeof nextFn === 'function') {
                nextFn();
            }
        } else {
            alert("설문을 선택해주세요");
        }
    }

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

    // db-btn 클릭시 db단 이동
    $('.db_btn').on('click',function(){
        const formOffset = $('.wrap_form').offset().top;

        $('html, body').animate({
            scrollTop: formOffset
        }, 500); // 500ms 동안 스크롤 이동
    })

	$('.submit').bind('click',function(){
		if(!$('input[name="name"]').is(':visible')){
			$('.db-name').click();
			$('input[name="name"]').focus();
		}
		else if(!$('input[name="phone"]').is(':visible')){
			$('.db-phone').click();
			$('input[name="phone"]').focus();
		}
	});

    //submit
	function fnForm(formId){
		/* form 자동 처리 방지 */
		event.preventDefault();
		/* form id로 proc */
		let procForm = document.getElementById(formId);

        // let selectedRadio1 = procForm.querySelector('input[name="tadd1"]:checked');
		// if (!selectedRadio1) {
		// 	alert("설문을 선택해주세요.");
		// 	return;
		// } else {
		// 	procForm.querySelector("input[name='add1']").value = selectedRadio1.value;
		// }

		// 필수값 체크 항목
		var required = {
			'name': '이름'
			,'age': '나이'
			,'phone': '전화번호'
			//,'add1': '설문1'
			// ,'add2': '설문2'
			// ,'add3': '설문3'
			// ,'agBox': '개인정보'
		};
		
		validateForm(procForm, required);
	}
</script>