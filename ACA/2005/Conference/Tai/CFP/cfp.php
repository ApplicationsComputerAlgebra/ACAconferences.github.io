<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN"
    "http://www.w3.org/TR/html4/frameset.dtd">
<html>
  <head>
    <meta $Jssac: cfp.php,v 1.11 2008/04/04 03:09:36 noriko Exp $>
    <meta http-equiv="Content-Type" CONTENT="text/html;CHARSET=euc-jp">
    <meta http-equiv="Content-Style-Type" CONTENT="text/css">
    <meta http-equiv="Content-Script-Type" CONTENT="text/javascript">
    <link rel="stylesheet" href="/jssac.css" type="text/css">
    <meta name="Author" content="Tomokatsu SAITO">
    <title>Jssac CFP</title>
    <script type="text/javascript">
    function chsp(TheForm){
      msg = "";
      if(TheForm.nameA.value==""){msg = "氏名";}
      if(TheForm.ttl.value==""){
        if(msg != "") msg +=",";
        msg += "講演タイトル";
      }
      if(TheForm.mail.value==""){
        if(msg != "") msg += ",";
        msg += "メールアドレス";
      }
      if( msg != "" ){
        msg += "が未記入です．";
        alert(msg);
        return false;
      } else {
        TheForm.submit();
      }
    }
    function clr(TheForm){
      TheForm.nameA.value="";
      TheForm.empA.value="";
      TheForm.nameB.value="";
      TheForm.empB.value="";
      TheForm.nameC.value="";
      TheForm.empC.value="";
      TheForm.nameD.value="";
      TheForm.empD.value="";
      TheForm.nameE.value="";
      TheForm.empE.value="";
      TheForm.ttl.value="";
      TheForm.thm.checked=false;
      TheForm.apl.checked=false;
      TheForm.sys.checked=false;
      TheForm.awrd.checked=false;
      TheForm.abst.value="";
      TheForm.add.value="";
      TheForm.tel.value="";
      TheForm.fax.value="";
      TheForm.mail.value="";
      for (i=1;i<6;i++) TheForm.tou[i].checked = false;
    }
    </script>
  </head>
<body class="taikai">
<form action="cfp.php" method="POST">
  <h3 align=center>第17回数式処理学会大会申込書</h3>
  <table align=center>
    <tr><th>発表者</th>
     <th>氏&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名</th>
     <th>所&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 属</th>
    <tr><th><input type='radio' name='tou' value=1></th>
      <th><input type=text name='nameA' size=25/></th>
      <th><input type=text name='empA' size=25/></th>
    <tr><th><input type='radio' name='tou' value=2></th>
      <th><input type=text name='nameB' size=25/></th>
      <th><input type=text name='empB' size=25/></th>
    <tr><th><input type='radio' name='tou' value=3></th>
      <th><input type=text name='nameC' size=25/></th>
      <th><input type=text name='empC' size=25/></th>
    <tr><th><input type='radio' name='tou' value=4></th>
      <th><input type=text name='nameD' size=25/></th>
      <th><input type=text name='empD' size=25/></th>
    <tr><th><input type='radio' name='tou' value=5></th>
      <th><input type=text name='nameE' size=25/></th>
      <th><input type=text name='empE' size=25/></th>
    <tr><th><br></th>
    <tr><th>講演タイトル</th>
      <th colspan=2><input type=text name='ttl' size=62/><br></th>
    <tr><th>講演種別</th>
      <th clospan=2>
        <input type=checkbox name=thm value=1/>理論&nbsp;&nbsp;&nbsp;
        <input type=checkbox name=apl value=1/>応用&nbsp;&nbsp;&nbsp;
        <input type=checkbox name=sys value=1/>システム</th>
    <tr><th><br></th>
    <tr><th>奨励賞対象</th>
      <th colspan=2 align=center>
        <input type=checkbox name=awrd value=1/>
          奨励賞対象講演者の場合チェックしてください
          <a href="/General/Proceeding/7/d13.html">奨励賞の詳細はこちら</a></th>
    <tr><th><br></th>
    <tr><th>概要</th>
      <th colspan=2><textarea name="abst" cols="60" rows="10"></textarea></th>
    <tr><th><br></th>
    <tr><th>連絡先</th>
    <tr><th>住所</th>
      <th colspan=2><input type=text name='add' size=62/></th>
    <tr><th>電話</th>
      <th colspan=2><input type=text name='tel' size=62/></th>
    <tr><th>Fax</th>
      <th colspan=2><input type=text name='fax' size=62/></th>
    <tr><th>Email</th>
      <th colspan=2><input type=text name='mail' size=62/></th>
  </table>
  <hr>
  <table align=center>
    <tr><th>
      <input type=submit name="cnfrm" value="確認" onclick='chsp(this.form)'></t
d>
      <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
      <th><input type=button value="消去" onclick='clr(this.form)'></th></tr>
  </table>
</form>
<pre>
Last modified: $Jssac: cfp.php,v 1.11 2008/04/04 03:09:36 noriko Exp $
</pre>
</body>
</html>
