<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page trimDirectiveWhitespaces="true"%>
<jsp:useBean id="user" class="study.jsp.mysite.model.Member"
	scope="session" />
<c:set var="userNo" value="${loginInfo}" />
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Guardian &mdash; 100% Free Fully Responsive HTML5
	Template by FREEHTML5.co</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300"
	rel="stylesheet" type="text/css">

<!-- Animate.css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/superfish.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">


<!-- Modernizr JS -->
<script
	src="${pageContext.request.contextPath}/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
	<![endif]-->
<!--		폰트시작-->
<script src="//ajax.googleapis.com/ajax/libs/webfont/1.4.10/webfont.js"></script>
<script type="text/javascript">
	WebFont
			.load({

				// For early access or custom font
				custom : {
					families : [ 'Nanum Gothic' ],
					urls : [ 'http://fonts.googleapis.com/earlyaccess/nanumgothic.css' ]
				}

			});
</script>
<!--폰트끝-->
</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<div id="fh5co-header">
				<header id="fh5co-header-section">
					<div class="container">
						<div class="nav-header">
							<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
							<h1 id="fh5co-logo">
								<a href="index.html"><img src="images/mainlogo.png"
									id="mainlogo" /></a>
							</h1>
							<!-- START #fh5co-menu-wrap -->
							<nav id="fh5co-menu-wrap" role="navigation">
								<ul class="sf-menu" id="fh5co-primary-menu">
									<li class="active">
										<!--									<a href="index.html">Home</a>-->
									</li>
									<li><a href="portfolio.html" class="fh5co-sub-ddown">MY웨딩</a>
										<ul class="fh5co-sub-menu">
											<li><a
												href="http://freehtml5.co/preview/?item=build-free-html5-bootstrap-template"
												target="_blank">일정만들기</a></li>
											<li><a
												href="http://freehtml5.co/preview/?item=work-free-html5-template-bootstrap"
												target="_blank">웨딩일정</a></li>
											<!--
										<li><a href="http://freehtml5.co/preview/?item=light-free-html5-template-bootstrap" target="_blank">Light</a></li>
										<li><a href="http://freehtml5.co/preview/?item=relic-free-html5-template-using-bootstrap" target="_blank">Relic</a></li>
										<li><a href="http://freehtml5.co/preview/?item=display-free-html5-template-using-bootstrap" target="_blank">Display</a></li>
										<li><a href="http://freehtml5.co/preview/?item=sprint-free-html5-template-bootstrap" target="_blank">Sprint</a></li>
-->
										</ul></li>
									<li><a href="services.html" class="fh5co-sub-ddown">웨딩상품</a>
										<ul class="fh5co-sub-menu">
											<li><a href="#" class="fh5co-sub-ddown">스/드/메</a>
												<ul class="fh5co-sub-menu">
													<li><a href="#" target="_blank">스튜디오</a></li>
													<li><a href="#" target="_blank">드레스</a></li>
													<li><a href="#" target="_blank">메이크업</a></li>
												</ul></li>
											<li><a href="#" class="fh5co-sub-ddown">한복/예복</a>
												<ul class="fh5co-sub-menu">
													<li><a href="#" target="_blank">한복</a></li>
													<li><a href="#" target="_blank">예복</a></li>
												</ul></li>
											<li><a href="#" class="fh5co-sub-ddown">예물/예단</a>
												<ul class="fh5co-sub-menu">
													<li><a href="#" target="_blank">예물</a></li>
													<li><a href="#" target="_blank">예단</a></li>
												</ul></li>
											<li><a href="#" class="fh5co-sub-ddown">기타</a>
												<ul class="fh5co-sub-menu">
													<li><a href="#" target="_blank">피부관리</a></li>
													<li><a href="#" target="_blank">촬영</a></li>
													<li><a href="#" target="_blank">청첩장</a></li>
													<li><a href="#" target="_blank">폐백</a></li>
												</ul></li>
										</ul></li>
									<li><a href="about.html">이용방법</a></li>
									<c:choose>
										<c:when test="${userNo==null || userNo eq ''}">
											<li class="login"><a href="#" class="btn-example">로그인</a></li>
											<li><a
												href="${pageContext.request.contextPath}/member/join.do">회원가입</a></li>
										</c:when>
										<c:when test="${userNo == 'master'}">
											<li class="login"><a href="#" class="btn-example">관리자페이지</a></li>
										</c:when>
										<c:otherwise>
											<li><a
												href="${pageContext.request.contextPath}/member/logout.do"
												class="btn-example">로그아웃</a></li>
											<li><a href="#" class="fh5co-sub-ddown">마이페이지</a>
												<ul class="fh5co-sub-menu">
													<li><a href="${pageContext.request.contextPath}/member/edit.do" target="_blank">회원수정</a></li>
													<li><a href="${pageContext.request.contextPath}/member/out.do" target="_blank">회원탈퇴</a></li>
												</ul></li>
										</c:otherwise>
									</c:choose>
								</ul>
							</nav>
						</div>
					</div>
				</header>

			</div>


			<div class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover text-center"
					data-stellar-background-ratio="0.5"
					style="background-image: url(images/home-image.jpg);">
					<div class="desc animate-box">
						<h2 class="Mfont">나만의 간편 꿀잼 결혼 플래너</h2>
						<span>쉽고 빠르게 결혼에 골인하세요. <!--					<a href="http://frehtml5.co/" target="_blank" class="fh5co-site-name">FREEHTML5.co</a>-->
						</span> <span><a class="btn btn-primary" href="#">시작하기!</a></span>
					</div>
				</div>

			</div>
			<!-- end:header-top -->
			<div id="fh5co-work-section">
				<div class="container">
					<div class="row">
						<div
							class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
							<h3>사이트 기능</h3>
							<p>저희 사이트의 존재의 이유들입니다.</p>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-sm-8">
							<div class="fh5co-grid animate-box"
								style="background-image: url(images/work-1.jpg);">
								<a class="image-popup text-center" href="#">
									<div class="prod-title">
										<h3>일정만들기</h3>
										<span>결혼 일정을 만드실수 있습니다.</span>
									</div>
								</a>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="fh5co-grid animate-box"
								style="background-image: url(images/work-2.jpg);">
								<a class="image-popup text-center" href="#">
									<div class="prod-title">
										<h3>웨딩일정</h3>
										<span>만드신 일정을 확인 하실수 있습니다.</span>
									</div>
								</a>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="fh5co-grid animate-box"
								style="background-image: url(images/work-3.jpg);">
								<a class="image-popup text-center" href="#">
									<div class="prod-title">
										<h3>이용방법</h3>
										<span>저희 사이트의 이용 방법에 대하여 알 수 있습니다.</span>
									</div>
								</a>
							</div>
						</div>
						<div class="col-md-8 col-sm-8">
							<div class="fh5co-grid animate-box"
								style="background-image: url(images/work-4.jpg);">
								<a class="image-popup text-center" href="#">
									<div class="prod-title">
										<h3>웨딩상품</h3>
										<span>웨딩 상품들을 보고 구매 하실 수 있습니다.</span>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- fh5co-work-section -->
			<div id="fh5co-services-section" class="fh5co-section-gray">
				<div class="container">
					<div class="row">
						<div
							class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
							<h3>좋은점!</h3>
							<p>
								저희 사이트를 이용하면 얻을 수 있는 장점들 입니다.<br>처음 이용하시는 분들께는 맨위 메뉴에서 이용
								방법도 한 번 보시는걸 추천드립니다!
							</p>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row text-center">
						<div class="col-md-4 col-sm-4">
							<div class="services animate-box">
								<span><i class="icon-mobile"></i></span>
								<h3>휴대성</h3>
								<p>저희 사이트는 핸드폰으로도 이용하실 수 있기 때문에 휴대성이 아주 좋습니다. 때문에 결혼 일정을
									계획하고 실행하는데 장소의 제약을 받지 않습니다.</p>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="services animate-box">
								<span><i class="icon-tools"></i></span>
								<h3>간편성</h3>
								<p>막상 결혼 하려고 했는데 여러모로 생각할게 많아서 막막하시죠? 저희가 도와드리겠습니다! 사이트에서
									간편하게 결혼 일정을 계획하실수 있고 다른 이용자분들께서 만드신 결혼 일정도 참고하실수 있습니다!</p>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="services animate-box">
								<span><i class="icon-dice"></i></span>
								<h3>꿀잼성</h3>
								<p>사이트에서 다양한 이벤트를 통하여 포인트를 얻어서 사용하실수 있습니다. 엄청 재미있는 이벤트들이 많이
									준비되어있기때문에 결혼할 생각 없으시더라도 놀이 사이트로도 이용 가능하십니다.</p>
							</div>
						</div>
						<!--
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-video"></i></span>
							<h3>Video Editing</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-search"></i></span>
							<h3>SEO Ranking</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="services animate-box">
							<span><i class="icon-cloud"></i></span>
							<h3>Cloud Based Apps</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
-->
					</div>
				</div>
			</div>
			<!-- fh5co-services-section -->
			<div id="fh5co-content-section">
				<div class="container">
					<div class="row">
						<div
							class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
							<h3>베스트 후기</h3>
							<p>이 후기는 저희 사이트를 이용하여 간편하고 재미있게 결혼준비를 잘 하셔서 올해 '8월 15일'에
								성공적으로 결혼하신 계획적인 고객님이 실제로 남겨주신 후기입니다. 결혼 축하드립니다. ^^</p>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div class="fh5co-testimonial text-center animate-box">
								<figure>
									<img src="images/user-1.jpg" alt="user">
								</figure>
								<blockquote>
									<p>“I want to live a really successful life. You must live
										hard. My dream is always true. I want to be a really cool
										person. Let's make sure everyone in my group and everyone who
										likes me is happy and happy to be happy with me, and please
										make them especially happier during the last 44 minutes of
										class voting.”</p>
								</blockquote>
								<span>nilla bee</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- fh5co-content-section -->
			<div id="fh5co-blog-section" class="fh5co-section-gray">
				<div class="container">
					<div class="row">
						<div
							class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
							<h3>인기 일정</h3>
							<p>일정을 잘 만들어주셔서 이용자들에게 큰 도움을 주신 세분께 먼저 감사의 말씀을 드립니다. 게다가 특히
								이번에 아주 독특한 방법으로 결혼 일정계의 새로운 바람을 일으키신 폭풍간지님 정말 대단하십니다!</p>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-4 col-md-4">
							<div class="fh5co-blog animate-box">
								<a href="#"><img class="img-responsive"
									src="images/blog-1.jpg" alt=""></a>
								<div class="image-popup" href="#">
									<div class="prod-title">
										<h3>
											<a href=""#>결혼일정에 관한 나의 고찰</a>
										</h3>
										<span class="posted_by">Posted by: 폭풍간지</span> <span
											class="comment"><a href="">1018<i
												class="icon-bubble22"></i></a></span>
										<p>지금까지 일반적인 결혼일정을 보면 너무 틀에 맞춰져 있다. 왜 다른사람들은 전부 이렇게 밖에 생각을
											못하는가. 그래서 나는 생각하였다.</p>
										<a href="#" class="btn btn-primary">Read More</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="fh5co-blog animate-box">
								<a href="#"><img class="img-responsive"
									src="images/blog-2.jpg" alt=""></a>
								<div class="image-popup" href="#">
									<div class="prod-title">
										<h3>
											<a href=""#>메롱</a>
										</h3>
										<span class="posted_by">Posted by: 메롱시티주민</span> <span
											class="comment"><a href="">789<i
												class="icon-bubble22"></i></a></span>
										<p>메에롱 메롱! 메에에에롱 메롱메롱메롱 메로로로롱메롱 메롱 메로롱 메렁메룽메랑메롱멜론멜롱메룽누룽 나는
											메롱 너는 에러 메러로롱.</p>
										<a href="#" class="btn btn-primary">Read More</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="fh5co-blog animate-box">
								<a href="#"><img class="img-responsive"
									src="images/blog-3.jpg" alt=""></a>
								<div class="image-popup" href="#">
									<div class="prod-title">
										<h3>
											<a href=""#>마하반야바라밀다심경</a>
										</h3>
										<span class="posted_by">Posted by: 하나님교회 목사님</span> <span
											class="comment"><a href="">111<i
												class="icon-bubble22"></i></a></span>
										<p>관자재보살 행심반야바라밀다시 조견오온개공 도일체고액. 사리자 색불이공 공불이색 색즉시공 공즉시색
											수상행식 역부여시.</p>
										<a href="#" class="btn btn-primary">Read More</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- fh5co-blog-section -->
			<footer>
				<div id="footer">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 text-center">
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-heart"></i></a> <a href="#"><i
										class="icon-heart2"></i></a> <a href="#"><i
										class="icon-heart4"></i></a> <a href="#"><i
										class="icon-heart2"></i></a> <a href="#"><i class="icon-heart"></i></a>
								</p>
								<p>
									Copyright 2017 <a href="#">Action Kamen</a>. All Rights
									Reserved. <br>Made with <i class="icon-heart3"></i> by <a
										href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> /
									Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</footer>


		</div>
		<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- 권한 모달영역 str -->
	<form method="post"
		action="${pageContext.request.contextPath}/member/login_ok.do">
		<div class="modal fade" id="aModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="exampleModalLabel">회원 로그인</h4>
					</div>

					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control input-lg" id="id"
								name="user_id" placeholder="아이디">
						</div>
						<div class="form-group">
							<input type="password" class="form-control input-lg"
								id="password" name="user_pw" placeholder="비밀번호">
						</div>
						<div class="form-group">

							<button type="submit"
								class="loginOk btn btn-lg btn-block btn-default">
								<i class="fa fa-check-square fa-lg"></i> 로그인
							</button>
						</div>
					</div>

					<div class="modal-footer">
						<div class="padding-5">
							<div class="idpwSearch input-sm btn btn-sm btn-default">
								<a href="${pageContext.request.contextPath}/member/find_pw.do">
									<i class="fa fa-unlock fa-lg"></i> ID/PW 찾기
								</a>
							</div>
							<div class="consent input-sm btn btn-sm btn-default">
								<a href="${pageContext.request.contextPath}/member/join.do">
									<i class="fa fa-user fa-lg"></i> 회원가입
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- 권한 모달영역 end -->


	<!-- jQuery -->


	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
	<!-- Stellar -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="${pageContext.request.contextPath}/js/hoverIntent.js"></script>
	<script src="${pageContext.request.contextPath}/js/superfish.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

	<script type="text/javascript">
		// 유저 로그인
		$(".login").on("click", function() {

			$('#aModal').modal("show");
		});
	</script>
</body>
</html>

