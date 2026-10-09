<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Gestion des inscriptions pour ACA2009</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<link href="../style_ACA2009.css" type="text/css" rel="stylesheet">
<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">
<H2><b><i>Gestion des inscriptions pour ACA2009</i></b></H2>


<table border="1" CELLPADDING="3" CELLSPACING="2">
<tr>
<td COLSPAN="9">&nbsp;</td>
<td COLSPAN="3" ALIGN="center"><B>Choix pour l'excursion</B></td>
<td COLSPAN="4">&nbsp;</td>
</tr>
<tr>
<td><a href="./LstRegister.asp?p1=0">No</a></td>
<td><a href="./LstRegister.asp?p1=1">Nom</a></td>
<td><a href="./LstRegister.asp?p1=2">Prénom</a></td>
<td>no.<BR>insc.</td>
<td><a href="./LstRegister.asp?p1=3">Pays</a></td>
<td><a href="./LstRegister.asp?p1=4">Date</a></td>
<td><a href="./LstRegister.asp?p1=5">nb de<BR>pers.</a></td>
<td><a href="./LstRegister.asp?p1=6">Cock<BR>tail</a></td>
<td><a href="./LstRegister.asp?p1=7">Ban<BR>quet</a></td>
<td ALIGN="center"><a href="./LstRegister.asp?p1=8">Bus Tour</a></td>
<td ALIGN="center"><a href="./LstRegister.asp?p1=9">Chinatown</a></td>
<td ALIGN="center"><a href="./LstRegister.asp?p1=10">Old<br>Montreal</a></td>
<td><a href="./LstRegister.asp?p1=11">Payé<BR>par</a></td>
<td><a href="./LstRegister.asp?p1=12">Payé?</a></td>
<td>Menus<BR>partic.</td>
<td>Valid</td>
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
		order = "CongPrenom"	
	case "3"
		order = "CongPays"
	case "4"
		order = "DateInsc"		
	case "5"
		order = "NbAcc"
	case "6"
		order = "Cocktail"
	case "7"
		order = "Banquet"
	case "8"
		order = "Choix1"
	case "9"
		order = "Choix2"
	case "10"
		order = "Choix3"
	case "11"
		order = "ModePaiement"
	case "12"
		order = "accepte"
	case else
		order = "noinsc"
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
	allerg = 0
	cptpaieTr = 0
	cptpaieCh = 0
	cptpaieVisa = 0
	cptpaieMast = 0
do
	CongNom=rs("CongNom")
	CongPrenom=rs("CongPrenom")
	CongPays=rs("CongPays")
	NoInsc=rs("NoInsc")
	Banquet=rs("Banquet")
	Cocktail=rs("Cocktail")
	DateInsc=rs("DateInsc")
	Choix1=rs("Choix1")
	Choix2=rs("Choix2")
	Choix3=rs("Choix3")		
	Accepte=rs("Accepte")
	nbAcc=rs("nbAcc")
	DemandeSpeciale=rs("DemandeSpeciale")
	ModePaiement=rs("ModePaiement")
	ConfAccepte=rs("ConfAccepte")
	
	if ModePaiement = "Transfer" then
	paiepar="transf"
	cptpaieTr = cptpaieTr + 1
	else
	if ModePaiement = "Cheque" then 
	paiepar="cheq"
	cptpaieCh = cptpaieCh + 1
	else
		if ModePaiement = "Visa" then
		paiepar="Visa"
		cptpaieVisa = cptpaieVisa + 1
		else
		paiepar = "Mast."
		cptpaieMast = cptpaieMast + 1
		end if
	end if
	end if
	
	nbtotal=nbAcc+1
	if len(DemandeSpeciale) > 2 then
	allergies="Oui"
	allerg = allerg + nbtotal
	else
	allergies="Non"
	end if
if (isNull(rs("ConfAccepte"))) then
        texte2 = ""
 else
        texte2=rs("ConfAccepte")
end if	
 
	Response.Write("<tr><td><b>"+cstr(cpt)+"</b></td><td><a href='DescRegister.asp?id="+cstr(NoInsc)+"'>"+CongNom+"</a></td><td>"+CongPrenom+"</td><td>"+cstr(NoInsc)+"</td><td>"+CongPays+"</td><td>"+cstr(DateInsc)+"</td><td ALIGN='center'>"+cstr(nbtotal)+"</td><td ALIGN='center'>"+Cocktail+"</td><td ALIGN='center'>"+Banquet+"</td><td ALIGN='center'>"+cstr(Choix1)+"</td><td ALIGN='center'>"+cstr(Choix2)+"</td><td ALIGN='center'>"+cstr(Choix3)+"</td><td>"+paiepar+"</td><td ALIGN='center'>"+cstr(Accepte)+"</td><td ALIGN='center'>"+allergies+"</td><td ALIGN='center'>"+texte2+"&nbsp;</td></tr>")	
	cpt = cpt +1
	if Cocktail = "OUI" then
		cptCocktail = cptCocktail + nbtotal
	end if
	if Banquet = "OUI" then
		cptBanquet = cptBanquet + nbtotal
	end if
	cptAcc =  cptAcc + nbtotal

	if Choix1 > 0 then 
	choix1a = choix1a + Choix1
	end if
	if Choix2 > 0 then 
	choix2a = choix2a + Choix2
	end if
	if Choix3 > 0 then 
	choix3a = choix3a + Choix3
	end if
	rs.MoveNext
loop until rs.eof
Conn.Close
  set rs = nothing
  set Conn = nothing
Response.Write("<tr><td colspan='6' ALIGN='right'><b>Total</b></td><td ALIGN='center'><b>"+cstr(cptAcc)+"</b></td><td ALIGN='center'><b>"+cstr(cptCocktail)+"</b></td><td ALIGN='center'><b>"+cstr(cptBanquet)+"</b></td><td ALIGN='center'><b>"+cstr(choix1a)+"</b></td><td ALIGN='center'><b>"+cstr(choix2a)+"</b></td><td ALIGN='center'><b>"+cstr(choix3a)+"</b></td><td>&nbsp;</td><td>&nbsp;</td><td ALIGN='center'><b>"+cstr(allerg)+"</b></td><td>&nbsp;</td></tr>")
Response.Write("<tr><td colspan='12'>&nbsp;</td><td ALIGN='center'><b>"+cstr(cptpaieCh)+"</b></td><td><b>chèque</b></td><td colspan='2'>&nbsp;</td></tr>")
Response.Write("<tr><td colspan='12' ALIGN='right'></td><td ALIGN='center'><b>"+cstr(cptpaieTr)+"</b></td><td><b>transf.</b></td><td colspan='2'>&nbsp;</td></tr>")
Response.Write("<tr><td colspan='12'></td><td ALIGN='center'><b>"+cstr(cptpaieVisa)+"</b></td><td><b>Visa</b></td><td colspan='2'>&nbsp;</td></tr>")
Response.Write("<tr><td colspan='12'></td><td ALIGN='center'><b>"+cstr(cptpaieMast)+"</b></td><td><b>Masterc</b></td><td colspan='2'>&nbsp;</td></tr>")
response.write("</table>")
%>
<p>&nbsp; </p>

</body>
</html>
