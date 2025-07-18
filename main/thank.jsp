<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	@font-face {
	font-family: 'NanumSquareRound';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
	font-weight: normal;
	font-style: normal;
}
html,body,form,div,h1,h2,input{margin:0; padding:0;}
a,*:visited,*:link,*:focus,button{text-decoration:none; color:inherit; outline:none; border:0; transition:all 0.3s ease; -webkit-transition:all 0.9s ease;}
body {margin:0; background-color:#333; font-size:16px; font-family:'noto sans kr','맑은고딕',MG,sans-serif;}
ul, ol, li {margin:0; padding:0; list-style:none; font-size:100%;}
table{border-collapse:separate; border-spacing:0;}
input{vertical-align:middle;}
img{vertical-align:middle;}
label{display:inline-block;}
label img{pointer-events:none;}
.blind{position:absolute; top:0; left:-1000px; width:0; height:0; font-size:0; line-height:0;}
.alignCenter{text-align:center;}
.alignLeft{text-align:left;}
.alignRight{text-align:right;}
.mt3{margin-top:3px !important;}
.mt5{margin-top:5px !important;}
.mt10{margin-top:10px !important;}
.mt15{margin-top:15px !important;}
.mt20{margin-top:20px !important;}
.mt25{margin-top:25px !important;}
.mt30{margin-top:30px !important;}
.mb3{margin-bottom:3px !important;}
.mb5{margin-bottom:5px !important;}
.mb10{margin-bottom:10px !important;}
.mb15{margin-bottom:15px !important;}
.mb20{margin-bottom:20px !important;}
.mb25{margin-bottom:25px !important;}
.mb30{margin-bottom:30px !important;}
.pt3{padding-top:3px !important;}
.pt5{padding-top:5px !important;}
.pt10{padding-top:10px !important;}
.pt15{padding-top:15px !important;}
.pt20{padding-top:20px !important;}
.pt25{padding-top:25px !important;}
.pt30{padding-top:30px !important;}
.pb3{padding-bottom:3px !important;}
.pb5{padding-bottom:5px !important;}
.pb10{padding-bottom:10px !important;}
.pb15{padding-bottom:15px !important;}
.pb20{padding-bottom:20px !important;}
.pb25{padding-bottom:25px !important;}
.pb30{padding-bottom:30px !important;}
.clear{clear:both;}

/* Alert */
.alert{position:relative; box-sizing:border-box; width:100%; height:100vh; background-color:#fff; text-align:center; overflow:hidden;}
.alert .alert-container{position:absolute; top:50%; left:50%; transform:translate(-50%,-50%);}
.alert .message{background-color:#1a1a1a; color:#fff; border-radius:15px; padding:80px 20px; margin-top:-50px; word-break:keep-all; box-shadow:3px 3px 7px rgba(0,0,0,.8);}
.alert h1 {
	font-family: 'Montserrat', sans-serif;
	font-size: 750%;
	font-weight: 900;
	margin: 0px;
	color: #000;
	text-transform: uppercase;
	letter-spacing: -6px;
	margin-left:12px;
}
.alert h1>span {text-shadow:-4px 1px 0px #fff;}
.alert .btn-group{padding-top:10px;}
.alert .btn-group .btn{background-color:#fff; border-radius:5px; padding:10px 20px;}
.alert .btn-group .btn_back{color:#fff; background-color:#333;}
.alert .btn-group .btn_confirm{color:#fff; background-color:#26a6f8;}

/* Block Message */
.block_msg{position:fixed; top:0; display:flex; align-items:center; justify-content:center; font-size:200%; width:100%; height:100vh; color:#000; background-color:rgba(255, 73, 73, 0.8); text-align:center; z-index:900;}
.block_msg.hide{display:none;}

/* Thanks Page */
.thanks{position:relative; box-sizing:border-box; width:100%; height:100vh; background-color:#F5F5F5; text-align:center; border-top:5px solid #0585C4; overflow:hidden;}
.thanks .thanks-container{position:absolute; top:50%; left:50%; width:100%; max-width:500px; transform:translate(-50%,-50%);}
.thanks .message{color:#000; font-size:200%; line-height:1.4;}
.thanks .btn-group{padding-top:30px;}
.thanks .btn-group .btn{font-size:140%; background-color:#fff; border-radius:5px; padding:20px 100px;}
.thanks .btn-group .btn_confirm{color:#fff; background-color:#0585C4;}
/* 

 * Event Page 
*/

/* Comments */
.comments{box-sizing:border-box; width:100%; background-color:#fff; border:15px solid #000; padding:5px;}
.comments .box{box-sizing:border-box; height:150px; overflow:hidden;}
.comments .box .cnt{display:block; font-size:100%; font-weight:bold; border-bottom:1px solid #c0c0c0; padding:5px 0 5px 5px;}
.comments .box .list{width:95%; margin:0px auto;}
.comments .box .list li{padding:4px 0; border-bottom:1px solid #eee;}
.comments .box .list li:after{display:block; content:""; clear:both;}
.comments .box .list li span{box-sizing:border-box; display:inline-block; font-size:106%; line-height:1.2; text-align:center; vertical-align:middle;}
.comments .box .list li span:nth-of-type(1){width:18%;}
.comments .box .list li span:nth-of-type(2){width:14%;}
.comments .box .list li span:nth-of-type(3){width:28%;}
.comments .box .list li span:nth-of-type(4){width:22%;}
.comments .box .list li span:nth-of-type(5){width:18%;}
.comments .box .list li span b{display:inline-block; min-width:50%; border:1px solid #000; color:#fff; font-weight:normal; padding:5px 10px; font-size:70%;}
.comments .box .list li span b.ing{background-color:#fff; color:#000;}
.comments .box .list li span b.done{background-color:#3b3939;}

/* replys */
.replys{box-sizing:border-box; width:100%; background-color:#fff; border:15px solid #000;}
.replys .input-area{width:100%; background-color:#d0d0d0;}
.replys .input-area table{width:95%; margin:0 auto; padding:10px 0 10px;}
.replys .input-area table tr td:nth-of-type(1){width:80%;}
.replys .input-area table tr td:nth-of-type(2){width:20%;}
.replys .input-area table tr td input.reply_input{width:100%; height:55px; box-shadow:1px 0 1px 1px #a3a3a3 inset; border:none; font-size:110%; background-color:#fff; padding-left:10px;}
.replys .input-area table tr td input[type="image"]{width:100%;}
.replys .box{box-sizing:border-box; height:150px; overflow:hidden; text-align:center; padding-top:2%;}
.replys .box .cnt{display:block; font-size:100%; font-weight:bold; border-bottom:1px solid #c0c0c0; padding:5px 0 5px 5px;}
.replys .box .list{width:95%; margin:0px auto;}
.replys .box .list li{padding:4px 0; border-bottom:1px solid #eee;}
.replys .box .list li:after{display:block; content:""; clear:both;}
.replys .box .list li span{box-sizing:border-box; display:inline-block; font-size:106%; line-height:1.2; text-align:center; vertical-align:middle;}
.replys .box .list li span:nth-of-type(1){width:28%; font-weight: bolder; letter-spacing:-1px;}
.replys .box .list li span:nth-of-type(2){width:68%; text-align:left;}

/* Ajax Comments */
.subscribe{background-color:#fff; padding:3% 5%;}
.subscribe .content{padding:4% 0; border-bottom:1px dashed #ccc;}
.subscribe .content:last-child{border:0 none;}
.subscribe .content div{padding:1% 0;}
.subscribe .btn_moreSubscribe{display:block; width:100%; text-align:center; padding:5px 0;}

/* Checkbox */
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

#wrap{position:relative; width:818px; font-size:100%; margin:0 auto;}
#wrap .formContents{position:relative;}
.container{width:100%;}
.img-area{position:relative; display:block;}
.img-area img{display:inline-block; width:100%; margin:0 0 -1px 0; text-align:center; vertical-align:top;}
.container video{display:block; width:100%;}
/* 폼양식 */
.form{background-color:#fff;}
.form .table_box{width:70%; padding:7px 0; margin:0 auto;}
.form .table_box table{border-collapse:collapse; table-layout:fixed; width:100%; margin:7px auto;}
.form .table_box table th,
.form .table_box table td{position:relative; height:43px; background-color:#fff; padding:7px 3px;}
.form .table_box table th{width:151px; text-align:right;}
.form .table_box table th img{height:100%;}
.form .table_box table td{text-align:left;}
.form .table_box table tr.auth{display:none;}
.form .table_box table tr.auth .auth_time{position:absolute; bottom:10px; right:23%; font-size:70%; color:#00f;}
.form .inp{box-sizing:border-box; width:100%; height:100%; font-size:16px; border:0 none; background-color:transparent; resize:none;}
.form .inp.short{width:50%;}
.form .inp.add_btn{width:80%;}
.form .btn{width:19%; height:100%; font-size:90%; font-weight:bold; background-color:transparent; border:1px solid #a3a3a3; vertical-align:middle; margin-left:1%; padding:0; cursor:pointer;}
.form .agBox{display:block; width:90%; font-size:70%; text-align:center; margin:0 auto 7px;}
.form .agBox a{font-weight:bold;}
.form .agBox.gooddoc{text-align:left; width:70%;}
.form .agBox.gooddoc label{padding-bottom:8px;}
	/* tableBorder : 테이블 테두리 */
.form .table_box.tableBorder table{border-collapse:separate; border:1px solid #a3a3a3; padding:10px;}
	/* tableRadius : 테이블 테두리 곡면 */
.form .table_box.tableRadius table{border-collapse:separate; border-radius:15px;}
	/* rowUnderline : 각행 밑줄 */
.form .table_box.rowUnderline table th,
.form .table_box.rowUnderline table td{border:1px solid #a3a3a3; border-width:0 0 1px 0;}
	/* rowBorder : 각행 테두리 */
.form .table_box.rowBorder table{border-collapse:separate; border-spacing:0 10px;}
.form .table_box.rowBorder table th,
.form .table_box.rowBorder table td{border:1px solid #a3a3a3; padding:7px 10px;}
.form .table_box.rowBorder tr td:nth-of-type(1){border-width:1px 0 1px 0;}
.form .table_box.rowBorder table th{border-width:1px 0 1px 1px;}
.form .table_box.rowBorder table td{border-width:1px 1px 1px 0;}
.form .table_box.rowBorder tr td:last-child{border-width:1px 1px 1px 0 !important;}
	/* rowRadius : 각행 테두리 곡면 */
.form .table_box.rowRadius tr th:first-child{border-radius:15px 0 0 15px;}
.form .table_box.rowRadius tr td:last-child{border-radius:0 15px 15px 0;}
.form .table_box.rowBorder.rowRadius tr:last-child th:first-child{border-radius:15px 0 0 15px;}
.form .table_box.rowBorder.rowRadius tr:last-child td:last-child{border-radius:0 15px 15px 0;}
	/* rowMerge : 테이블 간격 붙이기 */
.form .table_box.rowMerge table{border-spacing:0 !important;}
.form .table_box.rowMerge table tr:first-child th{border-bottom-left-radius:0; border-bottom-right-radius:0;}
.form .table_box.rowMerge table tr:first-child td{border-bottom-right-radius:0;}
.form .table_box.rowMerge table tr:nth-of-type(n+2) th,
.form .table_box.rowMerge table tr:nth-of-type(n+2) td{border-top-width:0 !important; border-radius:0;}
.form .table_box.rowMerge table tr:last-child th{border-top-left-radius:0; border-top-right-radius:0;}
.form .table_box.rowMerge table tr:last-child td{border-top-right-radius:0;}
.form .table_box.rowMerge.rowRadius tr:last-child th:first-child{border-radius:0 0 0 15px !important;}
.form .table_box.rowMerge.rowRadius tr:last-child td:last-child{border-radius:0 0 15px 0 !important;}
	/* inpBorder : 입력박스 테두리 */
.form .table_box.inpBorder table td .inp{border:1px solid #a3a3a3; padding:0 10px;}
	/* inpUnderline :입력박스 밑줄 */
.form .table_box.inpUnderline table td .inp{border:1px solid #a3a3a3; border-width:0 0 1px;}
	/* inpRadius : 입력박스 테두리 곡면 */
.form .table_box.inpRadius table td .inp{border-radius:15px;}
	/* noHaveLabel : 입력박스 단독 */
.form .table_box.noHaveLabel table td:first-child{border-width:1px !important; text-align:center;}
.form .table_box.noHaveLabel table td input{text-align:center; line-height:1.4;}
.form .table_box.noHaveLabel table td textarea{text-align:center; line-height:1.4;}
.form .table_box.noHaveLabel.rowRadius tr td:first-child{border-top-left-radius:15px !important; border-bottom-left-radius:15px !important;}
.form .table_box.rowMerge.rowRadius.noHaveLabel table tr:first-child td:first-child{border-top-left-radius:15px; border-bottom-left-radius:0 !important;}
.form .table_box.rowMerge.rowRadius.noHaveLabel table tr:last-child td:first-child{border-bottom-left-radius:15px !important;}
.form .table_box.rowMerge.rowRadius.noHaveLabel table tr:last-child td:last-child{border-bottom-right-radius:15px !important;}
.form .table_box.rowMerge.rowRadius.noHaveLabel table tr:nth-of-type(n+2) td{border-radius:0 !important;}
.form .table_box.rowMerge.rowRadius.noHaveLabel .inp::placeholder {font-size:120%;}
	/* cellSplit : noHaveLabel 상태에서 셀 간격 띄움 */
.form .table_box.cellSplit table{border-spacing: 20px 10px;}
.form .table_box.cellSplit table td{border-radius: 15px !important;}

/* 개인정보 처리방침 */
.form .agreement{display:none; box-sizing:border-box; width:95%; border:1px solid #a3a3a3; border-radius:3px; padding:5px; margin:15px auto; background-color:#fff;}
.form .agreement{display:none; box-sizing:border-box; width:95%; background-color:#fff; border:1px solid #a3a3a3; border-radius:3px; padding:5px; margin:15px auto;}
/* popup : 개인정보 팝업 */
.form .agreement.popup{position:absolute; top:50%; left:50%; transform:translate(-50%,-50%);}
.form .agreement .button{float:right; font-size:75%; border:1px solid #000; border-radius:0px; background-color:#efefef; padding:4px 8px; margin:3px;}
.form .agreement h3{font-size:80%; margin:0; padding:0 0 1%;}
.form .agreement ol li{line-height:1.2; font-size:75%;}
.form .agreement ol li.desc{line-height:2;}
.form .mkt_agreement{display:none; box-sizing:border-box; width:95%; border:1px solid #a3a3a3; border-radius:3px; padding:5px; margin:15px auto; background-color:#fff;}
.form .mkt_agreement ol li{line-height:1.2; font-size:75%;}
.form .submit{text-align:center; padding:7px 0;}
.form .submit input[type="image"]{}
/* 부가설명 */
.form .description{width:98%; text-align:center; margin:0 auto; padding:0;}
.form .description p{font-weight:bold; font-size:108%; margin:0 auto; padding:0.5% 0;}
.form .description span{font-size:78%; margin:0 auto; padding:0.5% 0;}
.form .description .ad_txt{font-size:78%; margin:0 auto; padding:0.5% 0;}

/* 굿닥 땡큐페이지 */
.gooddoc-thanks{}
.gooddoc-thanks img{width:100%;}
.gooddoc-thanks .gdt-bg{background:url("//static.hotblood.co.kr/event/gooddoc/thanks/bg_01.jpg"); background-size:100%; width:100%;}
.gooddoc-thanks .gdt-bg table{width:90%; margin:0 auto;}
.gooddoc-thanks .gdt-bg table td img{width:95%;}


@media screen and (max-width: 818px){
	#wrap{width:100%;}
	.form .agBox{font-size:90%; letter-spacing:-1px;}
}

@media screen and (max-width: 640px){
	body{font-size:14px;}
	.form input[type="checkbox"] + span:before,
	.form input[type="radio"] + span:before {width:10px; height:10px;}
	.form input[type="checkbox"] + span,
	.form input[type="radio"] + span{padding-left:17px;}
	.form input[type="checkbox"] + span:after,
	.form input[type="radio"] + span:after{width:15px; height:7px;}

	.form .submit input[type="image"]{width:90%;}
	.form .table_box{width:90%;}
	.form .table_box table th,
	.form .table_box table td{height:30px;}
	.form .table_box table th{width:105px;}

	.form .description p{font-weight:normal; padding:1% 0;}
	.form .description span{font-size:90%; padding:1% 0;}
	.form .description .ad_txt{font-size:90%; padding:1% 0;}

	.comments .box{font-size:87%; letter-spacing:-1px;}
	.replys .box{font-size:87%; height:100px;}
	.replys .input-area table tr td input.reply_input{height:33px;}
}

@media screen and (max-width: 500px){
	.form .agBox.gooddoc{width:90%;}
	.form .description p{font-size:80%;}
	.form .description span{font-size:80%;}
	.form .description .ad_txt{font-size:80%;}
	.form .agBox {font-size: 75%;}
}

@media screen and (max-width: 415px){
	.replys .input-area table tr td input.reply_input{height:29px;}

	/* .form .description p{font-size:98%;} */
	/* .form .agBox{font-size:88%;} */
}

@media screen and (max-width: 375px){
	body{font-size:12px;}

	.replys .input-area table tr td input.reply_input{height:24px;}
}

@media screen and (max-width: 320px){
	body{font-size:10px;}
}

.thanks{background-color: #e9e9e9; overflow-y: scroll;}	
.thanks .thanks-container{padding: 0 5% 5em; box-sizing: border-box; position: relative; margin:15% auto 0; top:unset; left:unset; transform:unset;}

/* message */
.message{text-align: center; font-family: 'NanumSquareRound';}
.message .img-area{margin: 10%;}
.message .img-area.dot{width: 3%; margin: 0 auto;}
.message .img-area.dot img{width: 100%;}

/* btn */
.thanks .btn-group .btn_confirm{display: block; background-color: transparent; width: 65%; margin: 0 auto; padding: 0;}
.thanks .btn-group .btn_confirm img{width: 100%;}

</style>
<div class="thanks">
	<div class="thanks-container">
		<h1 class="blind">이벤트 등록 완료</h1>
		<div class="message">
			<div class="img-area"><img src="//static.resta.co.kr/event/thanks/txt_thx_01.png"></div>
			<div class="img-area dot"><img src="//static.resta.co.kr/event/thanks/ico_thx_03.png"></div>
			<div class="img-area"><img src="//static.resta.co.kr/event/thanks/ico_thx_04.png"></div>
		</div>
		<p class="btn-group"><a href="#" onClick="fnHisBack();" class="btn btn_confirm"><img src="//static.resta.co.kr/event/thanks/btn_thx_01.png"></a></p>
	</div>
</div>
<script>
	// blockSourceView();
	
	function fnHisBack(){
		//sessionStorage.setItem("historyBackReloaded", "true");
		//history.back()
		location.href=sessionStorage.getItem("historyBackReloaded");
	}
	
	function blockSourceView(){
		document.onkeydown = function (e) {
			if (e.code === 'F12') {
				e.preventDefault();
				e.returnValue = false;
			}
		};

		// 우클릭 방지
		document.oncontextmenu = function () {
			return false;
		};

		// 드래그 방지
		document.ondragstart = new Function('return false');

		// 선택 방지
		document.onselectstart = new Function('return false');
	}
</script>	