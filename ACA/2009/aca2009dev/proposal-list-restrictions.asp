<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Accepted talks at ACA2009</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="Cstyle_ACA2009.css" type="text/css" rel="stylesheet">
</head>
<link href="../Cstyle_ACA2009.css" type="text/css" rel="stylesheet">
<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">

<H2><DIV ALIGN="center">List of accepted talks for the ACA2009 Conference</DIV></H2>
To re-order data, simply click on the name of a column (<FONT COLOR="#990000"><b>in red</b></font>). Information found on this page has been copied off individual session websites or sent to us by session organizers. <br>
Click the <FONT COLOR="#990000"><b>Presenter(s) name(s)</b></FONT> for more details on the talks. <a href="mailto:gilles.picard@etsmtl.ca?subject=ACA2009, accepted talks">Contact Gilles Picard</a> to make any correction or to add information to this page.
<br>&nbsp;
<table border="1"  CELLPADDING="3" CELLSPACING="2">
<tr>
<td>&nbsp;</td>
<td align="center"><b><i>Presenter(s)</i></b></td>
<td colspan="7">&nbsp;</td>
</tr>

<tr>
<td>&nbsp;</td>
<td><a href="proposal-list-restrictions.asp?p1=1"><B><FONT COLOR="#990000">Name(s)</FONT></B></a></td>
<td><a href="proposal-list-restrictions.asp?p1=3"><FONT COLOR="#990000"><B>Country</B></FONT></a></td>
<td><a href="proposal-list-restrictions.asp?p1=5"><FONT COLOR="#990000"><B>Title of Talk</B></FONT></a></td>
<td><a href="proposal-list-restrictions.asp?p1=4"><FONT COLOR="#990000"><B>Talk</B><BR><B>Number</B></FONT></a></td>
<td  WIDTH="70"><a href="proposal-list-restrictions.asp?p1=6"><FONT COLOR="#990000"><B>Session</B></FONT></a></td>
<td><B>Schedule<br>Restrictions</B></FONT></td>
<td><a href="proposal-list-restrictions.asp?p1=8"><FONT COLOR="#990000"><B>Tentative<BR>Schedule</B></FONT></a></td>
<td><a href="proposal-list-restrictions.asp?p1=9"><FONT COLOR="#990000"><B>Room</B></FONT></a></td>
</tr>
<%
p1 = request("p1")
Set Conn = Server.CreateObject("ADODB.Connection")
   Set RS = Server.CreateObject("ADODB.RecordSet")
  Conn.Open "aca2009"
  select case p1
  	case "1"
		order = "AuteurNom"
 	case "2"
		order = "AuteurPrenom"	
	case "3"
		order = "AuteurPays"
	case "4"
		order = "LocalNumber"		
	case "5"
		order = "Proposition"
	case "6"
		order = "Conference,AuteurNom"
	case "7"
		order = "TypeConference"
	case "8"
		order = "Jour,Heure"
	case "9"
		order = "ConfLocal"
	case else
		order = "Conference,AuteurNom"
	end select
	
sql = "select * from inscriptions order by "+order
    set rs = Conn.Execute(sql)
	cpt = 1
do
	AutPrincNom=rs("AuteurNom")
	AutPrincPrenom=rs("AuteurPrenom")
	AutPrincPays=rs("AuteurPays")
	NoInsc=rs("NoInsc")
	Proposition=rs("Proposition")
	Restrictions=rs("Restrictions")
	Conference=rs("Conference")
	TypeConference=rs("TypeConference")
	LocalNumber=rs("LocalNumber")
	Jour=rs("Jour")
	Heure=rs("Heure")
	accepte=rs("Accepte")

if (rs("CoAuteur1Nom") = "") then
        name1 = " "
 else
        name1= "<br>"&rs("CoAuteur1Nom")
end if

if (rs("CoAuteur2Nom") = "") then
        name2 = " "
 else
        name2= "<br>"&rs("CoAuteur2Nom")
end if

if (rs("CoAuteur3Nom") = "") then
        name3 = " "
 else
        name3= "<br>"&rs("CoAuteur3Nom")
end if
	
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

if (isNull(rs("Heure"))) then
        texte4 = " "
 else
        texte4=rs("Heure")
end if

if (isNull(rs("ConfLocal"))) then
        texte2 = ""
 else
        texte2=rs("ConfLocal")
end if

if (isNull(rs("Restrictions"))) then
        texte6 = "&nbsp;"
 else
        texte6="&nbsp;"&rs("Restrictions")
end if

if Conference = " 1" then
sessionA = "1- ... Education"
end if
if Conference = " 2" then
sessionA = "2- Interaction ..."
end if
if Conference = " 3" then
sessionA = "3- ... Derive"
end if
if Conference = " 4" then
sessionA = "4- Elimination ..."
end if
if Conference = " 5" then
sessionA = "5- Chemistry ..."
end if
if Conference = " 6" then
sessionA = "6- ...Math Software ..."
end if
if Conference = " 7" then
sessionA = "7- ... Dynamical Systems..."
end if
if Conference = " 8" then
sessionA = "8- Analogy..."
end if
if Conference = " 9" then
sessionA = "9- Symbolic..."
end if
if Conference = "10" then
sessionA = "10- Algebraic ..."
end if
if Conference = "11" then
sessionA = "11- High-Performance ..."
end if
if Conference = "12" then
sessionA = "12- Nonstandard..."
end if
if Conference = "13" then
sessionA = "13- ... simulation"
end if
if Conference = "14" then
sessionA = "14- Algorithms for Param..."
end if
if Conference = "15" then
sessionA = "15- Algebraic and Num..."
end if

	if (accepte = "Oui") then
	Response.Write("<tr><td><b>"+cstr(cpt)+"-</b></td><td><a href='proposal-details-restrictions.asp?id="+cstr(NoInsc)+"'><FONT COLOR='#990000'>"+AutPrincNom++name1++name2++name3+"<FONT></a></td><td>"+AutPrincPays+"</td><td width='300'>"+Proposition+"</td><td>"+LocalNumber+"</td><td width='125'>"+sessionA+"</td><td width='200'>"+texte6+"</td><td>"+confJour+"&nbsp;<BR>"+texte4+"</td><td>"+texte2+"&nbsp;</td></tr>")
	cpt = cpt +1
		end if
	rs.MoveNext
loop until rs.eof
Conn.Close
  set rs = nothing
  set Conn = nothing

%>
</table>
<p>&nbsp; </p>


</body>
</html>
