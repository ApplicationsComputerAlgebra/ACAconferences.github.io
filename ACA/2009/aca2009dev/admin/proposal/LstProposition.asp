<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Gestion des conférences ACA2009</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<link href="../Cstyle_ACA2009.css" type="text/css" rel="stylesheet">
<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">
<DIV ALIGN="center"><H2>Gestion des conférences pour ACA2009</H2></DIV>
<table border="1" CELLPADDING="2" CELLSPACING="2">
<tr>
<td>&nbsp;</td>
<td align="center"><b><i>Presenter(s)</i></b></td>
<td colspan="8">&nbsp;</td>
</tr>
<tr>
<td><a href="LstProposition.asp?p1=0"><FONT COLOR='#990000'>No</FONT></a></td>
<td><a href="LstProposition.asp?p1=1"><FONT COLOR='#990000'>Nom(s)</FONT></a></td>
<!-- <td><a href="LstProposition.asp?p1=9">Num.</a></td> -->
<td><a href="LstProposition.asp?p1=4"><FONT COLOR='#990000'>Proposition</FONT></a></td>
<td><a href="LstProposition.asp?p1=3"><FONT COLOR='#990000'>Talk<BR>Number</FONT></a></td>
<td><a href="LstProposition.asp?p1=5"><FONT COLOR='#990000'>Session</FONT></a></td>
<!-- <td><a href="LstProposition.asp?p1=6">Durée</a></td> -->
<td><a href="LstProposition.asp?p1=7"><FONT COLOR='#990000'>Date</FONT></a></td>
<td><a href="LstProposition.asp?p1=8"><FONT COLOR='#990000'>Acc.</FONT></a></td>
<td><b>Schedule<br>restrictions</b></td>
<td><a href="LstProposition.asp?p1=2"><FONT COLOR="#990000"><B>Tentative<BR>Schedule</B></FONT></a></td>
<td><a href="LstProposition.asp?p1=9"><FONT COLOR="#990000"><B>Room</B></FONT></a></td>
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
		order = "Jour,Heure"	
	case "3"
		order = "LocalNumber"	
	case "4"
		order = "Proposition"
	case "5"
		order = "Conference,AuteurNom"
	case "6"
		order = "noinsc"
	case "7"
		order = "dateproposition"
	case "8"
		order = "accepte"
	case "9"
		order = "ConfLocal"	
	case else
		order = "Conference,AuteurNom"
	end select
	
sql = "select * from inscriptions order by "+order
    set rs = Conn.Execute(sql)
	cpt = 1
	sessionA = ""
do
	AutPrincNom=rs("AuteurNom")
	AutPrincPrenom=rs("AuteurPrenom")
	Proposition=rs("Proposition")
	Conference=rs("Conference")
	TypeConference=rs("TypeConference")
	DateProposition = cstr(rs("DateProposition"))
	Restrictions=rs("Restrictions")
	accepte=rs("accepte")
	Jour=rs("Jour")
	Heure=rs("Heure")
	
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
	
if (isNull(rs("LocalNumber"))) then
        texte2 = " "
 else
        texte2=rs("LocalNumber")
end if

if (isNull(rs("ConfLocal"))) then
        texte3 = " "
 else
        texte3=rs("ConfLocal")
end if

if (isNull(rs("Heure"))) then
        texte4 = " "
 else
        texte4=rs("Heure")
end if

if (isNull(rs("Restrictions"))) then
        texte6 = "&nbsp;"
 else
        texte6="&nbsp;"&rs("Restrictions")
end if
 
	if (Jour = "1") then
	confJour= "jeudi"
	else
		if (Jour = "2") then
		confJour= "vendredi"
		else
			if (Jour = "3") then
			confJour= "samedi"
			else
				if (Jour = "4") then
				confJour= "dimanche"
				else
				confJour= " "
				end if
			end if
		end if
	end if
	
if Conference = " 1" then
sessionA = "1- Computer Algebra in Education"
end if
if Conference = " 2" then
sessionA = "2- Interaction ... Interval Comp."
end if
if Conference = " 3" then
sessionA = "3- Appl. and ... in Derive"
end if
if Conference = " 4" then
sessionA = "4- Elimination Theory and Appl..."
end if
if Conference = " 5" then
sessionA = "5- Chemistry and CA"
end if
if Conference = " 6" then
sessionA = "6- Appl. of Math Software ..."
end if
if Conference = " 7" then
sessionA = "7- CA for Dynamical Systems..."
end if
if Conference = " 8" then
sessionA = "8- Analogy ..."
end if
if Conference = " 9" then
sessionA = "9- Symbolic and Numeric Comp."
end if
if Conference = "10" then
sessionA = "10- ... Diff and Integral Operators"
end if
if Conference = "11" then
sessionA = "11- High-Performance CA"
end if
if Conference = "12" then
sessionA = "12- Nonstandard ..."
end if
if Conference = "13" then
sessionA = "13- Symbolic ... simulation"
end if	
if Conference = "14" then
sessionA = "14- Algorithms for Param..."
end if
if Conference = "15" then
sessionA = "15- Algebraic and Num..."
end if
	
	NoInsc=rs("noInsc")
	Response.Write("<tr><td><FONT COLOR='#990000'>"+cstr(cpt)+"<FONT><td><a href='DescProposition.asp?id="+cstr(NoInsc)+"'>"+AutPrincNom++name1++name2++name3+"</a></td><td width='300'>"+Proposition+"</td><td>"+texte2+"</td><td width='200'>"+sessionA+"</td><td><font size='-2'>"+DateProposition+"</font></td><td>"+accepte+"</td><td width='150'>"+texte6+"</td><td>"+confJour+"&nbsp;<br>"+texte4+"</td><td>"+texte3+"&nbsp;</td></tr>")
	cpt = cpt +1
	rs.MoveNext
loop until rs.eof
Conn.Close
  set rs = nothing
  set Conn = nothing
response.write("</table>")
  
%>
<p>&nbsp; </p>
</body>
</html>
