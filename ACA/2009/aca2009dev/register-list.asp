<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Participants, ACA 2009, Applications of Computer Algebra</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="Cstyle_ACA2009.css" rel="stylesheet" type="text/css">
</head>
<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">

<H2><B><i>List of conference delegates for the ACA2009 Conference</i></B></H2>

<TABLE WIDTH="900" BORDER="0" CELLPADDING="2">
    <TR>
      <TD VALIGN="top"><B>Important&nbsp;notice:</B></TD>
      <TD ALIGN="left" VALIGN="top">the delegates in the following list have registered but be aware that registration is confirmed by e-mail only once payment has been received.</TD>
    </TR>
</TABLE>
<P>
<table WIDTH="900" border="1"  CELLPADDING="3" CELLSPACING="2">
<tr>
<td>&nbsp;</td>
<td colspan="3" align="center" class="NomChamps">Conference Delegate</td>
<td>&nbsp;</td>
<td colspan="2" ALIGN="center">Will attend</td>
<td colspan="3" ALIGN="center">Friday's excursion<br>(number of participants)</td>
<td>&nbsp;</td>
</tr>

<tr>
<td>&nbsp;</td>
<td><a href="register-list.asp?p1=1"><B><FONT COLOR="#990000"><u>Last Name</u></FONT></B></a></td>
<td><B>First Name</B></td>
<td><a href="register-list.asp?p1=2"><B><FONT COLOR="#990000"><u>Country</u></FONT></B></a></td>
<td>Number of<BR>persons</td>
<td>Welcome<BR>Cocktail</td>
<td>Saturday's<BR>Banquet</td>
<td>Bus Tour</td>
<td>Chinatown</td>
<td>Old Montreal</td>
<td><a href="register-list.asp?p1=3"><u><b><FONT COLOR="#990000">Date of<br>registration</FONT></b></u></a></td>
</tr>
<%
p1 = request("p1")
Set Conn = Server.CreateObject("ADODB.Connection")
   Set RS = Server.CreateObject("ADODB.RecordSet")
  Conn.Open "aca2009"
  select case p1
  	case "1"
		order = "CongNom"
 	case "2"
		order = "CongPays"
	case "3"
		order = "DateInsc"	
	case else
		order = "CongNom"
	end select
	
sql = "select * from register order by "+order
    set rs = Conn.Execute(sql)
	cpt = 1
	cptAcc = 0
	cptCocktail = 0
	cptBanquet = 0
	choix1a = 0
	choix2a = 0
	choix3a = 0
do
	CongNom=rs("CongNom")
	CongPrenom=rs("CongPrenom")
	CongPays=rs("CongPays")
	NoInsc=rs("NoInsc")
	nbAcc=rs("nbAcc")
	DateInsc=rs("DateInsc")
	Cocktail=rs("Cocktail")
	Banquet=rs("Banquet")
	nbtotal=nbAcc+1
	Choix1=rs("Choix1")
	Choix2=rs("Choix2")
	Choix3=rs("Choix3")
	if (isNull(rs("ConfAccepte"))) then
        Valider = ""
 	else
        Valider=rs("ConfAccepte")
	end if
	
if Valider = "Y" then
	
if Cocktail = "OUI" then
presencecocktail = "Yes"
cptCocktail = cptCocktail + nbtotal
else
presencecocktail = "No"
end if
if Banquet = "OUI" then
presencebanquet = "Yes"
cptBanquet = cptBanquet + nbtotal
else
presencebanquet = "No"
end if

cptAcc =  cptAcc + nbtotal

	Response.Write("<tr><td><FONT COLOR='#990000'>"+cstr(cpt)+"-</FONT></td><td><a href='register-details.asp?id="+cstr(NoInsc)+"'><u><B>"+CongNom+"</B></u></a></td><td>"+CongPrenom+"</td><td>"+CongPays+"</td><td ALIGN='center'>"+cstr(nbtotal)+"</td><td ALIGN='center'>"+presencecocktail+"</td><td ALIGN='center'>"+presencebanquet+"</td><td ALIGN='center'>"+cstr(Choix1)+"</td><td ALIGN='center'>"+cstr(Choix2)+"</td><td ALIGN='center'>"+cstr(Choix3)+"</td><td><font size='-2'>"+cstr(DateInsc)+"</font></td></tr>")
	cpt = cpt +1
	

	if Choix1 > 0 then 
	choix1a = choix1a + Choix1
	end if
	if Choix2 > 0 then 
	choix2a = choix2a + Choix2
	end if
	if Choix3 > 0 then 
	choix3a = choix3a + Choix3
	end if
end if
	rs.MoveNext
loop until rs.eof
Conn.Close
  set rs = nothing
  set Conn = nothing
Response.Write("<tr><td>&nbsp;</td><td colspan='3' ALIGN='right'><b>Total</b></td><td ALIGN='center'>"+cstr(cptAcc)+"</td><td ALIGN='center'>"+cstr(cptCocktail)+"</td><td ALIGN='center'>"+cstr(cptBanquet)+"</td><td ALIGN='center'>"+cstr(choix1a)+"</td><td ALIGN='center'>"+cstr(choix2a)+"</td><td ALIGN='center'>"+cstr(choix3a)+"</td>")
response.write("</table>")
%>

<p>&nbsp; </p>
</body>
</html>
