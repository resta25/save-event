<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/taglib.jspf" %>

 <title>Error::404</title>

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Cabin:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:900" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
<style>
	* {
		-webkit-box-sizing: border-box;
		box-sizing: border-box;
	}

	body {
		padding: 0;
		margin: 0;
	}

	#notfound {
		position: relative;
		height: 100vh;
	}

	#notfound .notfound {
		position: absolute;
		left: 50%;
		top: 50%;
		-webkit-transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		transform: translate(-50%, -50%);
	}

	.notfound {
		max-width: 520px;
		width: 100%;
		line-height: 1.4;
		text-align: center;
	}

	.notfound .notfound-404 {
		position: relative;
		height: 240px;
	}

	.notfound .notfound-404 h1 {
		font-family: 'Montserrat', sans-serif;
		position: absolute;
		left: 50%;
		top: 50%;
		-webkit-transform: translate(-50%, -50%);
		-ms-transform: translate(-50%, -50%);
		transform: translate(-50%, -50%);
		font-size: 252px;
		font-weight: 900;
		margin: 0px;
		color: #262626;
		text-transform: uppercase;
		letter-spacing: -40px;
		margin-left: -20px;
	}

	.notfound .notfound-404 h1>span {
		text-shadow: -8px 0px 0px #fff;
	}

	.notfound .notfound-404 h3 {
		font-family: 'Cabin', sans-serif;
		position: relative;
		font-size: 16px;
		font-weight: 700;
		text-transform: uppercase;
		color: #262626;
		margin: 0px;
		letter-spacing: 3px;
		padding-left: 6px;
	}

	.notfound h2 {
		font-family: 'Cabin', sans-serif;
		font-size: 20px;
		font-weight: 400;
		text-transform: uppercase;
		color: #000;
		margin-top: 0px;
		margin-bottom: 25px;
	}

	@media only screen and (max-width: 767px) {
		.notfound .notfound-404 {
		  height: 200px;
		}

		.notfound .notfound-404 h1 {
		  font-size: 200px;
		}
	}

	@media only screen and (max-width: 480px) {
		.notfound .notfound-404 {
		  height: 162px;
		}

		.notfound .notfound-404 h1 {
		  font-size: 162px;
		  height: 150px;
		  line-height: 162px;
		}

		.notfound h2 {
		  font-size: 16px;
		}
	}
</style>
</head>

<body style="background: #fff;">
	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<h3>PAGE NOT FOUND</h3>
				<h1><span>4</span><span>0</span><span>4</span></h1>
			</div>
			<h2>죄송합니다. 요청하신 페이지를 찾을 수 없습니다.</h2>
			<p class="description"><!--존재하지 않는 랜딩입니다.--></p>				<!--<p class="description">/home/event_new/www/zenith/zenith_core.php 115</p>-->
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->