<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <%
    Sub helloThere(yourname)
      Response.write("Hello "&yourname)
    End Sub
    Function maxValue(x,y)
        Dim m
        If x>y Then
        m=x
        Else
        m=y
        End If
        maxValue = m
    End Function
  %>
</head>
<body>
  <p>Call a procedure: <% helloThere("Ban Nguyen") %></p>
  <p>Call a function: <% Response.write(maxValue(4,5)) %></p>
</body>
</html>