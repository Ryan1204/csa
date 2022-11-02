<?php
$sumber = 'https://zeus.accurate.id/accurate/api/purchase-order/detail.do?access_token=faf05a07-296a-4894-ad5d-05b8fae0d2ed&session=ae6a08e1-d41e-4138-9ec2-cffee26af3b3&id=252';
$konten = file_get_contents($sumber);
$data =json_decode($konten, true);
//var_dump($data); action="https://zeus.accurate.id/accurate/api/purchase-order/save.do?access_token=faf05a07-296a-4894-ad5d-05b8fae0d2ed&session=ae6a08e1-d41e-4138-9ec2-cffee26af3b3" 

?>

<!DOCTYPE html>
<html>
<head>
    <title>Contoh HTML FORM POST</title>
    
</head>
<body>

    <form  method="POST" id="from1">
        <input name="number" value="PO.2022.10.00002" />
        <input  name="transDate" value="21/10/2022" />
        <input name="vendorNo" value="V.00001" placeholder="vendorNo" />
        <input name="toAddress" value="-" placeholder="toAddress"/>
        <input name="detailItem[0].detailName" value="ayam gapuk" placeholder="detailName" />
        <input name="detailItem[0].itemNo" value="100001" placeholder="itemNo"/>
        <input name="detailItem[0].unitPrice" value="50000" placeholder="unitPrice"/>
        <input name="detailItem[0].quantity" value="1" placeholder="quantity"/>
        <input name="detailItem[0].detailNotes" value="fafaffef" placeholder="detailNotes"/>
        <input name="detailItem[0].itemDiscPercent" value="0" placeholder="itemDiscPercent"/>
        
        <input name="detailItem[1].detailName" value="ayam gadfpuk" placeholder="detailName" />
        <input name="detailItem[1].itemNo" value="100001" placeholder="itemNo"/>
        <input name="detailItem[1].unitPrice" value="50000" placeholder="unitPrice"/>
        <input name="detailItem[1].quantity" value="1" placeholder="quantity"/>
        <input name="detailItem[1].detailNotes" value="fafafssfef" placeholder="detailNotes"/>
        <input name="detailItem[1].itemDiscPercent" value="0" placeholder="itemDiscPercent"/> -->
        <button type="submit" id="simpan">Submit</button>

    </form>

              <script type="text/javascript">
$(document).ready(function(){
   

    $('#simpan').on('click', function(){
         //$(this).find('form').trigger('reset');
  var input = $('#from1').serialize();
  $.ajax({ 
      url:'https://zeus.accurate.id/accurate/api/purchase-order/save.do?access_token=faf05a07-296a-4894-ad5d-05b8fae0d2ed&session=ae6a08e1-d41e-4138-9ec2-cffee26af3b3',
      type: 'POST',
      data : input,
      mode: 'no-cors',
      dataType : 'JSON',
      contentType: "application/json; charset=utf-8",
      success:function(data){
       console.log(data)
      } 
   })
 })
});

</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>