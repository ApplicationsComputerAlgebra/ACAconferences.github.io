
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>ACA Conference 2016 Registration</title>

	<link rel="stylesheet" href="css/master.css" media="screen"> 
	<link rel="stylesheet" href="css/regform.css" media="screen">

</head>
<body>
	<div id="container">
		<div id="header">
		<img width="auto" height="200px" src="images/Herkules.jpg" alt="Herkules monument" style="float:left; clear:left;">
		<img width="auto" height="200px" src="images/Kaskade.jpg" alt="Cascades at Berpark Wilhelmsh&ouml;he" style="float:right; clear:right;">
		<h1><p class="center">ACA 2016</br>Kassel (Germany)   August 1<sup>st</sup> - 4<sup>th</sup></h1>
		<h2><p class="center">22nd Conference on</br>
						<font color="red">Applications of Computer Algebra</font></br>
						August 1<sup>st</sup> - 4<sup>th</sup>, 2016</br>
						Kassel University Germany</h2>
</div>
		<div id="navigation">
		<nav>
		<ul>
			<li><a href="index.php" title="Home">Home</a></li>
			<li><a href="comitees.php" title="Committees">Committees</a></li>			
			<li><a href="speakers.php" title="Invited Speakers">Invited Speakers</a></li>			
			<li><a href="cfcprogram.php" title="Program">Program</a></li>
			<li><a href="dates.php" title="Special Dates">Important Dates</a></li>			
			<li><a href="sessions.php" title="Call for Sessions">Call for Sessions</a></li>
			<li><a href="cposters.php" title="Call for Posters">Call for Posters</a></li>
			<li><a href="specials.php" title="Sessions">Sessions</a></li>
			<li><a href="registration.php" title="Registration">Registration</a></li>
			<li><a href="finsup.php" title="Financial Support">Financial Support</a></li>
			<li><a href="poster.php" title="Conference Poster">Conference Poster</a></li>
			<li><a href="books.php" title="Book of Abstracts">Book of Abstracts</a></li>
			<li><a href="location.php" title="Location">Location</a></li>
			<li><a href="program.php" title="Social Program">Social Program</a></li>			
			<li><a href="travel.php" title="Travel">Travel</a></li>
			<li><a href="accommodations.php" title="Accommodation">Accommodation</a></li>
		</ul>
		</nav>
</div>
		
<div id="inhalt">

<form action="registration.php" method="POST" accept-charset="UTF-8">
			<fieldset>
			<legend>mandantory fields marked with <em>*</em></legend>
			<ol>
			<li>
			<div =id"twocols">
				<label for="male">Mr.</label>
				<input type="radio" class="radio" id="male" name="gender" value="male" checked disabled="disabled"/>
				<label for="female">Ms.</label>
				<input type="radio" class="radio" id="female" name="gender" value="female" disabled="disabled"/>
			</div>
			</li>
			<li>
			<label for="title">Title<input id="title" type="text" name="title" value="" disabled="disabled"/></label>
			</li>
			<li>
			<label for="fullname">Name <em>*</em><input id="fullname" type="text" name="fullname" value=" "disabled="disabled"/></label>
			</li>
			<li>
			<label for="affiliation">Affiliation<input id="affiliation" type="text" name="affiliation" 
				value="" disabled="disabled"/></label>
			</li>
			<li>
			<label for="address">Address <em>*</em><textarea id="address" name="address" disabled="disabled"></textarea></label>
			</li>
			<li>
			<label for="country"><span>Country</span>
			<select class="sel" id="country" name="country" value="" disabled="disabled">
				<optgroup label="Europe">
					<option value="AX">&Aring;land Islands</option>
					<option value="AL">Albania</option>
					<option value="AD">Andorra</option>
					<option value="AT">Austria</option>
					<option value="BY">Belarus</option>
					<option value="BE">Belgium</option>
					<option value="BA">Bosnia and Herzegovina</option>
					<option value="BG">Bulgaria</option>
					<option value="HR">Croatia</option>
					<option value="CZ">Czech Republic</option>
					<option value="DK">Denmark</option>
					<option value="EE">Estonia</option>
					<option value="FO">Faroe Islands</option>
					<option value="FI">Finland</option>
					<option value="FR">France</option>
					<option selected value="DE">Germany</option>
					<option value="GI">Gibraltar</option>
					<option value="GR">Greece</option>
					<option value="GG">Guernsey</option>
					<option value="VA">Holy See (Vatican City State)</option>
					<option value="HU">Hungary</option>
					<option value="IS">Iceland</option>
					<option value="IE">Ireland</option>
					<option value="IM">Isle of Man</option>
					<option value="IT">Italy</option>
					<option value="JE">Jersey</option>
					<option value="LV">Latvia</option>
					<option value="LI">Liechtenstein</option>
					<option value="LT">Lithuania</option>
					<option value="LU">Luxembourg</option>
					<option value="MK">Macedonia</option>
					<option value="MT">Malta</option>
					<option value="MD">Moldova</option>
					<option value="MC">Monaco</option>
					<option value="ME">Montenegro</option>
					<option value="NL">Netherlands</option>
					<option value="NO">Norway</option>
					<option value="PL">Poland</option>
					<option value="PT">Portugal</option>
					<option value="RO">Romania</option>
					<option value="RU">Russian Federation</option>
					<option value="SM">San Marino</option>
					<option value="RS">Serbia</option>
					<option value="SK">Slovakia</option>
					<option value="SI">Slovenia</option>
					<option value="ES">Spain</option>
					<option value="SJ">Svalbard and Jan Mayen</option>
					<option value="SE">Sweden</option>
					<option value="CH">Switzerland</option>
					<option value="UA">Ukraine</option>
					<option value="GB">United Kingdom</option>
				</optgroup>
				<optgroup label="Africa">
					<option value="DZ">Algeria</option>
					<option value="AO">Angola</option>
					<option value="BJ">Benin</option>
					<option value="BW">Botswana</option>
					<option value="BF">Burkina Faso</option>
					<option value="BI">Burundi</option>
					<option value="CM">Cameroon</option>
					<option value="CV">Cape Verde</option>
					<option value="CF">Central African Republic</option>
					<option value="TD">Chad</option>
					<option value="KM">Comoros</option>
					<option value="CG">Congo</option>
					<option value="CI">C&ocirc;te D&#039;ivoire</option>
					<option value="DJ">Djibouti</option>
					<option value="EG">Egypt</option>
					<option value="GQ">Equatorial Guinea</option>
					<option value="ER">Eritrea</option>
					<option value="ET">Ethiopia</option>
					<option value="GA">Gabon</option>
					<option value="GM">Gambia</option>
					<option value="GH">Ghana</option>
					<option value="GN">Guinea</option>
					<option value="GW">Guinea-Bissau</option>
					<option value="KE">Kenya</option>
					<option value="LS">Lesotho</option>
					<option value="LR">Liberia</option>
					<option value="LY">Libya</option>
					<option value="MG">Madagascar</option>
					<option value="MW">Malawi</option>
					<option value="ML">Mali</option>
					<option value="MR">Mauritania</option>
					<option value="MU">Mauritius</option>
					<option value="YT">Mayotte</option>
					<option value="MA">Morocco</option>
					<option value="MZ">Mozambique</option>
					<option value="NA">Namibia</option>
					<option value="NE">Niger</option>
					<option value="NG">Nigeria</option>
					<option value="RE">Reunion</option>
					<option value="RW">Rwanda</option>
					<option value="SH">Saint Helena</option>
					<option value="ST">Sao Tome and Principe</option>
					<option value="SN">Senegal</option>
					<option value="SC">Seychelles</option>
					<option value="SL">Sierra Leone</option>
					<option value="SO">Somalia</option>
					<option value="ZA">South Africa</option>
					<option value="SD">Sudan</option>
					<option value="SZ">Swaziland</option>
					<option value="TZ">Tanzania</option>
					<option value="CD">The Democratic Republic of The Congo</option>
					<option value="TG">Togo</option>
					<option value="TN">Tunisia</option>
					<option value="UG">Uganda</option>
					<option value="EH">Western Sahara</option>
					<option value="ZM">Zambia</option>
					<option value="ZW">Zimbabwe</option>
				</optgroup>
				<optgroup label="Asia">
					<option value="AF">Afghanistan</option>
					<option value="AM">Armenia</option>
					<option value="AZ">Azerbaijan</option>
					<option value="BH">Bahrain</option>
					<option value="BD">Bangladesh</option>
					<option value="BT">Bhutan</option>
					<option value="IO">British Indian Ocean Territory</option>
					<option value="BN">Brunei Darussalam</option>
					<option value="KH">Cambodia</option>
					<option value="CN">China</option>
					<option value="CX">Christmas Island</option>
					<option value="CC">Cocos (Keeling) Islands</option>
					<option value="CY">Cyprus</option>
					<option value="KP">Democratic People&#039;s Republic of Korea</option>
					<option value="GE">Georgia</option>
					<option value="HK">Hong Kong</option>
					<option value="IN">India</option>
					<option value="ID">Indonesia</option>
					<option value="IR">Iran</option>
					<option value="IQ">Iraq</option>
					<option value="IL">Israel</option>
					<option value="JP">Japan</option>
					<option value="JO">Jordan</option>
					<option value="KZ">Kazakhstan</option>
					<option value="KW">Kuwait</option>
					<option value="KG">Kyrgyzstan</option>
					<option value="LA">Lao People&#039;s Democratic Republic</option>
					<option value="LB">Lebanon</option>
					<option value="MO">Macao</option>
					<option value="MY">Malaysia</option>
					<option value="MV">Maldives</option>
					<option value="MN">Mongolia</option>
					<option value="MM">Myanmar</option>
					<option value="NP">Nepal</option>
					<option value="OM">Oman</option>
					<option value="PK">Pakistan</option>
					<option value="PS">Palestinia</option>
					<option value="PH">Philippines</option>
					<option value="QA">Qatar</option>
					<option value="KR">Republic of Korea</option>
					<option value="SA">Saudi Arabia</option>
					<option value="SG">Singapore</option>
					<option value="LK">Sri Lanka</option>
					<option value="SY">Syrian Arab Republic</option>
					<option value="TW">Taiwan</option>
					<option value="TJ">Tajikistan</option>
					<option value="TH">Thailand</option>
					<option value="TL">Timor-leste</option>
					<option value="TR">Turkey</option>
					<option value="TM">Turkmenistan</option>
					<option value="AE">United Arab Emirates</option>
					<option value="UZ">Uzbekistan</option>
					<option value="VN">Viet Nam</option>
					<option value="YE">Yemen</option>
				</optgroup>
				<optgroup label="North America">
					<option value="AI">Anguilla</option>
					<option value="AG">Antigua and Barbuda</option>
					<option value="AW">Aruba</option>
					<option value="BS">Bahamas</option>
					<option value="BB">Barbados</option>
					<option value="BZ">Belize</option>
					<option value="BM">Bermuda</option>
					<option value="CA">Canada</option>
					<option value="KY">Cayman Islands</option>
					<option value="CR">Costa Rica</option>
					<option value="CU">Cuba</option>
					<option value="DM">Dominica</option>
					<option value="DO">Dominican Republic</option>
					<option value="SV">El Salvador</option>
					<option value="GL">Greenland</option>
					<option value="GD">Grenada</option>
					<option value="GP">Guadeloupe</option>
					<option value="GT">Guatemala</option>
					<option value="HT">Haiti</option>
					<option value="HN">Honduras</option>
					<option value="JM">Jamaica</option>
					<option value="MQ">Martinique</option>
					<option value="MX">Mexico</option>
					<option value="MS">Montserrat</option>
					<option value="AN">Netherlands Antilles</option>
					<option value="NI">Nicaragua</option>
					<option value="PA">Panama</option>
					<option value="PR">Puerto Rico</option>
					<option value="KN">Saint Kitts and Nevis</option>
					<option value="LC">Saint Lucia</option>
					<option value="PM">Saint Pierre and Miquelon</option>
					<option value="VC">Saint Vincent and The Grenadines</option>
					<option value="TT">Trinidad and Tobago</option>
					<option value="TC">Turks and Caicos Islands</option>
					<option value="US">United States</option>
					<option value="VG">Virgin Islands (VG)</option>
					<option value="VI">Virgin Islands (VI)</option>
				</optgroup>
				<optgroup label="South America">
					<option value="AR">Argentina</option>
					<option value="BO">Bolivia</option>
					<option value="BR">Brazil</option>
					<option value="CL">Chile</option>
					<option value="CO">Colombia</option>
					<option value="EC">Ecuador</option>
					<option value="FK">Falkland Islands (Malvinas)</option>
					<option value="GF">French Guiana</option>
					<option value="GY">Guyana</option>
					<option value="PY">Paraguay</option>
					<option value="PE">Peru</option>
					<option value="SR">Suriname</option>
					<option value="UY">Uruguay</option>
					<option value="VE">Venezuela</option>
				</optgroup>
				<optgroup label="Antarctica">
					<option value="AQ">Antarctica</option>
					<option value="BV">Bouvet Island</option>
					<option value="TF">French Southern Territories</option>
					<option value="HM">Heard Island and Mcdonald Islands</option>
					<option value="GS">South Georgia and The South Sandwich Islands</option>
				</optgroup>
				<optgroup label="Oceania">
				<option value="IO">British Indian Ocean Territory</option>
					<option value="AS">American Samoa</option>
					<option value="AU">Australia</option>
					<option value="CK">Cook Islands</option>
					<option value="FJ">Fiji</option>
					<option value="PF">French Polynesia</option>
					<option value="GU">Guam</option>
					<option value="KI">Kiribati</option>
					<option value="MH">Marshall Islands</option>
					<option value="FM">Micronesia</option>
					<option value="NR">Nauru</option>
					<option value="NC">New Caledonia</option>
					<option value="NZ">New Zealand</option>
					<option value="NU">Niue</option>
					<option value="NF">Norfolk Island</option>
					<option value="MP">Northern Mariana Islands</option>
					<option value="PW">Palau</option>
					<option value="PG">Papua New Guinea</option>
					<option value="PN">Pitcairn</option>
					<option value="WS">Samoa</option>
					<option value="SB">Solomon Islands</option>
					<option value="TK">Tokelau</option>
					<option value="TO">Tonga</option>
					<option value="TV">Tuvalu</option>
					<option value="UM">United States Minor Outlying Islands</option>
					<option value="VU">Vanuatu</option>
					<option value="WF">Wallis and Futuna</option>
				</optgroup>
			</select>
			</label>
			</li>
			<li>
			<label for="email">e-Mail <em>*</em><input id="email" type="text" name="email" value="" disabled="disabled"/></label>
			</li>
			<li>
			Registration Fees (includes conference dinner)
			<div =id"twocols">
				<label for="early">early (200.00 &euro;)</label>
    	    			<input type="radio" class="radio" name="regdate" id="early" value="early" disabled="disabled"/>
				<label for="late">late (250.00 &euro;)</label>
	   	    		<input type="radio" class="radio" name="regdate" id="late" value="late" checked="checked" disabled="disabled"/>
			</div>
			<span style="visibility:visible">(early until 29<sup>th</sup> May 2016)</span>
			</li>
			<li>
			<label for="number">Accompanying persons (100 &euro; per person)<input id="number" type="number" value="0"
				min="0" max="10" name="number" disabled="disabled"/></label>
			</li>
			<li>
				Please use PayPal only if no bank transfer is possible for you (e.g. when you come from outside of Europe),
				as PayPal takes fees for every payment. You will receive within a few working days an e-mail with precise paying instructions.
				In particular, this e-mail will contain a personal code which must be mentioned in the transfer.
			</li>
			<li>
			<label for="paymode">Payment
			<select class="sel" id="paymode" name="paymode" value="" disabled="disabled">
					<option selected>bank transfer (preferred)</option>
	           		<option>Paypal</option>
		        </select>
			</label>
			</li>
			<li>
			Every registered participant will automatically receive a receipt for the paid registration fee. In some countries it is necessary to
			obtain a separate confirmation that a talk was presented. If this is the case for you, please mark the box below and provide the title
			of a talk you plan to present.
			</li>
			<li>
			<div id="twocols">
			<label for="sepconf">Sep. confirmation for talk
    	    			<input class="radio" type="checkbox" name="sepconf" value="Yes" disabled="disabled">
        		</label>
			</div><br>
			<label for="talk"><span>Title of Talk</span><input id="talk" type="text" name="talk" value="" disabled="disabled"/></label>
			</li>
			<li>
			<label for="notes"><span>Notes</span><textarea id="notes" name="notes" disabled="disabled"></textarea></label>
			<li>
			</ol>
		</fieldset>

			<input type="submit" name="Next" value="Next" id="enviar" disabled="disabled"/>

	</form></div>
	</div>
</body>
</html>
