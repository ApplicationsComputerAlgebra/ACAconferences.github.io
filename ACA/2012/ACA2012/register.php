<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ACA 2012 Registration Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<SCRIPT language=javascript src="register.js" type="text/javascript"></SCRIPT>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="10">
 		<tr>
			<td>
			  <h1 align="center"><b>ACA 2012</b></h1>
			  <h2 align="center"><b>18th International Conference on Applications of Computer Algebra</b></h2>
			  <h3 align="center"><b>June 25 – 28, 2012, Sofia, Bulgaria</b></h3>
			  <h3 align="center">&nbsp;</h3>
			  <h2 align="center"><b>Registration Form</b></h2>
			  <p></p>
			  <p><b>&nbsp;&nbsp;&nbsp;Please fill in the following form.</b></p>
			  <FORM action="register.php" method="post" name="regisration_form" onsubmit="return submit_form(this);">  
   <input type=hidden value="" name="action" />
  <table border=0 cellPadding=2 cellSpacing=10>   
    <tr>
      <td><b>Title: </b></td>
      <td><INPUT type=radio value=Prof. name=title checked> Prof.
	  	  <INPUT type=radio value=Dr. name=title> Dr. 
		  <INPUT type=radio value=Mr. name=title> Mr. 
		  <INPUT type=radio value=Ms. name=title> Ms.
	  </td>
    </tr>
   <tr>
      <td><b>Full Name: </b></td>
      <td><INPUT maxLength=100 size=60 name="register_name" autocomplete="off" value="">
	  </td>
    </tr>
   <tr>
      <td><b>Affiliation: </b></td>
      <td><INPUT maxLength=100 size=60 name="register_affiliation" autocomplete="off" value=""></td>
    </tr>
   <tr>
      <td><b>Country: </b></td>
      <td><INPUT maxLength=100 size=60 name="register_country" autocomplete="off" value=""></td>
    </tr>
  <tr>
      <td><b>E-mail: </b></td>
      <td><INPUT maxLength=100 size=60 name="register_email" autocomplete="off" value=""></td>
    </tr>
  </table>
<HR>
<h3>Conference Registration:</h3>
  <table border=0 cellPadding=2 cellSpacing=10>
   <tr>
      <td><INPUT type=radio value="Early Registration" name=regtype checked></td>
      <td><b>Early registration </b>(sent till May 20th, 2012):  € 200</td>
    </tr>
   <tr>
      <td><INPUT type=radio value="Late Registration" name=regtype ></td>
      <td><b>Late / on arrival registration: </b>   € 250</td>
    </tr>
  </table>   
  <p><b>Students:</b></p>
  <table border=0 cellPadding=2 cellSpacing=10>
    <tr>
      <td><INPUT type=radio value="Early Student Registration" name=regtype ></td>
      <td><b>Early registration: </b>(sent till May 20th, 2012):   € 100</td>
    </tr>
    <tr>
      <td><INPUT type=radio value="Late Student Registration" name=regtype ></td>
      <td><b>Late / on arrival registration: </b>    € 125</td>
    </tr>
  </table> 
  <p>
  <b>Accompanying persons:</b>&nbsp;&nbsp;<INPUT maxLength=2 size=2 name=accomp autocomplete="off" value="0">
  </p>
  <table width="500" border=0 cellPadding=2 cellSpacing=10>
      <tr>
      <td width="23"><INPUT type=radio value="Early registration" name=regtypeA checked></td>
      <td width="439"><b>Early registration: </b>(sent till May 20th, 2012):    € 80</td>
    </tr>
    <tr>
      <td><INPUT type=radio value="Late Registration" name=regtypeA ></td>
      <td><b>Late / on arrival registration:  </b>    € 100 </td>
    </tr>
  </table>   

<HR>
<h3>Accommodation:</h3>
<table border=0 cellPadding=2 cellSpacing=10>
      <tr>
      <td><INPUT type=radio value="Vitosha Park Hotel" name=regtypeAc checked></td>
      <td> Vitosha Park Hotel</td>
    </tr>
    <tr>
      <td><INPUT type=radio value="I made another choice" name=regtypeAc ></td>
      <td> Another choice</td>
    </tr>
  </table>   
 
<h3>Method of payment of my Registration fee:
</h3>
  <table border=0 cellPadding=2 cellSpacing=10>
      <tr>
      <td width="20"><INPUT type=radio value="Bank transfer" name=regtypeB checked></td>
      <td width="395"><b>Bank transfer </b></td>
    </tr>
    <tr>
      <td><INPUT type=radio value="Cash" name=regtypeB ></td>
      <td><b>Payment in cash on arrival (in case of late/on arrival registration)</b></td>
    </tr>
  </table>   

<h3>Bank details:
</h3>
<p>INSTITUTE OF MATHEMATICS AND INFORMATICS,<br />
BULGARIAN ACADEMY OF SCIENCES<br /> 
ACA 2012 
</p>
<p>UNICREDIT BULBANK<br /> 
IVAN VAZOV CORPORATE BRANCH <br />
1, IVAN VAZOV STR., SOFIA 1026, BULGARIA <br />
BIC CODE: UNCRBGSF <br />
IBAN: BG 85 UNCR 7630 3400 0012 91 /EUR/ <br />
</p>
<p><br />
&nbsp;&nbsp;&nbsp;<INPUT type=submit value="Submit" name=submit>  
&nbsp;&nbsp;&nbsp;<INPUT type=reset value="Reset" name=reset>
</p>
</FORM>		  </td>
		</tr>
		</table>


</body>
</html>
