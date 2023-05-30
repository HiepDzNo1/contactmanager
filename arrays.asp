<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <%
    Dim A(3)
    A(0)=1
    A(1)=2
    A(2)=3
    For Each x In A
        Response.write(x & "<br />")
    Next

    For i=0 to 2
        Response.write("<p>The new paragraph</p>")
    Next
  %>
</body>
</html>