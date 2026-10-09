<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<%
Langue = Request("Langue")

lcTitre = "Information Validation"
imprimer = "Print this page for your records"
finalise = "Hitting the Submit Button will finalize your registration"
sortieVendredi= "Choice for <br>Friday's excursion"
planif = "I plan to attend: "
welcomerecep = "Welcome Reception"
banquetsamedi = "Banquet dinner"
monnaie = " $Cdn"
paiementfrais = "Registration Fees:"
allergies = "Menus : <br>(special needs)"
comments = "Comments"
ncTitre="Title"
ncNom="Last name"
ncPrenom="First name"
ncCourriel="E-mail"
ncVille="City"
ncPays="Country"
ncCP="Zip"
ncTel="Tel."
ncCie="Institution"
ncDept="Department"
ncAdr="Address"
ncProv="State/Province"
ncFax="Fax"
ncPaiement="Payment method"
ncCong="Delegate:"
ncAcc="Accompanying person(s)"
nbPaiementPar="Payment by:"
nctransfer="Money tranfer"
ncSubmit="Submit"
ncModif="Modify"
ncNoCarte="Card number"

%>
<title><%=lcTitre%></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="style_ACA2009-divers.css" rel="stylesheet" type="text/css">
</head>
<%
if cdate("03 juin 2009") - now() > 0 then
	PrixCong = 270.00
	PrixAcc = 135
else
	PrixCong = 300.00
	PrixAcc = 150
end if

CongNom=Request.Form("CongNom")
CongPrenom=Request.Form("CongPrenom")
CongTitre=Request.Form("txtCongTitre")
CongCourriel=Request.Form("CongCourriel")
CongCie=Request.Form("CongCie")
CongDept=Request.Form("CongDept")
CongAdr=Request.Form("CongAdr")
CongVille=Request.Form("CongVille")
CongProv=Request.Form("CongProv")
CongPays=Request.Form("CongPays")
CongZip=Request.Form("CongZip")
CongTel=Request.Form("CongTel")
CongFax=Request.Form("CongFax")
Acc1Nom=Request.Form("Acc1Nom")
Acc1Prenom=Request.Form("Acc1Prenom")
Acc1Titre=Request.Form("Acc1Titre")
Acc1Courriel=Request.Form("Acc1Courriel")
Acc2Nom=Request.Form("Acc2Nom")
Acc2Prenom=Request.Form("Acc2Prenom")
Acc2Titre=Request.Form("Acc2Titre")
Acc2Courriel=Request.Form("Acc2Courriel")
Acc3Nom=Request.Form("Acc3Nom")
Acc3Prenom=Request.Form("Acc3Prenom")
Acc3Titre=Request.Form("Acc3Titre")
Acc3Courriel=Request.Form("Acc3Courriel")
Proposition=Request.Form("Proposition")
ResumeProposition=Request.Form("ResumeProposition")
SiteWeb=Request.Form("SiteWeb")
NoteSpeciale=Request.Form("NoteSpeciale")
Conference=Request.Form("Conference")
choix_mtl=Request.Form("choix_mtl")
choix_sucrerie=Request.Form("choix_sucrerie")
choix_histoire=Request.Form("choix_histoire")
Commentaires=Request.Form("Commentaires")
DemandeSpeciale=Request.Form("DemandeSpeciale")
ModePaiement=Request.Form("Paiement")
if ModePaiement="Credit" then
	CarteNo=Request.Form("CarteNo")
	ModePaiement=Request.Form("CarteType")
	Expiration=Request.Form("exp_mois")+"/"+Request.Form("exp_annee")
end if
Langue=Request.Form("Langue")
Cocktail=Request.Form("Cocktail")
Banquet=Request.Form("Banquet")
Choix1=choix_mtl
Choix2=choix_sucrerie
Choix3=choix_histoire
if Langue = "FR" then
presencecocktail = Cocktail
presencebanquet = Banquet
else
if Cocktail = "OUI" then
presencecocktail = "Yes"
else
presencecocktail = "No"
end if
if Banquet = "OUI" then
presencebanquet = "Yes"
else
presencebanquet = "No"
end if
end if


nbAcc = 0
if len(Acc1Nom) > 2 then
	nbAcc = nbAcc + 1
end if
if len(Acc2Nom) > 2 then
	nbAcc = nbAcc + 1
end if
if len(Acc3Nom) > 2 then
	nbAcc = nbAcc + 1
end if

if ModePaiement = "Transfer" then
choixpaie = nctransfer
else
choixpaie = ModePaiement
end if

%>
<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">

<table border="0">
	<tr>
		<td colspan="5" align="center" class="Titre1"><FONT FACE="Verdana" SIZE="4" COLOR="#000000"><%=lcTitre%></FONT></td>
	</tr>
	<tr>
		<td colspan="5">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="5" class="Titre3"><B><%=imprimer%></B></td>
	</tr>
	<tr>
		<td colspan="5"</td>
	</tr>
		<tr>
	<td colspan="2" class="Titre2"><FONT FACE="Verdana" COLOR="#000000"><H4><%=ncCong%></H4></FONT></td>
	<td width="15"></td>
	<td colspan="2" class="Titre2"><H4><FONT FACE="Verdana" COLOR="#000000"><%=ncAcc%></FONT></H4></td>
		</tr>
		<tr>
	<td><%=ncTitre%></td>
	<td class="NomChamps"><B><FONT COLOR="#990000"><%=CongTitre%></FONT></B></td>
	<td></td>
	<td width="100"><%=ncTitre%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Acc1Titre%></B></FONT></td>
		</tr>
		<tr>
	<td><%=ncNom%></td>
	<td class="NomChamps"><B><FONT COLOR="#990000"><B><%=CongNom%></B></FONT></B></td>
	<td></td>
	<td><%=ncNom%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Acc1Nom%></B></FONT></td>
		</tr>
		<tr>
	<td><%=ncPrenom%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongPrenom%></B></FONT></td>
	<td></td>
	<td><%=ncPrenom%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Acc1Prenom%></B></FONT></td>
		</tr>	
		<tr>
	<td><%=ncCourriel%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongCourriel%></B></FONT></td>
	<td></td>
	<td></td>
	<td class="NomChamps"></td>
		</tr>
		<tr>
	<td><%=ncCie%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongCie%></B></FONT></td>
	<td></td>
	<td><%=ncTitre%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Acc2Titre%></B></FONT></td>
		</tr>
		<tr>
	<td><%=ncDept%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongDept%></B></FONT></td>
	<td></td>
	<td><%=ncNom%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Acc2Nom%></B></FONT></td>
		</tr>
		<tr>
	<td><%=ncAdr%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongAdr%></B></FONT></td>
	<td></td>
	<td><%=ncPrenom%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Acc2Prenom%></B></FONT></td>
		</tr>
		<tr>
	<td><%=ncVille%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongVille%></B></FONT></td>
	<td></td>
	<td></td>
	<td class="NomChamps"></td>
		</tr>
		<tr>
	<td><%=ncProv%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongProv%></B></FONT></td>
	<td></td>
	<td><%=ncTitre%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Acc3Titre%></B></FONT></td>
		</tr>			
		<tr>
	<td><%=ncPays%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongPays%></B></FONT></td>
	<td></td>
	<td><%=ncNom%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Acc3Nom%></B></FONT></td>
		</tr>
		<tr>
	<td><%=ncCP%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongZip%></B></FONT></td>
	<td></td>
	<td><%=ncPrenom%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Acc3Prenom%></B></FONT></td>
		</tr>
		<tr>
	<td><%=ncTel%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongTel%></B></FONT></td>
	<td></td>
	<td></td>
	<td class="NomChamps"></td>
		</tr>
		<tr>
	<td><%=ncFax%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=CongFax%></B></FONT></td>
	<td></td>
	<td></td>
	<td class="NomChamps"></td>
		</tr>
		<tr>
	<td colspan="3"></td>
	<td></td>
	<td class="NomChamps"></td>
		</tr>			
		<tr>
	<td colspan="5" height="15"></td>
		</tr>
		<tr>
	<td colspan="5"><%=planif%></td>
		</tr>
		<tr>
	<td><%=welcomerecep%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=presencecocktail%></B></FONT></td>
	<td></td>
	<td><%=banquetsamedi%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=presencebanquet%></B></FONT></td>
		</tr>
		<tr>
	<td colspan="5">&nbsp;</td>
		</tr>

		<tr>
	<td VALIGN="top"><%=sortieVendredi%></td>
	<td colspan="4" class="NomChamps">
		<uL>
<%		if choix_mtl = 1 then
			Response.write("<li><FONT COLOR=""#990000""><B>Montréal Bus Tour</B></FONT> for 1 participant.<br>")
		end if
		if choix_mtl > 1 then
			Response.write("<li><FONT COLOR=""#990000""><B>Montréal Bus Tour</B></FONT> for "+choix_mtl+" participants.<br>")
		end if
		if choix_sucrerie = 1 then
			Response.write("<li><FONT COLOR=""#990000""><B>Lunch and walking tour of Chinatown</B></FONT> for 1 participant.<br>")
		end if
		if choix_sucrerie > 1 then
			Response.write("<li><FONT COLOR=""#990000""><B>Lunch and walking tour of Chinatown</B></FONT> for "+choix_sucrerie+" participants.<br>")
		end if
		if choix_histoire = 1 then
			Response.write("<li><FONT COLOR=""#990000""><B>Walking tour of Historical Old Montréal</B></FONT> for 1 participant.")
		end if
		if choix_histoire > 1 then
			Response.write("<li><FONT COLOR=""#990000""><B>Walking tour of Historical Old Montréal</B></FONT> for "+choix_histoire+" participants.")
		end if
%>
		</uL>
	</td>
		</tr>
	
			
		<tr>
	<td colspan="5"></td>
		</tr>
		<tr>
	<td><%=allergies%></td>
	<td colspan="4" class="NomChamps"><textarea name="DemandeSpeciale" rows=3 cols=60 readonly="true"><%=DemandeSpeciale%></textarea></td>
		</tr><tr>
	<td><%=comments%></td>
	<td colspan="4" class="NomChamps"><textarea name="DemandeSpeciale" rows=3 cols=60 readonly="true"><%=Commentaires%></textarea></td>
		</tr>
<%		
PrixExcursion = 55 * choix_mtl + 35 * choix_sucrerie + 15 * choix_histoire		
%>		
<%
 PrixTotal = PrixCong + PrixAcc * nbAcc + PrixExcursion
%>
<%
 Priceacc =  PrixAcc * nbAcc 
%>
				<tr>
	<td colspan="5"><B><%=paiementfrais%></B></td>
		</tr>
		<tr>
	<td><%=ncCong%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=PrixCong%><%=monnaie%></B></FONT></td>
	<td colspan="3"></td>
		</tr>
		<tr>
	<td nowrap><%=ncAcc%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=Priceacc%><%=monnaie%></B></FONT></td>
	<td colspan="3"></td>
		</tr>
		<tr>
	<td nowrap>Excursion fees</td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=PrixExcursion%><%=monnaie%></B></FONT></td>
	<td colspan="3"></td>
		</tr>
		<tr>
	<td></td>
	<td>__________</td>
	<td colspan="3"></td>
		</tr>
		<tr>
	<td>Total</td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=PrixTotal%><%=monnaie%></B></FONT></td>
	<td colspan="3"></td>
		</tr>
		<tr>
	<td colspan="5" height="10"></td>
		</tr>
		<tr>
	<td colspan="5"></td>
		</tr>
		<tr>
	<td><%=nbPaiementPar%></td>
	<td class="NomChamps"><FONT COLOR="#990000"><B><%=choixpaie%></B></FONT></td>
	<td colspan="3"></td>
		</tr>
<%
if ModePaiement = "Mastercard" or ModePaiement = "Visa" then
	Response.write("<tr><td>"+ncNoCarte+"</td><td class='NomChamps'><FONT COLOR=""#990000""><B>"+CarteNo+"</B></FONT></td><td colspan='3'></td></tr>")
	Response.write("<tr><td>Expiration:</td><td class='NomChamps'><FONT COLOR=""#990000""><B>"+Expiration+"</B></FONT></td><td colspan='3'></td></tr>")	
end if
 %>

</table>

<FORM name="Confirmation" METHOD="post" action="Valideregister.asp">

<input type=hidden name=CongTitre value="<%=CongTitre%>">
<input type=hidden name=CongNom value="<%=CongNom%>">
<input type=hidden name=CongPrenom value="<%=CongPrenom%>">
<input type=hidden name=CongAdr value="<%=CongAdr%>">
<input type=hidden name=CongCie value="<%=CongCie%>">
<input type=hidden name=CongDept value="<%=CongDept%>">
<input type=hidden name=CongVille value="<%=CongVille%>">
<input type=hidden name=CongProv value="<%=CongProv%>">
<input type=hidden name=CongPays value="<%=CongPays%>">
<input type=hidden name=CongZip value="<%=CongZip%>">
<input type=hidden name=CongTel value="<%=CongTel%>">
<input type=hidden name=CongFax value="<%=CongFax%>">
<input type=hidden name=CongCourriel value="<%=CongCourriel%>">
<input type=hidden name=ModePaiement value="<%=ModePaiement%>">
<input type=hidden name=CarteNo value="<%=CarteNo%>">
<input type=hidden name=Expiration value="<%=Expiration%>">
<input type=hidden name=Acc1Titre value="<%=Acc1Titre%>">
<input type=hidden name=Acc1Nom value="<%=Acc1Nom%>">
<input type=hidden name=Acc1Prenom value="<%=Acc1Prenom%>">
<input type=hidden name=Acc1Courriel value="<%=Acc1Courriel%>">
<input type=hidden name=Acc2Titre value="<%=Acc2Titre%>">
<input type=hidden name=Acc2Nom value="<%=Acc2Nom%>">
<input type=hidden name=Acc2Prenom value="<%=Acc2Prenom%>">
<input type=hidden name=Acc2Courriel value="<%=Acc2Courriel%>">
<input type=hidden name=Acc3Titre value="<%=Acc3Titre%>">
<input type=hidden name=Acc3Nom value="<%=Acc3Nom%>">
<input type=hidden name=Acc3Prenom value="<%=Acc3Prenom%>">
<input type=hidden name=Acc3Courriel value="<%=Acc3Courriel%>">
<input type=hidden name=Banquet value="<%=Banquet%>">
<input type=hidden name=Cocktail value="<%=Cocktail%>">
<input type=hidden name=DemandeSpeciale value="<%=DemandeSpeciale%>">
<input type=hidden name=Commentaires value="<%=Commentaires%>">
<input type=hidden name=Choix1 value="<%=Choix1%>">
<input type=hidden name=Choix2 value="<%=Choix2%>">
<input type=hidden name=Choix3 value="<%=Choix3%>">
<input type=hidden name=PrixTotal value="<%=PrixTotal%>">
<input type=hidden name=nbAcc value="<%=nbAcc%>">
<input type=hidden name=Langue value="<%=Langue%>">

<TABLE border=0>
<tr>
	<td class="Titre3"><B><%=finalise%></B></td>
</tr>
<tr>
	<td class="Titre3">&nbsp;</td>
</tr>
<TR>
	<TD align=center><b>Submit</b>&nbsp;&nbsp;&nbsp;
	<!-- <input type=Submit Value=<%=ncSubmit%>> -->
	<input type=Button Value=<%=ncModif%> OnClick=Modifier()>
	</TD>
</TR>
</TABLE>
</FORM>
<SCRIPT>
function Modifier()
{
history.back();
}
</SCRIPT>
</body>
</html>
