<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // request를 받았을 때, 한글 인코딩을 해줌
    request.setCharacterEncoding("utf-8");
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>
</head>
<script>
    function GoPage(link){
        location.href = link;
    }
</script>
<body>
<%
    String UserID = request.getParameter("id");
    String UserPWD = request.getParameter("pw");
%>
    <p>안녕?</p>
    <input type="button" onclick="GoPage('Category.jsp')" value="카테고리">
    <input type="button" onclick="GoPage('Purchase.jsp')" value="상품 구매">
    <div id="1">으아</div>
    <script>
        a = <%=UserID%>
        if(a === null){
            document.getElementById("1").innerHTML = '비회원';
        }
        else{
            document.getElementById("1").innerHTML = "회원";
        }
    </script>
    <p><%=UserID%></p>
    <p><%=UserPWD%></p>
</body>
</html>