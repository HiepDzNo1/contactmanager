<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Basic loop</title>
</head>
<body>
    <h3>Loops</h3>
    <%
        Dim index
        For index=0 to 5
            Response.write("<p>This is a Paragraph " & index &"</p>")
        Next
    %>
    <hr/>
    <%
        Dim index2
        For index2=0 to 5 step 2
            Response.write "<p>This is my second text<p>"
        Next
    %>
    <hr/>
    
<%
'This will print out myMessage to the visitor
  Dim index4
  index4 = 0
  Do Until index4 = 6
    Response.write "<p>Current text index is "&index4&"<p>"
    index4 = index4 + 1
  Loop
%>
<hr>
<%
      Dim i
      i=0
      Do While i<5
        Response.write("<p>The index current is "&i&"</p>")
        i=i+1
      Loop
%>
</body>
</html>