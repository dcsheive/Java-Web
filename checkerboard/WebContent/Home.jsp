<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" >
  <title>checkerboard</title>
  <script type="text/javascript" src='http://code.jquery.com/jquery-1.10.2.min.js'></script> 
       <script type="text/javascript">
          function random_color()
          {
             var rgb = ['a','b','c','d','e','f','0','1','2','3','4','5','6','7','8','9'];
             color = '#'  //this is what we'll return!
             for(var i = 0; i < 6; i++) 
             {
                x = Math.floor((Math.random()*16))
                color += rgb[x]; 
             }
             return color;
          }
          $(document).ready(function(){
            $('.box').css('background-color', random_color());
            $('.box2').css('background-color', random_color());              
          });
      </script>
  <style>
    *{
        margin: 0;
        padding: 0;
    }
    .box {
        background-color: black;
        height: 100px;
        width: 100px;
        float: left;
    }
    .box2 {
        background-color: red;
        height: 100px;
        width: 100px;
        float: left;
    }
    .row {
      clear: both;
    }
  </style>
</head>
<body>
<%int width = 10; %>
<%int height = 5; %>
  <% for (int x = 0; x< width;x++) {%>
  <div class="row">
    <% for (int y = 0; y< height; y++) { %>
      <% if (y%2-x%2==0){ %>
      <div class="box"></div>
      <% } else { %>

      <div class="box2"></div>
      <% } %>
      <% } %>
  </div>
  <% } %>
</body>
</html>