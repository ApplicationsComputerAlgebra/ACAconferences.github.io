<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Description de l'inscription</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>
<link href="../Cstyle_ACA2009.css" type="text/css" rel="stylesheet">
<%
Set Conn = Server.CreateObject("ADODB.Connection")
Set RS = Server.CreateObject("ADODB.RecordSet")
Conn.Open "aca2009"
sql = "select * from register where noinsc ="+Request("id")
   set rs = Conn.Execute(sql)
   monnaye= " $ Ca"
	CongNom=rs("CongNom")
	CongPrenom=rs("CongPrenom")
	NoInsc=rs("noInsc")
	datela=now()
%>
<script>
function EffacerEnregistrement()
{
  var form = document.forms[0];
	reponse = confirm("êtes-vous certain ?");	

	if (reponse==true)
		window.location.href="del_register.asp?id="+form.noinsc.value;
}
function MajEnregistrement()
{
  var form = document.forms[0];
  	form.submit();
}
function AccepterRefuser()
{
  var form = document.forms[0];
	if (form.txtAccepter.value=="Non")
		{
			form.txtAccepter.value="Oui";
		}
	else
		{
			form.txtAccepter.value="Non";
		}
}
</script>

<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">
<form name="DescRegister" action="Maj_Register.asp" method="post">
<input type="hidden" name="noinsc" value="<%=NoInsc%>">

  <table WIDTH="90%" border="1"  CELLPADDING="3" CELLSPACING="1">
    <tr>
      <td colspan="2" class="NomChamps" align="center"><b>Congressiste</b></td>
      <td></td>
      <td colspan="2" class="NomChamps" align="center"><b>Accompagnateur(s)</b></td>
    </tr>
    <tr> 
      <td width="155" class="NomChamps">Titre :</td>
      <td width="200"><input type="text" name="CongTitre" size="4" value="<%=rs("CongTitre")%>"></td>
      <td></td>
      <td width="375" class="NomChamps" colspan="2"><input type="text" name="Acc1Titre" size="4" value="<%=rs("Acc1Titre")%>">&nbsp;
		Nom : <input type="text" name="Acc1Nom" size="30" value="<%=rs("Acc1Nom")%>">
		</td>
      
    </tr>
    <tr> 
      <td class="NomChamps">Nom :</td>
      <td><input type="text" name="CongNom" size="50" value="<%=rs("CongNom")%>"></td>
      <td></td>
      <td class="NomChamps">Prénom :</td>
      <td><input type="text" name="Acc1Prenom" size="37" value="<%=rs("Acc1Prenom")%>"></td>
    </tr>
    <tr> 
      <td class="NomChamps">Prénom :</td>
      <td><input type="text" name="CongPrenom" size="50" value="<%=rs("CongPrenom")%>">
      <td></td>
      <td class="NomChamps"></td>
      <td></td>
    </tr>
    <tr> 
      <td class="NomChamps">Courriel :</td>
      <td><input type="text" name="CongCourriel" size="50" value="<%=rs("CongCourriel")%>"></td>
      <td></td>
      <td width="375" class="NomChamps" colspan="2"><input type="text" name="Acc2Titre" size="4" value="<%=rs("Acc2Titre")%>">&nbsp;
		Nom : <input type="text" name="Acc2Nom" size="30" value="<%=rs("Acc2Nom")%>"></td>
    </tr>
    <tr> 
      <td class="NomChamps">Institution ou cie :</td>
      <td><input type="text" name="CongCie" size="50" value="<%=rs("CongCie")%>"></td>
      <td></td>
      <td class="NomChamps">Prénom :</td>
      <td><input type="text" name="Acc2Prenom" size="37" value="<%=rs("Acc2Prenom")%>"></td>
    </tr>
    <tr> 
      <td class="NomChamps">Département :</td>
      <td><input type="text" name="CongDept" size="50" value="<%=rs("CongDept")%>"></td>
      <td></td>
      <td class="NomChamps"></td>
      <td></td>
    </tr>
    <tr> 
      <td class="NomChamps">Adresse :</td>
      <td><input type="text" name="CongAdr" size="50" value="<%=rs("CongAdr")%>"></td>
      <td></td>
      <td width="375" class="NomChamps" colspan="2"><input type="text" name="Acc3Titre" size="4" value="<%=rs("Acc3Titre")%>">&nbsp;
		Nom : <input type="text" name="Acc3Nom" size="30" value="<%=rs("Acc3Nom")%>"></td>
    </tr>
    <tr> 
      <td class="NomChamps">Ville :</td>
      <td><input type="text" name="CongVille" size="50" value="<%=rs("CongVille")%>"></td>
      <td></td>
      <td class="NomChamps">Prénom :</td>
      <td><input type="text" name="Acc3Prenom" size="37" value="<%=rs("Acc3Prenom")%>"></td>
    </tr>
    <tr> 
      <td class="NomChamps">État/Province :</td>
      <td><input type="text" name="CongProv" size="50" value="<%=rs("CongProv")%>"></td>
      <td></td>
      <td class="NomChamps"></td>
      <td></td>
    </tr>
    <tr> 
      <td class="NomChamps">Pays :</td>
      <td><input type="text" name="CongPays" size="50" value="<%=rs("CongPays")%>"></td>
      <td></td>
      <td colspan="2"><FONT COLOR="#990000"><B>Numéro d'inscription : &nbsp;&nbsp;</FONT><%=rs("NoInsc")%></B> </td>
      
    </tr>
	<tr>
		<td class="NomChamps">Code postal :</td>
		<td><input type="text" name="CongZip" size="50" value="<%=rs("CongZip")%>"></td>
		<td></td>
		<td colspan="2"><FONT COLOR="#990000"><B>Valide : &nbsp;&nbsp;</FONT> <input type="text" name="ConfAccepte" value="<%=rs("ConfAccepte")%>" size="6"></B> </td>
      
	</tr>
    <tr> 
      <td class="NomChamps">Téléphone :</td>
      <td><input type="text" name="CongTel" size="50" value="<%=rs("CongTel")%>"></td>
      <td></td>
       <td colspan="2"><FONT COLOR="#990000"><B>Date du paiement : </B></FONT> <input type="text" name="PaieDate"  value="<%=rs("PaieDate")%>" size="10"></td>
    </tr>
    <tr> 
      <td class="NomChamps">Télécopieur :</td>
      <td><input type="text" name="CongFax" size="50" value="<%=rs("CongFax")%>"></td>
      <td></td>
      <td colspan="2" align="center"><input type="Button" name="btAccepter" value="confirmer paiement" onClick="AccepterRefuser()"></td>
	  
    </tr>
    <tr> 
      <td class="NomChamps">Langue :</td>
      <td><input type="text" name="langue" value="<%=rs("langue")%>" size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#990000"><B>Cocktail :</B></FONT>  <input type="text" name="Cocktail" value="<%=rs("Cocktail")%>" size="5"></td>
      <td align="center"></td>
      <td class="NomChamps" colspan="2">Paiement validé : &nbsp;<input type="text" name="txtAccepter" readonly="true" value="<%=rs("accepte")%>" size="10"></td>
     
    </tr>
 	 <tr> 
      <td class="NomChamps" nowrap>Accompagnateur(s)</td>
	  <td><input type="text" name="nbAcc" value="<%=rs("nbAcc")%>" size="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#990000"><B>Banquet :</B></FONT>  <input type="text" name="Banquet" value="<%=rs("Banquet")%>" size="5"></td>
	  <td></td>
	  <td colspan="2"><B><FONT COLOR="#990000">Date de l'inscripton : </FONT><%=rs("DateInsc")%></B></td>
	  
    </tr> 

 	 <tr> 
      <td class="NomChamps">Montant</td>
	  <td colspan="4"><input type="text" name="Total" value="<%=cstr(rs("Total"))%>" size="5"> $Ca&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT COLOR="#990000"><B>Choix pour l'excursion :</B></FONT> Bus Tour <input type="text" name="Choix1" value="<%=rs("Choix1")%>" size="5">&nbsp;&nbsp; Chinatown <input type="text" name="Choix2" value="<%=rs("Choix2")%>" size="5">&nbsp;&nbsp; Old Montreal <input type="text" name="Choix3" value="<%=rs("Choix3")%>" size="5"></td>
    </tr> 

 	 <tr> 
      <td class="NomChamps">Mode de paiement :</td>
	  <td colspan="4" class="NomChamps">
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="text" name="ModePaiement" value="<%=rs("ModePaiement")%>" size="10">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="CarteNo" value="<%=rs("CarteNo")%>" size="20">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="CarteExp" value="<%=rs("CarteExp")%>" size="10">
	  </td>
    </tr>
	
	<tr>
		<td colspan="5" class="NomChamps">Demandes spéciales pour les menus : </td>
	</tr>
	
	<tr>
		<td colspan="5"><textarea name="DemandeSpeciale" rows="4" cols="115"><%=rs("DemandeSpeciale")%></textarea></td>
	</tr>
	
	<tr>
		<td colspan="5" class="NomChamps">Commentaires du délégué : </td>
	</tr>
	
	<tr>
		<td colspan="5"><textarea name="Commentaires" rows="6" cols="115"><%=rs("Commentaires")%></textarea></td>
	</tr>
	
    
  <tr> 
      <td colspan="5"><input type="button" name="btDelete" value="Effacer l'enregistrement" onClick="EffacerEnregistrement()"> 
        &nbsp; 
        <input type="button" name="btMaj" value="Sauvegarder les modifications" onClick="MajEnregistrement()">
      </td>
    </tr>
	    <tr> 
      <td class="NomChamps">Remarques :</td>
      <td colspan="5"><textarea name="Comments" cols="80" rows="3"><%=rs("Comments")%></textarea></td>
    </tr>


  </table>
  <%
Conn.Close
  set rs = nothing
  set Conn = nothing	
%>
</form>

</body>
</html>
