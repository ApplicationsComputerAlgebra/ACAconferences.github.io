<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Conference delegate information</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>
<link href="Cstyle_ACA2009.css" rel="stylesheet" type="text/css">
<%

Set Conn = Server.CreateObject("ADODB.Connection")
Set RS = Server.CreateObject("ADODB.RecordSet")
Conn.Open "aca2009"
sql = "select * from register where noinsc ="+Request("id")
   set rs = Conn.Execute(sql)
	CongNom=rs("CongNom")
	CongPrenom=rs("CongPrenom")
	NoInsc=rs("noInsc")
	
%>

<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">
<H2><DIV ALIGN="center">ACA 2009, Conference delegate information</DIV></H2>

  <table WIDTH="780" border="1"  CELLPADDING="3" CELLSPACING="3">

    <tr>
      <td colspan="2" class="Titre2" align="center"><FONT COLOR="#990000">Conference Delegate</FONT></td>
      
      <td colspan="2" class="Titre2" align="center"><FONT COLOR="#990000">Accompanying person(s)</FONT></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">Name :</td>
      <td><B><%=rs("CongTitre")%>&nbsp;<%=rs("CongPrenom")%>&nbsp;<%=rs("CongNom")%></B></td>

      <td><FONT COLOR="#990000"><B>Name: </B></FONT></td> 
	  <td><B><%=rs("Acc1Titre")%>&nbsp;<%=rs("Acc1Prenom")%>&nbsp;<%=rs("Acc1Nom")%></B></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">E-mail:</td>
      <td><A HREF="mailto:<%=rs("CongCourriel")%>?subject=ACA2009"><B><%=rs("CongCourriel")%></B></A></td>

      <td>&nbsp;</td>
	  <td>&nbsp;</td>
    </tr>
	
    <tr> 
      <td class="NomChamps">Institution or<BR> Company:</td>
      <td><%=rs("CongCie")%></td>

      <td><FONT COLOR="#990000"><B>Name: </B></FONT></td> 
	  <td><B><%=rs("Acc2Titre")%>&nbsp;<%=rs("Acc2Prenom")%>&nbsp;<%=rs("Acc2Nom")%></B></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">Department:</td>
      <td><%=rs("CongDept")%>&nbsp;</td>

      <td>&nbsp;</td>
	  <td>&nbsp;</td>
    </tr>
	
    <tr> 
      <td class="NomChamps">City:</td>
      <td><%=rs("CongVille")%></td>

      <td><FONT COLOR="#990000"><B>Name: </B></FONT></td> 
	  <td><B><%=rs("Acc3Titre")%>&nbsp;<%=rs("Acc3Prenom")%>&nbsp;<%=rs("Acc3Nom")%></B></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">State/Province:</td>
      <td><%=rs("CongProv")%> &nbsp;</td>

       <td>&nbsp;</td>
	  <td>&nbsp;</td>
    </tr>

    <tr> 
      <td class="NomChamps">Country:</td>
      <td><%=rs("CongPays")%></td>

      <td>&nbsp;</td> 
	  <td>&nbsp;</td>
    </tr>
	

  </table>
  <%
Conn.Close
  set rs = nothing
  set Conn = nothing	
%>
</form>

</body>
</html>
