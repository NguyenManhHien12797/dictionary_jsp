<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="static sun.misc.MessageUtils.out" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/18/2022
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("Hello", "Xin chào");
    dic.put("How", "Thế nào");
    dic.put("Book", "Sách");
    dic.put("Computer", "Máy tính");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if(result != null){
       out.println("Word: "+ search);
        out.println("Result: "+ result);
    } else {
        out.println("Not found");

    }
%>
</body>
</html>
