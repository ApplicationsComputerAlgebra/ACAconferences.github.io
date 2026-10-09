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
<title>Validation de la proposition</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="../style_ACA2009-divers.css" type="text/css" rel="stylesheet">
</head>
<body>


<%
AutPrincNom=Request.Form("AutPrincNom")
AutPrincPrenom=Request.Form("AutPrincPrenom")
AutPrincTitre=Request.Form("txtAutPrincTitre")
AutPrincCourriel=Request.Form("AutPrincCourriel")
AutPrincCie=Request.Form("AutPrincCie")
AutPrincDept=Request.Form("AutPrincDept")
AutPrincAdr=Request.Form("AutPrincAdr")
AutPrincVille=Request.Form("AutPrincVille")
AutPrincProv=Request.Form("AutPrincProv")
AutPrincPays=Request.Form("AutPrincPays")
AutPrincZip=Request.Form("AutPrincZip")
AutPrincTel=Request.Form("AutPrincTel")
AutPrincFax=Request.Form("AutPrincFax")
CoAuteur1Nom=Request.Form("CoAuteur1Nom")
CoAuteur1Prenom=Request.Form("CoAuteur1Prenom")
CoAuteur1Titre=Request.Form("CoAuteur1Titre")
CoAuteur1Courriel=Request.Form("CoAuteur1Courriel")
CoAuteur2Nom=Request.Form("CoAuteur2Nom")
CoAuteur2Prenom=Request.Form("CoAuteur2Prenom")
CoAuteur2Titre=Request.Form("CoAuteur2Titre")
CoAuteur2Courriel=Request.Form("CoAuteur2Courriel")
CoAuteur3Nom=Request.Form("CoAuteur3Nom")
CoAuteur3Prenom=Request.Form("CoAuteur3Prenom")
CoAuteur3Titre=Request.Form("CoAuteur3Titre")
CoAuteur3Courriel=Request.Form("CoAuteur3Courriel")
Proposition=Request.Form("Proposition")
ResumeProposition=Request.Form("ResumeProposition")
Restrictions=Request.Form("Restrictions")
SiteWeb=Request.Form("SiteWeb")
NoteSpeciale=Request.Form("NoteSpeciale")
Toto=Request.Form("Conference")
TypeConference=Request.Form("TypeConference")
LocalNumber=Request.Form("LocalNumber")
Langue=Request.Form("Langue")
Transmis = "Non"
ModifieParNous = "Non"
TransmisA = "Gilles Picard"
if Toto < 10 then
Conference=" "&Request.Form("Conference")
else
Conference=Request.Form("Conference")
end if
sql = "insert into inscriptions (" &_
	   	"AuteurNom," &_
	   	"AuteurPrenom," &_
	   	"AuteurTitre," &_
	   	"AuteurCourriel," &_
		"AuteurCie," &_
		"AuteurDept," &_
		"AuteurAdr," &_
		"AuteurVille," &_
		"AuteurProv," &_
		"AuteurPays," &_
		"AuteurZip," &_
		"AuteurTel," &_
		"AuteurFax," &_
	   	"CoAuteur1Nom," &_
	   	"CoAuteur1Prenom," &_
	   	"CoAuteur1Titre," &_
	   	"CoAuteur1Courriel," &_
	   	"CoAuteur2Nom," &_
	   	"CoAuteur2Prenom," &_
	   	"CoAuteur2Titre," &_
	   	"CoAuteur2Courriel," &_
	   	"CoAuteur3Nom," &_
	   	"CoAuteur3Prenom," &_
	   	"CoAuteur3Titre," &_
	   	"CoAuteur3Courriel," &_
		"Proposition," &_
		"ResumeProposition," &_
		"Restrictions," &_
		"SiteWeb," &_
	   	"NoteSpeciale," &_
	   	"Langue," &_		
	   	"Conference," &_				
	   	"TypeConference," &_
		"LocalNumber,"&_				
	   	"Transmis," &_
	   	"TransmisA," &_										
	   	"ModifieParNous)" &_		
	   " VALUES ( "
 sql = sql & CheckString(AutPrincNom,",")
 sql = sql & CheckString(AutPrincPrenom,",")
 sql = sql & CheckString(AutPrincTitre,",")
 sql = sql & CheckString(AutPrincCourriel,",")
 sql = sql & CheckString(AutPrincCie,",")
 sql = sql & CheckString(AutPrincDept,",")
 sql = sql & CheckString(AutPrincAdr,",")
 sql = sql & CheckString(AutPrincVille,",")
 sql = sql & CheckString(AutPrincProv,",")
 sql = sql & CheckString(AutPrincPays,",")
 sql = sql & CheckString(AutPrincZip,",")
 sql = sql & CheckString(AutPrincTel,",")
 sql = sql & CheckString(AutPrincFax,",")
 sql = sql & CheckString(CoAuteur1Nom,",")
 sql = sql & CheckString(CoAuteur1Prenom,",")
 sql = sql & CheckString(CoAuteur1Titre,",")
 sql = sql & CheckString(CoAuteur1Courriel,",")
 sql = sql & CheckString(CoAuteur2Nom,",")
 sql = sql & CheckString(CoAuteur2Prenom,",")
 sql = sql & CheckString(CoAuteur2Titre,",")
 sql = sql & CheckString(CoAuteur2Courriel,",")
 sql = sql & CheckString(CoAuteur3Nom,",")
 sql = sql & CheckString(CoAuteur3Prenom,",")
 sql = sql & CheckString(CoAuteur3Titre,",")
 sql = sql & CheckString(CoAuteur3Courriel,",")
 sql = sql & CheckString(Proposition,",")
 sql = sql & CheckString(ResumeProposition,",")
 sql = sql & CheckString(Restrictions,",")
 sql = sql & CheckString(SiteWeb,",")
 sql = sql & CheckString(NoteSpeciale,",")
 sql = sql & "'"+Langue+"','"
 sql = sql & +""+Conference+"','"
 sql = sql & +""+TypeConference+"','"
 sql = sql & +""+LocalNumber+"','"
 sql = sql & +""+Transmis+"','"
 sql = sql & +""+TransmisA+"','"  
 sql = sql & ModifieParNous+"')"

  Set Conn = Server.CreateObject("ADODB.Connection")
  Set RS = Server.CreateObject("ADODB.RecordSet")

  Conn.Open "aca2009"

 Conn.Execute(sql)
 'response.write(sql)

  Conn.Close
  set rs = nothing
  set Conn = nothing
'response.end
%>


<h2><i><b>La proposition est enregistrée avec succès.</b></i></h2> 



</body>
</html>
