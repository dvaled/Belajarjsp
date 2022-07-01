<%-- 
    Document   : about
    Created on : Jun 17, 2022, 4:39:11 PM
    Author     : DAVA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="layouts/head.jsp">
            <jsp:param name="title" value="Homepage" />
        </jsp:include>
    </head>
    <body>
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
        <h1>About Page!</h1>
        <jsp:include page="layouts/footer.jsp"></jsp:include>
        <jsp:include page="layouts/scripts.jsp"></jsp:include>
    </body>
</html>

