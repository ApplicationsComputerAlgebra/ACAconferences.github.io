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
<title>MAJ Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
p1 = request("id")
Set Conn = Server.CreateObject("ADODB.Connection")
   Set RS = Server.CreateObject("ADODB.RecordSet")
  Conn.Open "aca2009"
  sql = "update Register SET accepte='"+request("txtAccepter")+"', comments="+CheckString(request("comments"),"")+", ConfAccepte='"+request("ConfAccepte")+"', CongNom="+CheckString(request("CongNom"),"")+", CongPrenom="+CheckString(request("CongPrenom"),"")+", PaieDate='"+request("PaieDate")+"', CongTitre="+CheckString(request("CongTitre"),"")+", Acc1Titre="+CheckString(request("Acc1Titre"),"")+", Acc1Nom="+CheckString(request("Acc1Nom"),"")+", Acc1Prenom="+CheckString(request("Acc1Prenom"),"")+", CongCourriel='"+request("CongCourriel")+"', Acc2Titre="+CheckString(request("Acc2Titre"),"")+", Acc2Nom="+CheckString(request("Acc2Nom"),"")+", CongCie="+CheckString(request("CongCie"),"")+", Acc2Prenom="+CheckString(request("Acc2Prenom"),"")+", CongDept="+CheckString(request("CongDept"),"")+", CongAdr="+CheckString(request("CongAdr"),"")+" , Acc3Titre="+CheckString(request("Acc3Titre"),"")+", Acc3Nom="+CheckString(request("Acc3Nom"),"")+", CongVille="+CheckString(request("CongVille"),"")+", Acc3Prenom="+CheckString(request("Acc3Prenom"),"")+", CongProv="+CheckString(request("CongProv"),"")+", CongPays="+CheckString(request("CongPays"),"")+", CongZip='"+request("CongZip")+"', CongTel='"+request("CongTel")+"', CongFax='"+request("CongFax")+"', langue='"+request("langue")+"', Total='"+request("Total")+"', nbAcc='"+request("nbAcc")+"', Cocktail='"+request("Cocktail")+"', Banquet='"+request("Banquet")+"', Choix1="+CheckString(request("Choix1"),"")+", Choix2="+CheckString(request("Choix2"),"")+", Choix3="+CheckString(request("Choix3"),"")+", ModePaiement="+CheckString(request("ModePaiement"),"")+", CarteNo="+CheckString(request("CarteNo"),"")+", CarteExp="+CheckString(request("CarteExp"),"")+", DemandeSpeciale="+CheckString(request("DemandeSpeciale"),"")+", Commentaires="+CheckString(request("Commentaires"),"")+"  where noinsc = "+request("noinsc")
    'response.write(sql)
	'response.end
	
	set rs = Conn.Execute(sql)
  	Conn.Close
  set rs = nothing
  set Conn = nothing
  Response.Write("Enregistrement Modifié")
  Response.Redirect("lstRegister.asp")
%>
</body>
</html>
