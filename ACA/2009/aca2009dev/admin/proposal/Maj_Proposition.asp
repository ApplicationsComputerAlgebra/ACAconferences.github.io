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
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
p1 = request("id")
Set Conn = Server.CreateObject("ADODB.Connection")
   Set RS = Server.CreateObject("ADODB.RecordSet")
  Conn.Open "aca2009"
  sql = "update Inscriptions SET commentaires='"+request("commentaires")+"', Jour='"+request("Jour")+"', ConfLocal='"+request("ConfLocal")+"', Heure='"+request("Heure")+"', LocalNumber='"+request("LocalNumber")+"', AuteurTitre="+CheckString(request("txtAutPrincTitre"),"")+", CoAuteur1Titre="+CheckString(request("CoAuteur1Titre"),"")+", AuteurNom="+CheckString(request("AutPrincNom"),"")+", CoAuteur1Nom="+CheckString(request("CoAuteur1Nom"),"")+", AuteurPrenom="+CheckString(request("AutPrincPrenom"),"")+", CoAuteur1Prenom="+CheckString(request("CoAuteur1Prenom"),"")+", AuteurCourriel="+CheckString(request("AutPrincCourriel"),"")+", CoAuteur3Courriel="+CheckString(request("CoAuteur3Courriel"),"")+", AuteurCie="+CheckString(request("AutPrincCie"),"")+", CoAuteur2Titre="+CheckString(request("CoAuteur2Titre"),"")+", AuteurDept="+CheckString(request("AutPrincDept"),"")+", CoAuteur2Nom="+CheckString(request("CoAuteur2Nom"),"")+", AuteurAdr="+CheckString(request("AutPrincAdr"),"")+", CoAuteur2Prenom="+CheckString(request("CoAuteur2Prenom"),"")+", AuteurVille="+CheckString(request("AutPrincVille"),"")+", CoAuteur2Courriel="+CheckString(request("CoAuteur2Courriel"),"")+", AuteurProv="+CheckString(request("AutPrincProv"),"")+", CoAuteur3Titre="+CheckString(request("CoAuteur3Titre"),"")+", AuteurPays="+CheckString(request("AutPrincPays"),"")+", CoAuteur3Nom="+CheckString(request("CoAuteur3Nom"),"")+", AuteurZip="+CheckString(request("AutPrincZip"),"")+", CoAuteur3Prenom="+CheckString(request("CoAuteur3Prenom"),"")+", AuteurTel="+CheckString(request("AutPrincTel"),"")+", CoAuteur1Courriel="+CheckString(request("CoAuteur1Courriel"),"")+", AuteurFax="+CheckString(request("AutPrincFax"),"")+", SiteWeb="+CheckString(request("SiteWeb"),"")+", conference="+CheckString(request("txtConference"),"")+", TypeConference="+CheckString(request("TypeConference"),"")+", ModifieParNous="+CheckString(request("txtModifieParNous"),"")+", Proposition="+CheckString(request("Proposition"),"")+", Restrictions="+CheckString(request("Restrictions"),"")+", ResumeProposition="+CheckString(request("ResumeProposition"),"")+", NoteSpeciale="+CheckString(request("NoteSpeciale"),"")+", langue="+CheckString(request("langue"),"")+", accepte="+CheckString(request("txtAccepter"),"")+" where noinsc = "+request("noinsc")
    set rs = Conn.Execute(sql)
  	Conn.Close
  set rs = nothing
  set Conn = nothing
  Response.Write("Enregistrement Modifié")
  Response.Redirect("lstProposition.asp")
%>
</body>
</html>
