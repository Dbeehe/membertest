<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">

</head>
<body>
    <h2>memberMain.jsp</h2>
    로그인이메일: ${sessionScope.loginEmail} <br>
    model에 담은 이메일: ${email} <br>

    <button class="btn btn-primary" onclick="update_fn()">회원정보수정</button>

    <%-- 로그인 계정이 admin일 경우에만 회원목록 링크가 보임 --%>
    <c:if test="${sessionScope.loginEmail == 'admin'}">
        <a href="/members">회원목록</a> <br>
    </c:if>



    <a href="/logout">로그아웃</a>
    <a href="/">index로 이동</a>

</body>
<script>
    const update_fn = () => {
        location.href = "/update";
    }
</script>
</html>