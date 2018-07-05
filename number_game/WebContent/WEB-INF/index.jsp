<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	<style><%@include file="/WEB-INF/style.css"%></style></head>
<body>
  <h1>Welcome to the Great Number Game</h1>
  <h3>I am thinking of a number between 1 and 100</h3>
  <h3>Take a guess!</h3>
  <div class="resultBox" style="background-color:${boxClass}">
      <c:if test="${ wrong.equals('low')}">
        <h2>Too Low!</h2>
      </c:if>
      <c:if test="${wrong.equals('high')}">
        <h2>Too High!</h2>
      </c:if>        
      <c:if test="${wrong.equals('no')}">
        <h2>That's not a Number!</h2>
      </c:if>        
      <c:if test="${wrong.equals('right')}">
        <h2>${number} was the number!</h2>
        <form action="/number_game/Home" method="get">
        	<input type="hidden" name="again" value="again">
         	<button type="submit" class="btn">Play Again?</button>
        </form>
      </c:if>
      <c:if test="${!wrong.equals('low') && !wrong.equals('high') && !wrong.equals('no') && !wrong.equals('right') }">

        <h2>Enter a number below!</h2>      
      </c:if>
  </div>
  <div>
    <form action='/number_game/Home' method='post'>
      <input type="text" name="guessNum">
      <input type='submit' name="plus2" class="btn-lg">
    </form>
  </div>
</body>
</html>