
<html>
<head>
<title>ACA2009 Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<link href="style_ACA2009-divers.css" rel="stylesheet" type="text/css">
</head>
<script>
function isChecked(formname,checkname)
 {
    var el_collection=eval("document.forms[0]."+checkname)
               for (c=0;c<el_collection.length;c++)
                     if(el_collection[c].checked)
                           return true;
	return false;
}

function valueRadio(formname,checkname)
 {
    var el_collection=eval("document.forms[0]."+checkname)
               for (c=0;c<el_collection.length;c++)
                     if(el_collection[c].checked)
                           return el_collection[c].value;
	return "vide";
}

function check_field(fieldValue, fieldSizeMin, fieldFormat, fieldName)
{
  var msg=""

	  if(fieldFormat =="TXT" && fieldValue.length < fieldSizeMin)
      msg = "Field '"+fieldName+"' must be at least "+fieldSizeMin+" characters long.";

 if(msg=="" && fieldFormat == "CHECK" && !(isChecked("Register",fieldValue)))
     msg = "Field '"+fieldName+"' must be selected";

  if(msg=="" && (fieldFormat == "NUM" || fieldFormat == "MONTH" || fieldFormat == "YEAR" || fieldFormat == "DAY") 
			 && forceNum(fieldValue,"") == 0)
      msg = "Field '"+fieldName+"' must be numeric.";

  if(msg=="" && fieldFormat == "MONTH" && (fieldValue < 1 || fieldValue > 12))
      msg = "Le champs '"+fieldName+"' doit être entre 1 et 12.";

  if(msg=="" && fieldFormat == "YEAR" && (fieldValue < 2000))
      msg = "Le champs '"+fieldName+"' doit être plus grand que 2002.";

  if(msg=="" && fieldFormat == "DAY" && (fieldValue < 1 || fieldValue > 31))
      msg = "Le champs '"+fieldName+"' doit être entre 1 et 31.";

  if(msg!="")
    alert(msg);

  return (msg=="");
}

function validate()
{
  var form = document.forms[0];
//		alert(valueRadio("Register","Paiement"));
  if(!check_field(form.CongNom.value, 2, "TXT", "Delegate's Last Name")) return;
  if(!check_field(form.CongPrenom.value, 2, "TXT", "Delegate's First Name")) return;
  if(!check_field(form.CongCourriel.value, 8, "TXT", "Delegate's e-mail")) return;
  if(!check_field(form.CongCie.value, 2, "TXT", "Delegate's Institution or Company")) return;
  if(!check_field(form.CongAdr.value, 2, "TXT", "Delegate's address")) return;
  if(!check_field(form.CongVille.value, 2, "TXT", "Delegate's City")) return;
  if(!check_field(form.CongPays.value, 2, "TXT", "Delegate's Country")) return;
  if(!check_field("banquet", 2, "CHECK", "Banquet")) return;
  if(!check_field("cocktail", 2, "CHECK", "Welcome Reception")) return;
 if(!check_field("Paiement", 2, "CHECK", "Payment method")) return;
if(valueRadio("Register","Paiement")=="Credit")
{
  if(form.CarteType.selectedIndex=="0")
  {
  alert("You must select a credit card");
  return;
  }
  else
  {
	  if(!check_field(form.CarteNo.value, 15, "TXT", "Credit card number")) return;
		  if(form.exp_mois.selectedIndex=="0")
		  {
		   alert("you must enter the expiration month");
		   return;
		  }
		  if(form.exp_annee.selectedIndex=="0")
		  {
		   alert("you must enter the expiration year");
		   return;
		  }
  }
    
  if(!check_field(form.exp_mois.selectedIndex,"EXP","you must enter the credit card expiration")) return;
}
else
  {
  (form.CarteNo.value = "");
  (form.exp_mois.selectedIndex="0");
  (form.exp_annee.selectedIndex="0");
  (form.CarteType.selectedIndex="0")
  }
  form.submit();
}
</SCRIPT>

<BODY BGCOLOR="#f9fbf1" TEXT="#000000" LINK="#000000" VLINK="#993300" ALINK="#993300">
<form name="Register" action="./ConfirmRegister.asp" method="post">
  <table width="90%" border="0">
    <input type="hidden" name="langue" value="EN">
    <tr> 
      <td colspan="6" align="center"><h2><B><i>ACA2009 Conference Registration Form</i></B></h2></td>
    </tr>
	
    <tr> 
      <td colspan="6" height="15"></td>
    </tr>
    <tr> 
      <td colspan="6"><b>ACA2009, June 25-28, Montréal, Canada</b></td>
	</tr>
	<tr> 
      <td colspan="6">See: <a href="http://aca2009.etsmtl.ca">ACA2009</a> for more information on activities, schedule and Friday's excursion possibilities.</td>
	</tr>
	    <tr> 
      <td colspan="6" height="15"></td>
    </tr>

	<tr> 
      <td colspan="6">If you wish to send your registration by mail, use the <B><A HREF="register.doc" TARGET="_top">Microsoft Word version</A></B> or the <B><A HREF="register.pdf" TARGET="_top">PDF version </A></B> of the conference registration form.<BR>&nbsp;</td>
	</tr>
	<tr><td colspan="6">
	In the <b>Accompanying Person(s)</b> column, on the right, list the names of all persons accompanying the conference delegate at Wednesday’s welcome reception and Saturday’s banquet dinner but not attending the scientific program. If you enter an accompanying person in the right column, the system will automaticaly add the corresponding fees to the total amount payable.
	</td></tr>
	<tr><td colspan="2"></td><td colspan="4"></td></tr>
	
    <tr> 
      <td colspan="6" height="15"></td>
    </tr>
     <tr> 
      <td colspan="6" align="center" class="Titre2">Conference Delegate Information</td>
    </tr>
    <tr> 
      <td colspan="3" align="center" class="Titre3">Delegate</td>
      <td colspan="3" align="center" class="Titre3">Accompanying Person(s)</td>
    </tr>
    <tr> 
      <td width="11%">Title :</td>
      <td width="1%">&nbsp;</td>
      <td width="29%"> <input name="txtCongTitre" type="text" size="4" maxlength="4"></td>
      <td width="12%">&nbsp;</td>
      <td width="6%">Title:</td>
      <td width="41%"><input name="Acc1Titre" type="text" size="4" maxlength="4"></td>
    </tr>
    <tr> 
      <td>Last Name:<br>
      (Surname)</td>
      <td><font color="#FF0000">*</font></td>
      <td><input name="CongNom" type="text" size="40" maxlength="40"></td>
      <td>&nbsp;</td>
      <td>Last name:</td>
      <td><input name="Acc1Nom" type="text" size="40" maxlength="40"></td>
    </tr>
    <tr> 
      <td>First name:</td>
      <td><font color="#FF0000">*</font></td>
      <td><input name="CongPrenom" type="text" size="40" maxlength="40"></td>
      <td>&nbsp;</td>
      <td>First
        name:</td>
      <td><input name="Acc1Prenom" type="text" size="40" maxlength="40"></td>
    </tr>
    <tr> 
      <td>E-mail:</td>
      <td><font color="#FF0000">*</font></td>
      <td><input name="CongCourriel" type="text" size="40" maxlength="100"></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>Institution or<br>
        company:</td>
      <td><font color="#FF0000">*</font></td>
      <td><input name="CongCie" type="text" size="40" maxlength="100"></td>
      <td>&nbsp;</td>
      <td>Title:</td>
      <td><input type="text" name="Acc2Titre" size="4" maxlength="4"></td>
    </tr>
    <tr> 
      <td>Department:</td>
      <td>&nbsp; </td>
      <td><input name="CongDept" type="text" size="40" maxlength="100"></td>
      <td>&nbsp;</td>
      <td>Last name:</td>
      <td><input type="text" name="Acc2Nom" size="40" maxlength="40"></td>
    </tr>
    <tr> 
      <td>Address:</td>
      <td><font color="#FF0000">*</font></td>
      <td> <input name="CongAdr" type="text" size="40" maxlength="100"> </td>
      <td>&nbsp;</td>
      <td>First name:</td>
      <td><input type="text" name="Acc2Prenom" size="40" maxlength="40"></td>
    </tr>
    <tr> 
      <td>City:</td>
      <td><font color="#FF0000">*</font></td>
      <td> <input name="CongVille" type="text" size="40" maxlength="40"> </td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>State/Province:</td>
      <td>&nbsp;</td>
      <td> <input name="CongProv" type="text" size="40" maxlength="40"> </td>
      <td>&nbsp;</td>
      <td>Title:</td>
      <td><input type="text" name="Acc3Titre" size="4" maxlength="4"></td>
    </tr>
    <tr> 
      <td>Country:</td>
      <td><font color="#FF0000">*</font></td>
      <td> <input name="CongPays" type="text" size="40" maxlength="40"> </td>
      <td>&nbsp;</td>
      <td>Last name:</td>
      <td><input type="text" name="Acc3Nom" size="40" maxlength="40"></td>
    </tr>
    <tr> 
      <td>Zip or Postal Code:</td>
      <td>&nbsp;</td>
      <td><input name="CongZip" type="text" size="20" maxlength="20"></td>
      <td>&nbsp;</td>
      <td>First name:</td>
      <td><input type="text" name="Acc3Prenom" size="40" maxlength="40"></td>
    </tr>
    <tr> 
      <td>Tel.:</td>
      <td>&nbsp;</td>
      <td><input name="CongTel" type="text" size="40" maxlength="40"></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>Fax:</td>
          <td>&nbsp;</td>
          <td><input name="CongFax" type="text" size="20" maxlength="20"></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
	<tr> 
      <td colspan="6"></td>
    </tr>
	 <tr> 
      <td colspan="6"><HR></td>
    </tr>
    <tr> 
      <td colspan="6">In order to help us plan sufficient resources, we ask that
      you fill in the following:</td>
    </tr>
    <tr> 
      <td colspan="6"></td>
    </tr>
    <tr><td colspan="3">I plan to attend Wednesday’s Welcome Reception</td>
	<td colspan="3"><B>YES</B>
	  <input type="radio" name="cocktail" value="OUI">&nbsp;&nbsp;
	  <B>NO</B>
	  <input type="radio" name="cocktail" value="NON"></td>
    </tr>
 <tr> 
      <td colspan="6" height="15"></td>
    </tr>
	
		<tr><td colspan="3">I plan to attend Saturday’s banquet dinner</td>
	<td colspan="3"><B>YES</B>
	  <input type="radio" name="banquet" value="OUI">&nbsp;&nbsp;	  
	  <B>NO</B>
	  <input type="radio" name="banquet" value="NON"></td>
    </tr>
	    <tr>

<td colspan="6"><strong>Special menu needs:</strong></td>
	   	<tr><td colspan="6"></td></tr>
	<tr><td colspan="6">Vegetarian menus or menus for those with food allergies
	    are available. Indicate any special needs of this sort in the following
	    space.</td>
	</tr>
	
    <tr> 
      <td colspan="6"><textarea name="DemandeSpeciale" cols="80" rows="4"></textarea></td>
    </tr>

	<tr><td colspan="6"></td></tr>
	<tr><td colspan="6"><HR></td></tr>
		
	<tr> 
      <td colspan="6" height="15"></td>
    </tr>
		 
      <td colspan="6"><b>Friday's excursion is optionnal</b>. If you are interested in going on one of the excursions, simply indicate the appropriate number of persons in the boxes below. (Don't forget accompanying persons. If you are alone, choose 1 in the menu on the right of your choice of excursion) The correspondent amount will be added to your registration fees. </td>
    </tr>
   	<tr><td colspan="2"></td><td colspan="4">
	
			<table border="1">
    <tr>
      <td><b>Your choice of excursion</b></td>
      <td><b>Choose number of participants</b></td>
    </tr>
    <tr>
      <td><strike>Montréal Bus Tour (55 $Cdn per person)</strike><br>Cancelled, not enough inscriptions.</td>
      <td align="center" valign="middle">
	<select name="choix_mtl"><option selected>0</option>
	</select></td>
    </tr>
    <tr>
      <td>Lunch and walking tour of Chinatown (35 $Cdn per person)</td>
      <td align="center" valign="middle">
	<select name="choix_sucrerie"><option selected>0</option><option>1</option><option>2</option><option>3</option><option>4</option>
	</select></td>
    </tr>
    <tr>
      <td>Walking tour of Historical Old Montreal (15 $Cdn per person)</td>
      <td align="center" valign="middle">
	<select name="choix_histoire"><option selected>0</option><option>1</option><option>2</option><option>3</option><option>4</option>
	</select></td>
    </tr>
</table>
			</td></tr>	
	<tr><td colspan="6"></td></tr>

	
	<td colspan="6"><HR></td>


<tr>
<td colspan="6"><strong>Registration Fees:</strong></td>
</tr> 
	 <tr> 
      <td colspan="6">Registration fees for <b>conference delegates</b> cover
        admission to all presentations and conferences, lunch on Thursday and Saturday, coffee breaks, Wednesday’s welcome reception, and Saturday’s banquet dinner.</td>
    </tr>
    <tr> 
      <td colspan="6"></td>
    </tr>
	 <tr> 
      <td colspan="6">Registration fees for <b>accompanying persons</b> cover
        Wednesday’s welcome reception and Saturday’s banquet dinner.</td>
    </tr>   
<tr>
<td colspan="6">Payment must be in Canadian Dollars ($Cnd)</td>
</tr>
<tr><td colspan="6"></td></tr>
<tr>
<td colspan="6">Registration for conference delegate</td>
</tr>
<tr><td></td><td colspan="5">

Standard registration, until June 1<sup>st</sup>: 270 $Cdn (approx. 160 Euro, 220 US$)<br>
(will be 300 $Cnd after June 1<sup>st</sup>) </td>
</tr>
<tr><td colspan="6" align="right"></td></tr>
<tr><td colspan="6"></td></tr>
<tr><td colspan="6">Registration for accompanying person</td>
</tr>
<tr><td></td><td colspan="5">

Standard registration, until June 1<sup>st</sup>: 135 $Cdn (approx. 80 Euro, 110 US$)<br>
(will be 150 $Cnd after June 1<sup>st</sup>)</td>
</tr>
<tr><td colspan="6" align="right"></td></tr>
<tr><td colspan="6"></td></tr>
<tr><td></td><td colspan="5" align="right"></td></tr>
<tr><td colspan="6" height="15"></td></tr>
<tr><td colspan="6"><hr></td></tr>

<tr>
<td colspan="6"><b>Payment:</b></td>
</tr>
<tr><td colspan="6"></td></tr>
<tr><td colspan="6">Registration fees must be paid in Canadian Dollars. Confirmation
    of registration will be sent to you, by e-mail (or by letter), within 10
    days of receipt of payment. The delegate’s name and the
    mention ACA2009 must appear on all cheques or transfers. The delegate must
    cover any costs related to cheques or money transfers.</td>
</tr>
<tr><td colspan="6" height="15"></td></tr>
<tr><td colspan="6"><b>Select one of the following payment method.</b> After completing this form, use the submit button to access to the next page where you will be able to validate your information and <B>obtain your total amount of registration fees</B>. (You will be able to come back to this form to modify any information you wish). </td></tr>
<tr><td colspan="6" height="15"></td></tr>

<tr><td colspan="6"><input type="radio" name="Paiement" value="Credit">
<b>By credit card. (Select one of the following) :</b>&nbsp;
      <select name="CarteType"><option>Select card</option><option>Mastercard</option><option>Visa</option></select></td></tr>
<tr><td></td>
<td colspan="2">(payment will be charged in Canadian funds)</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td rowspan="3"><table width="135" border="0" cellpadding="2" cellspacing="0" title="Click to Verify - This site chose VeriSign SSL for secure e-commerce and confidential communications.">
<tr>
<td width="135" align="center" valign="top"><script src=https://seal.verisign.com/getseal?host_name=www3.etsmtl.ca&size=S&use_flash=NO&use_transparent=NO&lang=en></script><br />
<a href="http://www.verisign.com/ssl-certificate/" target="_blank"  style="color:#000000; text-decoration:none; font:bold 7px verdana,sans-serif; letter-spacing:.5px; text-align:center; margin:0px; padding:0px;">ABOUT SSL CERTIFICATES</a></td>
</tr>
</table></td>
</tr>
<tr><td></td><td colspan="2">Credit card number:</td><td><input type="text" name="CarteNo" maxlength="19"></td>
  <td>&nbsp;</td>
  </tr>
<tr><td></td><td colspan="2">Expiration date:</td><td><select name="exp_mois"><option>month</option><option>01</option><option>02</option><option>03</option>
<option>04</option><option>05</option><option>06</option><option>07</option><option>08</option><option>09</option><option>10</option><option>11</option><option>12</option></select>&nbsp;&nbsp;
<select name="exp_annee"><option>year</option><option>2009</option><option>2010</option><option>2011</option><option>2012</option><option>2013</option><option>2014</option></select></td>
  <td>&nbsp;</td>
  </tr>

<tr><td colspan="6"><input type="radio" name="Paiement" value="Transfer">
  <b>Direct transfer of the registration fees to the</b></td>
</tr>
<tr><td></td><td colspan="5">National Bank of Canada<br>
600, de la Gauchetière Street West<br>
Montréal, Québec, Canada<br>
H3B 4L3</td>
</tr>
<tr><td colspan="6"></td></tr>
<tr><td></td><td colspan="5">Payable to: École de technologie supérieure
    (ACA2009)<br>
Account number 00011-04-160-21<br>
Swift code: BNDCCAMMINT	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ABA: 026009797<br>
IBAN (RIB): 006000110416021
</td></tr>
<tr><td colspan="6"></td></tr>

<tr><td colspan="6"><input type="radio" name="Paiement" value="Cheque"><b>By Cheque, in Canadian funds, payable to:</b></td></tr>
<tr><td>&nbsp;</td><td colspan="5">École de technologie supérieure (ACA2009), <BR>and sent to:
</td></tr>
<tr><td>&nbsp;</td><td colspan="5">
Michel Beaudin (ACA2009 Conference)<br>
École de technologie supérieure<br>
1100 Notre-Dame ouest<br>
Montréal, Qc<br>
Canada H3C 1K3
</td></tr>
<tr><td colspan="6"></td></tr>


<tr><td colspan="6"></td></tr>
<tr><td colspan="6"><B>Comments</B></td></tr>
<tr><td colspan="6"><textarea name="Commentaires" cols="80" rows="4"></textarea></td></tr>
    <tr> 
      <td colspan="6" align="center"><input name="Submit" type="button" onclick=validate() value="Submit"> 
        &nbsp; <input name="Effacer" type="reset" id="Effacer" value="Clear"></td>
    </tr>
  </table>
</form>
</body>
</html>
