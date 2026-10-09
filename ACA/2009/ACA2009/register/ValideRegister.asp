<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<script LANGUAGE="VBScript" RUNAT="Server">
FUNCTION CheckString (s, endchar)
	pos = InStr(s, "'")
	While pos > 0
		s = Mid(s, 1, pos) & "'" & Mid(s, pos + 1)
		pos = InStr(pos + 2, s, "'")
	Wend
   CheckString="'" & s & "'" & endchar
END FUNCTION

FUNCTION CheckEnter (s, endchar)
	pos = InStr(s, chr(13))
	While pos > 0
		s = Mid(s, 1, pos-1) & " " & Mid(s, pos + 2)
		pos = InStr(pos + 2, s, chr(13))
	Wend
   CheckEnter=chr(13) & s & chr(13) & endchar
END FUNCTION

</SCRIPT>
<html>
<head>
<title>Validation of registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="style_ACA2009-divers.css" rel="stylesheet" type="text/css">
</head>
<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">
<%
CongNom=Request.Form("CongNom")
CongPrenom=Request.Form("CongPrenom")
CongTitre=Request.Form("CongTitre")
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
Commentaires=Request.Form("Commentaires")
DemandeSpeciale=Request.Form("DemandeSpeciale")
ModePaiement=Request.Form("ModePaiement")
if ModePaiement="Mastercard" or ModePaiement = "Visa" then
	CarteNo=Request.Form("CarteNo")
	Expiration=Request.Form("Expiration")
end if
PrixTotal=Request.Form("PrixTotal")
nbAcc=Request.Form("nbAcc")
Langue=Request.Form("Langue")
Cocktail=Request.Form("Cocktail")
Banquet=Request.Form("Banquet")
Choix1=Request.Form("Choix1")
Choix2=Request.Form("Choix2")
Choix3=Request.Form("Choix3")
sql = "insert into register (" &_
	   	"CongNom," &_
	   	"CongPrenom," &_
	   	"CongTitre," &_
	   	"CongCourriel," &_
		"CongCie," &_
		"CongDept," &_
		"CongAdr," &_
		"CongVille," &_
		"CongProv," &_
		"CongPays," &_
		"CongZip," &_
		"CongTel," &_
		"CongFax," &_
	   	"Acc1Nom," &_
	   	"Acc1Prenom," &_
	   	"Acc1Titre," &_
	   	"Acc1Courriel," &_
	   	"Acc2Nom," &_
	   	"Acc2Prenom," &_
	   	"Acc2Titre," &_
	   	"Acc2Courriel," &_
	   	"Acc3Nom," &_
	   	"Acc3Prenom," &_
	   	"Acc3Titre," &_
	   	"Acc3Courriel," &_
		"nbAcc," &_
		"Cocktail," &_
		"Banquet," &_
		"ModePaiement," &_
	   	"CarteNo," &_				
	   	"CarteExp," &_				
	   	"DemandeSpeciale," &_
	   	"Commentaires," &_		
	   	"Langue," &_
	   	"Accepte," &_				
	   	"Choix1," &_				
	   	"Choix2," &_				
	   	"Choix3," &_								
	   	"Total)" &_				
	   " VALUES ( "
 sql = sql & CheckString(CongNom,",")
 sql = sql & CheckString(CongPrenom,",")
 sql = sql & CheckString(CongTitre,",")
 sql = sql & CheckString(CongCourriel,",")
 sql = sql & CheckString(CongCie,",")
 sql = sql & CheckString(CongDept,",")
 sql = sql & CheckString(CongAdr,",")
 sql = sql & CheckString(CongVille,",")
 sql = sql & CheckString(CongProv,",")
 sql = sql & CheckString(CongPays,",")
 sql = sql & CheckString(CongZip,",")
 sql = sql & CheckString(CongTel,",")
 sql = sql & CheckString(CongFax,",")
 sql = sql & CheckString(Acc1Nom,",")
 sql = sql & CheckString(Acc1Prenom,",")
 sql = sql & CheckString(Acc1Titre,",")
 sql = sql & CheckString(Acc1Courriel,",")
 sql = sql & CheckString(Acc2Nom,",")
 sql = sql & CheckString(Acc2Prenom,",")
 sql = sql & CheckString(Acc2Titre,",")
 sql = sql & CheckString(Acc2Courriel,",")
 sql = sql & CheckString(Acc3Nom,",")
 sql = sql & CheckString(Acc3Prenom,",")
 sql = sql & CheckString(Acc3Titre,",")
 sql = sql & CheckString(Acc3Courriel,",")
 sql = sql & "'"+nbAcc+"',"
 sql = sql & "'"+Cocktail+"',"
 sql = sql & "'"+Banquet+"',"
 sql = sql & "'"+ModePaiement+"',"
 sql = sql & CheckString(CarteNo,",")
 sql = sql & "'"+Expiration+"',"
 sql = sql & CheckString(DemandeSpeciale,",")
 sql = sql & CheckString(Commentaires,",")
 sql = sql & "'"+Langue+"',"
 sql = sql & "'Non'," 
 sql = sql & +"'"+Choix1+"',"
 sql = sql & +"'"+Choix2+"',"
 sql = sql & +"'"+Choix3+"',"  
 sql = sql & +"'"+PrixTotal+"')"

  Set Conn = Server.CreateObject("ADODB.Connection")
  Set RS = Server.CreateObject("ADODB.RecordSet")

  Conn.Open "ACA2009"

 Conn.Execute(sql)
 'response.write(sql)

  Conn.Close
  set rs = nothing
  set Conn = nothing
'response.end

Set Mail = Server.CreateObject("Persits.MailSender")
Mail.Host = "smtp.etsmtl.ca"
Mail.From = "gilles.picard@etsmtl.ca"
Mail.Subject = "ACA2009 registration of " & Request.Form("CongNom") & " , " & Request.Form("CongPrenom")
Mail.AddAddress Request.Form("CongCourriel")
Mail.addBCC "gilles.picard@etsmtl.ca"
Body = "Thank you," & chr(13) & chr(13)
Body = Body & "This is an automated response following your registration to the conference ACA2009." & chr(13) & chr(13) 
Body = Body & "You have choosen to pay your registration fees using: " & Request.Form("ModePaiement") &"." & chr(13) & chr(13) 
Body = Body & "As soon as payment is confirmed, you will receive another e-mail finalizing your registration." & chr(13) 
Body = Body & "-----------------------------------------------------" & chr(13) & chr(13)
Body = Body & "Thank you, Gilles Picard."
'Body = "Nom: " & Request.Form("CongNom") & chr(13) & chr(10)
'Body = Body & "Prénom: " & Request.Form("CongPrenom") & chr(13) & chr(10)
'Body = Body & "Courriel: " & Request.Form("CongCourriel") & chr(13) & chr(10)
Mail.Body = Body ' assign string to Mail.Body
Mail.Send



if Langue = "FR" then
	lcTitre="Votre inscription a été transmise  MERCI!"
	lcRetour="retour à la page principale"
else
	lcTitre="Your registration has been sent, THANK YOU"
	lcRetour="back to the main page"
end if
%><center>
<table><tr><td align="center" class="Titre1"><h2><b><i><%=lcTitre%></i></b></h2></td></tr>
<tr><td height="40">&nbsp;</td></tr>
<tr><td height="40">&nbsp;</td></tr>
<tr><td align="center"><a href="http://aca2009.etsmtl.ca/"><u><%=lcRetour%></u></a></td></tr>
</table></center>
</body>
</html>
