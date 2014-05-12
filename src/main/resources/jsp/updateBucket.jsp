<%@ page contentType="text/html;charset=utf-8" %>
<html>
    <head>
        <jsp:useBean id="bucket" class="com.javaweb.BucketBean" scope="session"/>
    </head>
    <body>
        <%
            String val = request.getParameter("idvalue");
            if (!bucket.getBucketList().contains(val)){
                bucket.setBucketList(bucket.getBucketList() + ";" + val);
                bucket.setAmount(bucket.getAmount()+1);
            }
            String redirectURL = "/webstore/jsp/productList.jsp";
            response.sendRedirect(redirectURL);
        %>
        <br>
    </body>
</html>

