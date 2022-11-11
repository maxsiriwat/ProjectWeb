<?php
session_start();
$i=$_GET['i'];
if(isset($_SESSION["cart"])){
    $_SESSION["cart"] = null;
}
?>
<script>
    window.alert("นำสินค้าออกจากตระกร้าเรียบร้อยแล้ว");
    window.location.replace("show_product.php");
</script>  