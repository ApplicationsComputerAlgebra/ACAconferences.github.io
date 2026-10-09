<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Description de proposition</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>
<link href="Cstyle_ACA2009.css" type="text/css" rel="stylesheet">
<%

Set Conn = Server.CreateObject("ADODB.Connection")
Set RS = Server.CreateObject("ADODB.RecordSet")
Conn.Open "aca2009"
sql = "select * from inscriptions where noinsc ="+Request("id")
   set rs = Conn.Execute(sql)
	AutPrincNom=rs("AuteurNom")
	AutPrincPrenom=rs("AuteurPrenom")
	Proposition=rs("Proposition")
	Conference=rs("Conference")
	TypeConference=rs("TypeConference")
	Jour=rs("Jour")
	NoInsc=rs("noInsc")
if (Jour = "1") then
	confJour= "Thursday"
	else
		if (Jour = "2") then
		confJour= "Friday"
		else
			if (Jour = "3") then
			confJour= "Saturday"
			else
				if (Jour = "4") then
				confJour= "Sunday"
				else
				confJour= ""
				end if
			end if
		end if
	end if

	
if Conference = " 1" then
sessionA = "1- Computer Algebra in Education"
end if
if Conference = " 2" then
sessionA = "2- Interaction Between Computer Algebra and Interval Computations"
end if
if Conference = " 3" then
sessionA = "3- Applications and Libraries development in Derive"
end if
if Conference = " 4" then
sessionA = "4- Elimination Theory and Applications"
end if
if Conference = " 5" then
sessionA = "5- Chemistry and Computer Algebra"
end if
if Conference = " 6" then
sessionA = "6- Applications of Math Software to Mathematical Research"
end if
if Conference = " 7" then
sessionA = "7- Computer Algebra for Dynamical Systems and Celestial Mechanics"
end if
if Conference = " 8" then
sessionA = "8- Analogy in Reasoning and Construction"
end if
if Conference = " 9" then
sessionA = "9- Symbolic and Numeric Computation"
end if
if Conference = "10" then
sessionA = "10- Algebraic and Algorithmic Aspects of Differential and Integral Operators"
end if
if Conference = "11" then
sessionA = "11- High-Performance Computer Algebra"
end if
if Conference = "12" then
sessionA = "12- Nonstandard Applications of Computer Algebra"
end if
if Conference = "13" then
sessionA = "13- Symbolic and numeric approaches to dynamical modeling and simulation"
end if
if Conference = "14" then
sessionA = "14- Algorithms for Parametric Systems and their Applications"
end if
%>

<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">
<form name="DescProposition" action="Maj_Proposition.asp" method="post">
<input type="hidden" name="noinsc" value="<%=NoInsc%>">
<input type="hidden" name="langue" value="FR">



  <table WIDTH="90%" border="1"  CELLPADDING="3" CELLSPACING="3">
  <COL WIDTH="120*">

    <tr>
      <td colspan="2" class="Titre2" align="center"><FONT COLOR="#990000">First presenter</FONT></td>
      <td></td>
      <td colspan="2" class="Titre2" align="center"><FONT COLOR="#990000">Co-presenter(s)</FONT></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">Name :</td>
      <td><B><%=rs("AuteurTitre")%>&nbsp;<%=rs("AuteurPrenom")%>&nbsp;<%=rs("AuteurNom")%></B></td>
      <td></td>
      <td><FONT COLOR="#990000"><B>Name: </B></FONT></td> 
	  <td><B><%=rs("CoAuteur1Titre")%>&nbsp;<%=rs("CoAuteur1Prenom")%>&nbsp;<%=rs("CoAuteur1Nom")%></B></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">E-mail:</td>
      <td><A HREF="mailto:<%=rs("AuteurCourriel")%>?subject=ACA2009"><B><%=rs("AuteurCourriel")%></B></A></td>
      <td></td>
      <td><FONT COLOR="#990000"><B>E-mail:&nbsp;&nbsp;</B></FONT></td>
	  <td><A HREF="mailto:<%=rs("CoAuteur1Courriel")%>?subject=ACA2009"><%=rs("CoAuteur1Courriel")%></A></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">Affiliation:</td>
      <td><%=rs("AuteurCie")%></td>
      <td></td>
      <td><FONT COLOR="#990000"><B>Name: </B></FONT></td> 
	  <td><B><%=rs("CoAuteur2Titre")%>&nbsp;<%=rs("CoAuteur2Prenom")%>&nbsp;<%=rs("CoAuteur2Nom")%></B></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">Department:</td>
      <td><%=rs("AuteurDept")%>&nbsp;</td>
      <td></td>
      <td><FONT COLOR="#990000"><B>E-mail:&nbsp;&nbsp;</B></FONT></td>
	  <td><A HREF="mailto:<%=rs("CoAuteur2Courriel")%>?subject=TIME-2004"><%=rs("CoAuteur2Courriel")%></A>&nbsp;</td>
    </tr>
	
    <tr> 
      <td class="NomChamps">City:</td>
      <td><%=rs("AuteurVille")%></td>
     <td></td>
      <td><FONT COLOR="#990000"><B>Name: </B></FONT></td> 
	  <td><B><%=rs("CoAuteur3Titre")%>&nbsp;<%=rs("CoAuteur3Prenom")%>&nbsp;<%=rs("CoAuteur3Nom")%></B></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">State/Province:</td>
      <td><%=rs("AuteurProv")%> &nbsp;</td>
      <td></td>
       <td><FONT COLOR="#990000"><B>E-mail:&nbsp;&nbsp;</B></FONT></td>
	  <td><A HREF="mailto:<%=rs("CoAuteur3Courriel")%>?subject=TIME-2004"><%=rs("CoAuteur3Courriel")%></A>&nbsp;</td>
    </tr>

    <tr> 
      <td class="NomChamps">Country:</td>
      <td><%=rs("AuteurPays")%></td>
      <td></td>
      <td><FONT COLOR="#990000"><B>Name: </B></FONT></td> 
	  <td><B><%=rs("CoAuteur4Titre")%>&nbsp;<%=rs("CoAuteur4Prenom")%>&nbsp;<%=rs("CoAuteur4Nom")%></B></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">Talk<BR>Number:</td>
      <td><%=rs("LocalNumber")%>&nbsp;</td>
      <td></td>
      <td><FONT COLOR="#990000"><B>E-mail:&nbsp;&nbsp;</B></FONT></td>
	  <td><A HREF="mailto:<%=rs("CoAuteur4Courriel")%>?subject=TIME-2004"><%=rs("CoAuteur4Courriel")%></A>&nbsp;</td>
    </tr>
	
    <tr> 
      <td class="NomChamps">Session: </td>
      <td><b><%=sessionA%></b></td>
      <td></td>
      <td class="NomChamps">Schedule:<BR> &nbsp;<BR>Room:</td>
      <td><B><%=confJour%>, <%=rs("Heure")%><BR> &nbsp;<BR><%=rs("ConfLocal")%></B></td>
    </tr>
	
    <tr> 
      <td class="NomChamps">Related website:</td>
      <td colspan="4"><A HREF="<%=rs("SiteWeb")%>"><B><%=rs("SiteWeb")%></B></A>&nbsp;</td>
    </tr>

    <tr> 
      <td class="NomChamps">Title of<BR>presentation:</td>
      <td colspan="4"><B><%=rs("Proposition")%></B></td>
    </tr>
	
    <tr> 
      <td colspan="5" class="NomChamps">Abstract:</td>
    </tr>

	
	<tr> 
      <td colspan="5"><%=rs("ResumeProposition")%></td>
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
