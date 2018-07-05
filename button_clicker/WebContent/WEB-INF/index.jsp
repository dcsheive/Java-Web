<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Button Clicker</title>
</head>
<body>
    <h1>You have clicked the button <c:out value="${times}"/> times</h1>
    <form action="/button_clicker/Home">
        <button type="submit">Click Me!</button>
    </form>
    <form action="/button_clicker/Home">
    	<input type="hidden" name="reset" value="reset">
        <button type="submit">Reset</button>
    </form>
</body>
</html>