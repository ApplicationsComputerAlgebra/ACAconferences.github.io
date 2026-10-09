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
<%
Set Conn = Server.CreateObject("ADODB.Connection")
   Set RS = Server.CreateObject("ADODB.RecordSet")
  Conn.Open "Time2004"
  sql = "update Inscriptions SET Transmis='"+request("txtTransmis")+"' where noinsc = "+request("noinsc")
    set rs = Conn.Execute(sql)
  	Conn.Close
  set rs = nothing
  set Conn = nothing
%>
<html>
<head>
<title>Transmettre la proposition</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="./stylepropose.css" type="text/css" rel="stylesheet">
</head>
<body>


<%
noinsc=Request.Form("NoInsc")
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
SiteWeb=Request.Form("SiteWeb")
NoteSpeciale=Request.Form("NoteSpeciale")
Conference=Request.Form("txtConference")
TypeConference=Request.Form("TypeConference")
Langue=Request.Form("Langue")
%>
<%

Dim MyCDONTSMail2 
Set MyCDONTSMail2 = CreateObject("CDONTS.NewMail") 

if Len(CoAuteur1Courriel)>2 then mailAuteur1=" ("+CoAuteur1Courriel+")" else mailAuteur1=""
if Len(CoAuteur2Courriel)>2 then mailAuteur2=" ("+CoAuteur2Courriel+")" else mailAuteur2=""
if Len(CoAuteur3Courriel)>2 then mailAuteur3=" ("+CoAuteur3Courriel+")" else mailAuteur3=""

if (TypeConference = "25" or TypeConference = "50") then
	texte1= "Lecture : "
else
	texte1= "Workshop : "
end if

MyCDONTSMail2.Subject="Proposal number "+Noinsc+" , TIME-2004 , received from "+AutPrincPreNom+" "+AutPrincNom+" "
MyCDONTSMail2.Body = "Dear Co-Chairs,"+chr(13)+chr(13)+"This is a copy of a proposal we have received for the TIME-2004 Symposium." +_
+chr(13)+"Proposal number: "+Noinsc+"."+chr(13)+"This unique number identifies this proposal and can be used to communicate with me."+chr(13)+chr(13)+"Thank you, Kathleen Pineau."+_
+chr(13)+"-----------------------------------------------------"+_
+chr(13)+chr(13)+chr(13)+"Main presenter : "+chr(13)+"     "+AutPrincPrenom+" "+AutPrincNom+" ("+AutPrincCourriel+")"+chr(13)+chr(13) +_
+"Co-presenter(s) : "+chr(13)+"     " +_
+CoAuteur1Prenom +" "+CoAuteur1Nom+" "+mailAuteur1+chr(13)+"     " +_
+CoAuteur2Prenom +" "+CoAuteur2Nom+" "+mailAuteur2+chr(13)+"     " +_
+CoAuteur3Prenom +" "+CoAuteur3Nom+" "+mailAuteur3+_
+chr(13)+chr(13)+"Main presenter's  info : " +_
+chr(13)+"     "+AutPrincCie +_
+chr(13)+"     "+AutPrincDept +_
+chr(13)+"     "+AutPrincAdr +_
+chr(13)+"     "+AutPrincVille +_
+chr(13)+"     "+AutPrincProv +_
+chr(13)+"     "+AutPrincPays +_
+chr(13)+"     "+AutPrincZip +_
+chr(13)+"     "+AutPrincTel +_
+chr(13)+"     "+AutPrincFax +_
+chr(13)+chr(13)+"Proposal Title : " +_
+chr(13)+"     "+Proposition +_
+chr(13)+chr(13)+"Submitted for :" +_
+chr(13)+"     "+Conference +_
+chr(13)+chr(13)+"Type of presentation : " +_
+chr(13)+"     "+texte1+ TypeConference+" minutes" +_
+chr(13)+chr(13)+"Related website : " +_
+chr(13)+"     "+SiteWeb +_
+chr(13)+chr(13)+"Abstract : " +_
+chr(13)+chr(13)+Request.Form("ResumeProposition") +_
+chr(13)+chr(13)+"Special requests : " +_
+chr(13)+chr(13)+NoteSpeciale

MyCDONTSMail2.From = "kathleen.pineau@etsmtl.ca"

if Conference = "ACDCA" then
MyCDONTSMail2.To = "vlasta.kokol@uni-mb.si;b.kutzler@aon.at"
'MyCDONTSMail2.To = "gpicard@seg.etsmtl.ca"

else
MyCDONTSMail2.To = "michel.beaudin@etsmtl.ca;nojo.boehm@pgv.at"
'MyCDONTSMail2.To = "gilles.picard@etsmtl.ca"

end if

'MyCDONTSMail2.BCC = "gilles.picard@etsmtl.ca"
x = MyCDONTSMail2.Send
set MyCDONTSMail2 = Nothing
%>

<% if x=0 then%>
Le courriel à été transmis avec succès. Cliquez sur le bouton 'Précédent' de votre navigateur pour revenir à la page de Description.
<%else%>
Une erreur est survenue, le courriel n'a pas été acheminé correctement!
<%end if%>

</body>
</html>
