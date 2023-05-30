<!-- #include file="connect.asp" -->
<%
    id = Request.QueryString("id")

    if (isnull(id) OR trim(id)="" OR isnull(Session("email")) OR trim(Session("email"))="") then
        Response.redirect("index.asp")
        Response.End
    end if

    Set cmdPrep = Server.CreateObject("ADODB.Command")
    cmdPrep.ActiveConnection = connDB
    cmdPrep.CommandType = 1
    cmdPrep.CommandText = "DELETE FROM NHANVIEN WHERE MANV=?"
    cmdPrep.parameters.Append cmdPrep.createParameter("MaNV",3,1, ,id)

    cmdPrep.execute

    Session("Success") = "Deleted"

    Response.Redirect("index.asp")
%>