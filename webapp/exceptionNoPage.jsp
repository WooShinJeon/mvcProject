<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko" data-bs-theme="auto">
<head>
<link rel="stylesheet" href="style.css">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
<meta name="generator" content="Astro v5.7.10">
<title>MBC OTT</title>
<link rel="canonical"
	href="https://getbootstrap.kr/docs/5.3/examples/pricing/">
<script src="/docs/5.3/assets/js/color-modes.js"></script>
<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT">
<link rel="apple-touch-icon"
	href="/docs/5.3/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg"
	color="#712cf9">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">
<link href="pricing.css" rel="stylesheet">
<style>
@font-face {
	font-family: 'SacheonHangGong-Regular';
	src:
		url('https://fastly.jsdelivr.net/gh/projectnoonnu/2506-1@1.0/SacheonHangGong-Regular.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'SacheonHangGong-Regular', sans-serif;
}

body {
	font-family: 'SacheonHangGong-Regular', sans-serif;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: #0000001a;
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em #0000001a, inset 0 .125em .5em #00000026
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh
}

.bi {
	vertical-align: -.125em;
	fill: currentColor
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch
}

.btn-bd-primary { -
	-bd-violet-bg: #712cf9; -
	-bd-violet-rgb: 112.520718, 44.062154, 249.437846; -
	-bs-btn-font-weight: 600; -
	-bs-btn-color: var(- -bs-white); -
	-bs-btn-bg: var(- -bd-violet-bg); -
	-bs-btn-border-color: var(- -bd-violet-bg); -
	-bs-btn-hover-color: var(- -bs-white); -
	-bs-btn-hover-bg: #6528e0; -
	-bs-btn-hover-border-color: #6528e0; -
	-bs-btn-focus-shadow-rgb: var(- -bd-violet-rgb); -
	-bs-btn-active-color: var(- -bs-btn-hover-color); -
	-bs-btn-active-bg: #5a23c8; -
	-bs-btn-active-border-color: #5a23c8
}

.bd-mode-toggle {
	z-index: 1500
}

.bd-mode-toggle .bi {
	width: 1em;
	height: 1em
}

.bd-mode-toggle .dropdown-menu .active .bi {
	display: block !important
}
</style>
<body>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
		crossorigin="anonymous">
</head>

<svg xmlns="http://www.w3.org/2000/svg" class="d-none"> <symbol
		id="check2" viewBox="0 0 16 16"> <path
		d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"></path> </symbol> <symbol
		id="circle-half" viewBox="0 0 16 16"> <path
		d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"></path> </symbol> <symbol
		id="moon-stars-fill" viewBox="0 0 16 16"> <path
		d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"></path> <path
		d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"></path> </symbol> <symbol
		id="sun-fill" viewBox="0 0 16 16"> <path
		d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"></path> </symbol> </svg>
<div
	class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
	<button
		class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
		id="bd-theme" type="button" aria-expanded="false"
		data-bs-toggle="dropdown" aria-label="Toggle theme (auto)">
		<svg class="bi my-1 theme-icon-active" aria-hidden="true">
				<use href="#circle-half"></use></svg>
		<span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end shadow"
		aria-labelledby="bd-theme-text">
		<li>
			<button type="button" class="dropdown-item d-flex align-items-center"
				data-bs-theme-value="light" aria-pressed="false">
				<svg class="bi me-2 opacity-50" aria-hidden="true">
						<use href="#sun-fill"></use></svg>
				라이트
				<svg class="bi ms-auto d-none" aria-hidden="true">
						<use href="#check2"></use></svg>
			</button>
		</li>
		<li>
			<button type="button" class="dropdown-item d-flex align-items-center"
				data-bs-theme-value="dark" aria-pressed="false">
				<svg class="bi me-2 opacity-50" aria-hidden="true">
						<use href="#moon-stars-fill"></use></svg>
				다크
				<svg class="bi ms-auto d-none" aria-hidden="true">
						<use href="#check2"></use></svg>
			</button>
		</li>
		<li>
			<button type="button"
				class="dropdown-item d-flex align-items-center active"
				data-bs-theme-value="auto" aria-pressed="true">
				<svg class="bi me-2 opacity-50" aria-hidden="true">
						<use href="#circle-half"></use></svg>
				시스템
				<svg class="bi ms-auto d-none" aria-hidden="true">
						<use href="#check2"></use></svg>
			</button>
		</li>
	</ul>
</div>
<svg xmlns="http://www.w3.org/2000/svg" class="d-none"> <symbol
		id="check" viewBox="0 0 16 16"> <title>Check</title> <path
		d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"></path> </symbol> </svg>
<div class="container py-3">
	<header>
		<div
			class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
			<a href="/"
				class="d-flex align-items-center link-body-emphasis text-decoration-none">
				<svg xmlns="http://www.w3.org/2000/svg" width="40" height="32"
					class="me-2" viewBox="0 0 118 94" role="img">
						<title>MBC OTT</title>
						</svg> 
						<span class="fs-4"  style="color: #0d6efd; font-weight: bold;"><img class="mb-2" src="../img/mbclogo.png" alt="" width="60"
					height="25"> MBC OTT</span>
			</a>
			<nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
				<a class="me-3 py-2 link-body-emphasis text-decoration-none" onclick="location.href='search.jsp'"
					href="#">검색</a> <a
					class="me-3 py-2 link-body-emphasis text-decoration-none" onclick="location.href='login.jsp'" href="#">로그인</a>
				<a class="me-3 py-2 link-body-emphasis text-decoration-none"
					onclick="location.href='register.jsp'" href="#">회원가입</a> <a
					class="py-2 link-body-emphasis text-decoration-none" href="#">설정</a>
			</nav>
		</div>
		<div class="pricing-header p-3 pb-md-4 mx-auto text-center">
		<img src="../img/OTT.jpg" alt="" width="1200" height="500" alt="배너 이미지" class="img-fluid mb-4" width="100%">
			<h1 class="display-4 fw-normal text-body-emphasis">영화, TV 프로그램
				무제한 서비스</h1>
			<p class="fs-5 text-body-secondary">다양한 디바이스에서 시청하세요. 언제든지 해지하실 수
				있습니다.</p>
		</div>
	</header>
	<main>
		<div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
			<div class="col">
				<div class="card mb-4 rounded-3 shadow-sm">
					<div class="card-header py-3">
						<h4 class="my-0 fw-normal">베이직</h4>
					</div>
					<div class="card-body">
						<h1 class="card-title pricing-card-title">
							0원<small class="text-body-secondary fw-light">/월</small>
						</h1>
						<ul class="list-unstyled mt-3 mb-4">
							<li>최대 2명까지 지원 가능</li>
							<li>3GB 저장공간 제공</li>
						</ul>
						<button type="button" class="w-100 btn btn-lg btn-outline-primary">구독</button>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card mb-4 rounded-3 shadow-sm">
					<div class="card-header py-3">
						<h4 class="my-0 fw-normal">스탠다드</h4>
					</div>
					<div class="card-body">
						<h1 class="card-title pricing-card-title">
							5,000원<small class="text-body-secondary fw-light">/월</small>
						</h1>
						<ul class="list-unstyled mt-3 mb-4">
							<li>최대 5명까지 지원 가능</li>
							<li>10GB 저장공간 제공</li>
						</ul>
						<button type="button" class="w-100 btn btn-lg btn-primary">구독</button>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card mb-4 rounded-3 shadow-sm border-primary">
					<div class="card-header py-3 text-bg-primary border-primary">
						<h4 class="my-0 fw-normal">프리미엄</h4>
					</div>
					<div class="card-body">
						<h1 class="card-title pricing-card-title">
							10,000원<small class="text-body-secondary fw-light">/월</small>
						</h1>
						<ul class="list-unstyled mt-3 mb-4">
							<li>최대 10명까지 지원 가능</li>
							<li>20GB 저장공간 제공</li>
						</ul>
						<button type="button" class="w-100 btn btn-lg btn-primary">구독</button>
					</div>
				</div>
			</div>
		</div>
		<h2 class="display-6 text-center mb-4">요금제</h2>
		<div class="table-responsive">
			<table class="table text-center">
				<thead>
					<tr>
						<th style="width: 34%;"></th>
						<th style="width: 22%;">베이직</th>
						<th style="width: 22%;">스탠다드</th>
						<th style="width: 22%;">프리미엄</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row" class="text-start">동시 시청 가능</th>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
					</tr>
					<tr>
						<th scope="row" class="text-start">광고 없음</th>
						<td></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<th scope="row" class="text-start">오프라인 저장</th>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
					</tr>
					<tr>
						<th scope="row" class="text-start">HD 화질 지원</th>
						<td></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
					</tr>
					<tr>
						<th scope="row" class="text-start">다국어 자막 지원</th>
						<td></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
					</tr>
					<tr>
						<th scope="row" class="text-start">자녀 보호 기능</th>
						<td></td>
						<td></td>
						<td><svg class="bi" width="24" height="24" role="img"
								aria-label="Included">
									<use xlink:href="#check"></use></svg></td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>
	<footer class="pt-4 my-md-5 pt-md-5 border-top">
		<div class="row">
			<div class="col-12 col-md">
				<img class="mb-2" src="../img/mbclogo.png" alt="" width="60"
					height="25"> <small class="d-block mb-3 text-body-secondary">&copy;
					2025</small>
			</div>
			<div class="col-6 col-md">
				<h5>문의</h5>
				<ul class="list-unstyled text-small">
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" href="#">자주 묻는 질문</a></li>
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" href="#">고객 센터</a></li>
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" href="#">문의하기</a></li>
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" href="#">이용약관</a></li>

				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>계정</h5>
				<ul class="list-unstyled text-small">
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" onclick="location.href='modify.jsp'" href="#">개인정보 수정</a></li>
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" href="#">마이페이지</a></li>
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" href="#">구독 변경</a></li>

				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>회사</h5>
				<ul class="list-unstyled text-small">
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" href="#">회사 정보</a></li>
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" href="#">입사 정보</a></li>
					<li class="mb-1"><a
						class="link-secondary text-decoration-none" href="#">투자 정보</a></li>

				</ul>
			</div>
		</div>
	</footer>
</div>
<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
	class="astro-vvvwv3sm"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
	crossorigin="anonymous"></script>

</body>
</html>