<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>First JSP</title>
</head>
<body>
<h1>Here's your Omikuji!</h1>
<p>
    In <c:out value="${numbers}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> as your roommate, selling <c:out value="${activity}"/> for a living. The next time you see a <c:out value="${living}"/>, you will have good luck. Also, <c:out value="${nice}"/>
</p>
<a href="/omikuji">Go back</a>
</body>
</head>