<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Effacement de l'inscription</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
p1 = request("id")
Set Conn = Server.CreateObject("ADODB.Connection")
   Set RS = Server.CreateObject("ADODB.RecordSet")
  Conn.Open "aca2009"
  sql = "delete from register where noinsc = "+p1
  set rs = Conn.Execute(sql)
  response.Write(sql)
	Conn.Close
  set rs = nothing
  set Conn = nothing
  %>
  Enregistrement effacé
  <%
  Response.Redirect("lstRegister.asp")
  %>
</body>
</html>
