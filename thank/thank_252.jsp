<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	@font-face {
    font-family: 'NanumSquareRound';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.thanks {overflow-y: hidden; max-width: 1080px; margin: 0 auto;}	
.thanks .thanks-container{position: relative; max-width: 100%; left: 0; top: 0; transform: translate(0, 0); box-sizing: border-box; position: relative; }

.img-area {width: 85.649%; margin: 0 auto;}
.img-area img {display: block; width: 100%;}

.video-area {position: relative; padding-top: 5%;}
.video-area::before {content: '생성형 AI 영상'; font-size: 100%; color: #717171; text-align: right; width: 100%; display: block;}
.video-area video {display: block; width: 100%; height: 100%; }

/* message */
.message{text-align: center; font-family: 'NanumSquareRound';}

/* btn */
.btn-area {position: relative; margin-top: 5%;}
/* .btn-group {position: absolute; bottom: 11%; left: 50%; transform: translateX(-50%); max-width: 280px;} */

.thanks .btn-group {width: 60%; padding: 0; margin: 5% auto;}
.thanks .btn-group .btn_confirm{display: block; background-color: transparent; padding: 0;}
.thanks .btn-group .btn_confirm img{width: 100%;}


@media screen and (max-width: 768px){
	.btn-group {width: 35vw;}

    .video-area::before {font-size: 80%;}
}
</style>
<div class="thanks">
	<div class="thanks-container">
		<h1 class="blind"></h1>
		<div class="message">
			<div class="img-area btn-area">
				<img src="//static.savemkt.com/event/thanks_sinbigam/event_main_01.png">
			</div>
            <div class="video-area">
                <video id="location" playsinline="" muted="" loop="" src="//static.savemkt.com/event/thanks_sinbigam/video.mp4" type="video/mp4"></video>
                <script>setTimeout(function(){ $('#location').trigger('play'); },500);</script>
            </div>
            <p class="btn-group"><a href="#" onClick="fnHisBack();" class="btn btn_confirm"><img src="//static.savemkt.com/event/thanks_sinbigam/btn_newsb.png"></a></p>
		</div>
	</div>
</div>
<script>
	blockSourceView();
	
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