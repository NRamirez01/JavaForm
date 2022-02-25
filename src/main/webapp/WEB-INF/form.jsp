<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>First JSP</title>
</head>
<body>
    <h1>Send a Omikuji!</h1>
    <div>
 	     <form action="/omikuji/fortuning" method="post">
 	          <label>Pick any number from 5 to 25</label>
 	          <select name="numbers">
 	          	   <c:forEach var="i" begin="5" end="25">
 	          		   <option> <c:out value="${i}" /></option>
 	          	   </c:forEach>
 	          </select>
 	          <label>Enter the name of any city</label>
 	          <input type="text" name="city">
 	          <label>Enter the name of any real person</label>
 	          <input type="text" name="person">
 	          <label>Enter professional endeavor or hobby.</label>
 	          <input type="text" name="activity">
 	          <label>Enter any type of living being</label>
 	          <input type="text" name="living">
 	          <label>Say something nice to someone</label>
 	          <input type="text" name="nice">
 	          <p>Send and show a friend</p>
 	          <input type="submit">
 	     </form>   
    </div>
</body>
</head>