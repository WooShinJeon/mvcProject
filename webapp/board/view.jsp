<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>MBC OTT - 게시판</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    @font-face {
      font-family: 'SacheonHangGong-Regular';
      src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2506-1@1.0/SacheonHangGong-Regular.woff2') format('woff2');
    }
    * { font-family: 'SacheonHangGong-Regular', sans-serif; }
    .table th, .table td { vertical-align: middle; }
  </style>
</head>

<div class="container py-3">
  <header class="mb-4">
    <div class="d-flex justify-content-between align-items-center border-bottom pb-3">
      <a href="<c:url value='/jsp/main.jsp' />" class="d-flex align-items-center text-decoration-none">
        <img src="<c:url value='/img/mbclogo.png' />" alt="MBC" width="60" height="25">
        <span class="fs-4 text-primary fw-bold ms-2">MBC OTT</span>
      </a>
      <nav>
        <a href="<c:url value='/jsp/search.jsp' />" class="me-3">검색</a>
        <a href="<c:url value='/jsp/login.jsp' />" class="me-3">로그인</a>
        <a href="<c:url value='/jsp/register.jsp' />">회원가입</a>
      </nav>
    </div>
  </header>
  
	<%
    mvc.model.BoardDTO notice = (mvc.model.BoardDTO)request.getAttribute("board");
    int nowpage = (Integer)request.getAttribute("page");
	%>

  <div class="row align-items-md-stretch   text-center">	 
		<form name="newUpdate" action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"  method="post">
				<div class="mb-3 row">
				<label class="col-sm-2 control-label" >성명</label>
				<div class="col-sm-3">
					<input name="name" class="form-control"	value=" <%=notice.getName()%>">
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2 control-label" >제목</label>
				<div class="col-sm-5">
					<input name="subject" class="form-control"	value=" <%=notice.getSubject()%>" >
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2 control-label" >내용</label>
				<div class="col-sm-8" style="word-break: break-all;">
					<textarea name="content" class="form-control" cols="50" rows="5"> <%=notice.getContent()%></textarea>
				</div>
			</div>
				<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10 ">
						<p>
							<a	href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"	class="btn btn-danger"> 삭제</a> 
							<input type="submit" class="btn btn-success" value="수정 ">
					<a href="./BoardListAction.do?pageNum=<%=nowpage%>"		class="btn btn-primary"> 목록</a>
				</div>
			</div>
		</form>
	
	</div>

  <footer class="pt-4 my-md-5 pt-md-5 border-top">
         <div class="row">
            <div class="col-12 col-md">
               <img class="mb-2" src="<c:url value='/img/mbclogo.png' />" alt="" width="60"
                  height="25"> <small class="d-block mb-3 text-muted">&copy;
                  2025</small>
            </div>
            <div class="col-6 col-md">
               <h5>문의</h5>
               <ul class="list-unstyled text-small">
                  <li><a class="link-secondary text-decoration-none" href="#">고객
                        센터</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">자주
                        묻는 질문</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">문의하기</a></li>
               </ul>
            </div>
            <div class="col-6 col-md">
               <h5>계정</h5>
               <ul class="list-unstyled text-small">
                  <li><a class="link-secondary text-decoration-none"
                     href="<c:url value='/jsp/update.jsp' />">개인정보 수정</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">마이페이지</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">구독
                        변경</a></li>
               </ul>
            </div>
            <div class="col-6 col-md">
               <h5>회사</h5>
               <ul class="list-unstyled text-small">
                  <li><a class="link-secondary text-decoration-none" href="#">회사
                        정보</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">입사
                        정보</a></li>
                  <li><a class="link-secondary text-decoration-none" href="#">투자
                        정보</a></li>
               </ul>
            </div>
         </div>
      </footer>
   </div>

   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>