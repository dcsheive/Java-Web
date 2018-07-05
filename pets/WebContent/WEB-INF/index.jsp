<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
    #wrapper {
        display: flex;
        flex-direction: row;
    }
    .sub {
        border: 2px solid black;
    }
</style>
</head>
<body>
    <div id="wrapper">
        <div class="sub">
            <h1>Make Doggie</h1>
            <form action="/pets/Dogs">
                <label for="">Name: </label>
                <input type="text" name="name">
                <label for="">Breed: </label>
                <input type="text" name="breed">
                <label for="">Weight: </label>
                <input type="text" name="weight">
                <button type="submit">Submit</button>
            </form>
        </div>
        <div class="sub">
            <h1>Make Cat</h1>
            <form action="/pets/Cats">
                <label for="">Name: </label>
                <input type="text" name="name">
                <label for="">Breed: </label>
                <input type="text" name="breed">
                <label for="">Weight: </label>
                <input type="text" name="weight">
                <button type="submit">Submit</button>
            </form>
        </div>

    </div>

</body>
</html>