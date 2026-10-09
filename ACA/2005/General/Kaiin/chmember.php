<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN"
    "http://www.w3.org/TR/html4/frameset.dtd">
<html>
  <head>
  <meta $Jssac: chmember.php,v 1.4 2006/04/07 06:28:54 saito Exp $>
  <meta http-equiv="Content-Type" CONTENT="text/html;CHARSET=euc-jp">
  <meta http-equiv="Content-Style-Type" CONTENT="text/css">
  <link rel="stylesheet" href="/jssac.css" type="text/css">
  <meta name="Author" content="Tomokatsu SAITO">
  <title>日本数式処理学会会員情報更新ページ</title>
  <script type="text/javascript">
  function chsp(TheForm){
    msg = "";
    if(TheForm.sei.value==""){msg = "姓";}
    if(TheForm.mei.value==""){
      if( msg != "" ) msg += ",";
      msg += "名";
    }
    if(TheForm.fname.value==""){
      if ( msg != "" ) msg += ",";
      msg += "姓のよみ";
    }
    if(TheForm.gname.value==""){
      if ( msg != "" ) msg += ",";
      msg += "名のよみ";
    }
    if(TheForm.email.value==""){
      if ( msg != "" ) msg += ",";
      msg += "メールアドレス";
    }
    if((TheForm.shubetu[0].checked == false) &&
       (TheForm.shubetu[1].checked==false) ){
      if ( msg != "" ) msg += ",";
      msg += "会員種別";
    }
    if(TheForm.hzip.value==""){
      if ( msg != "" ) msg += ",";
      msg += "自宅郵便番号";
    }
    if(TheForm.hadd.value==""){
      if ( msg != "" ) msg += ",";
      msg += "自宅住所";
    }
    if(TheForm.emp.value==""){
      if ( msg != "" ) msg += ",";
      msg += "勤務先名称";
    }
    if(TheForm.ezip.value==""){
      if ( msg != "" ) msg += ",";
      msg += "勤務先郵便番号";
    }
    if(TheForm.eadd.value==""){
      if ( msg != "" ) msg += ",";
      msg += "勤務先住所";
    }
    if((TheForm.ren[0].checked == false) &&
       (TheForm.ren[1].checked==false) ){
      if ( msg != "" ) msg += ",";
      msg += "宛先";
    }
    if ( msg != "" ){
      msg += "が未記入です．";
      alert(msg);
      return false;
    } else {
      TheForm.submit();
      return true;
    }
  }
  function clr(TheForm){
    TheForm.sei.value="";
    TheForm.mei.value="";
    TheForm.fname.value="";
    TheForm.gname.value="";
    TheForm.email.value="";
    TheForm.shubetu[0].checked=false;
    TheForm.shubetu[1].checked=false;
    TheForm.hzip.value="";
    TheForm.hadd.value="";
    TheForm.htel.value="";
    TheForm.hfax.value="";
    TheForm.emp.value="";
    TheForm.ezip.value="";
    TheForm.eadd.value="";
    TheForm.etel.value="";
    TheForm.ext.value="";
    TheForm.efax.value="";
    TheForm.ren[0].checked=false;
    TheForm.ren[1].checked=false;
    TheForm.eyaku.value="";
    TheForm.deg.value="";
    TheForm.school.value="";
    TheForm.fart.value="";
    TheForm.fyear.value="";
  }
  </script>
  </head>
  <body class="member">
  <form action='chmember.php' method='POST'>
  <hr>
  <h2 align="center">日本数式処理学会会員情報更新ページ</h2>
  <hr>
   日本数式処理学会の会員情報を変更するためのページです。
   変更部分以外も記入してください。
  <ol>
    <li>以下のフォームに変更内容を御入力していただき、
      確認ボタンを押してください．
      各項目は必ず入力してください．記入データが無い場合は
      <span class=req>"なし"</span>とご記入ください．
    <li>次のページで登録変更内容を，もう一度，確認して頂き，
      送信ボタンを押してください．
      もし，登録内容に誤りがあった場合は，<span class=req>戻る</span>
      により戻った後，修正してください．
    <li>登録して頂いた E-mail address に確認用のメールが届きますので，
      そのメールの内容に従って，返信してください．
    <li>登録変更できた場合は、数日後、登録して頂いたメールアドレスに
      その旨をお伝えするメールを差し上げます。
      もし、届かなかった場合は、お手数ですが、確認用のメールに書いてある
      メールアドレスまで御連絡ください。
  </ol>
  <hr>
  <h3 align=center>会員情報変更</h3>
  <table align=center>  <tr><td>姓</td>
    <td><input type="text" name="sei" size=40 value=''/></td>
    <td>(例: 山田)</td></tr>
  <tr><td>名</td>
    <td><input type="text" name="mei" size=40 value=''/></td>
    <td>(例: 太郎)</td></tr>
  <tr><td>姓読み</td>
    <td><input type="text" name="fname" size=40 value=''/></td>
    <td>(例: やまだ)</td></tr>
  <tr><td>名読み</td>
    <td><input type="text" name="gname" size=40 value=''/></td>
    <td>(例: たろう)</td></tr>
  <tr><td>メール</td>
    <td><input type="text" name="email" size=40 value=''/></td>
    <td>(例: taro@yamada.orig)</td></tr>
  <tr><td>会員の種類</td>
      <td align=center>
        <input type='radio' name='shubetu' value='正会員'/>正会員
        &nbsp;&nbsp;
        <input type='radio' name='shubetu' value='学生会員'/>学生会員</td>
    <td></td></tr>
  <tr><td>自宅郵便番号</td>
    <td><input type="text" name="hzip" size=40 value=''/></td>
    <td>(例: 123-4567)</td></tr>
  <tr><td>自宅住所</td>
    <td><input type="text" name="hadd" size=40 value=''/></td>
    <td>(例: 東京都...)</td></tr>
  <tr><td>自宅電話</td>
    <td><input type="text" name="htel" size=40 value=''/></td>
    <td>(例: xx-xxxx-xxxx)</td></tr>
  <tr><td>自宅FAX</td>
    <td><input type="text" name="hfax" size=40 value=''/></td>
    <td>(例: xx-xxxx-xxxx)</td></tr>
  <tr><td>勤務先</td>
    <td><input type="text" name="emp" size=40 value=''/></td>
    <td>(例: xx大学xx学部xx学科)</td></tr>
  <tr><td>勤務先郵便番号</td>
    <td><input type="text" name="ezip" size=40 value=''/></td>
    <td>(例: 123-4567)</td></tr>
  <tr><td>勤務先住所</td>
    <td><input type="text" name="eadd" size=40 value=''/></td>
    <td>(例: 東京都...)</td></tr>
  <tr><td>勤務先電話番号</td>
    <td><input type="text" name="etel" size=40 value=''/></td>
    <td>(例: xx-xxxx-xxxx)</td></tr>
  <tr><td>内線</td>
    <td><input type="text" name="ext" size=40 value=''/></td>
    <td>(例: xxxx)</td></tr>
  <tr><td>勤務先FAX番号</td>
    <td><input type="text" name="efax" size=40 value=''/></td>
    <td>(例: xx-xxxx-xxxx)</td></tr>
  <tr><td>郵便物等の宛先</td>
    <td align=center>
        <input type='radio' name='ren' value='自宅'/>自宅
        &nbsp;&nbsp;
        <input type='radio' name='ren' value='勤務先'/>勤務先</td>
    <td></td></tr>
  <tr><td>役職名</td>
    <td><input type="text" name="eyaku" size=40 value=''/></td>
    <td>(例: 教授)</td></tr>
  <tr><td>学位</td>
    <td><input type="text" name="deg" size=40 value=''/></td>
    <td>(例: 理学博士)</td></tr>
  <tr><td>最終学歴学校名</td>
    <td><input type="text" name="school" size=40 value=''/></td>
    <td>(例: xx大学卒)</td></tr>
  <tr><td>学科名</td>
    <td><input type="text" name="fart" size=40 value=''/></td>
    <td>(例: 情報科学科)</td></tr>
  <tr><td>卒業又は修了年</td>
    <td><input type="text" name="fyear" size=40 value=''/></td>
    <td>(例: 19xx年3月)</td></tr>
  </table>
  <hr>
  <table align=center>
    <tr><td>
      <input type="submit" name="cnfrm" value="確認" onclick="return chsp(this.form);"></td>
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td><input type=button value="消去" onclick="clr(this.form);"></td></tr>
  </table>
</form>
<pre>
Last modified: $Jssac: chmember.php,v 1.4 2006/04/07 06:28:54 saito Exp $
</pre>
</body>
</html>
