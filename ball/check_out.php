<!DOCTYPE html>
<html>
<head>
<style>
        body{
            display:flex;
            position: relative;
            flex-direction:column;
            background:#D2B48C;
            justify-content:center;
            align-items:center;
        }
        td,tr,th{
            border: 2px solid #ddd;
            border-radius:2%;
            position:relative;
            max-width:auto;
        }
        table {
            border: 1px solid #ddd;
            border-radius:0.02%;
            max-width: auto;
        }
        div{
            margin: 1.4rem;
        }
        td,tr{
            margin: 7px 10px;
            padding: 0.7rem 0.5rem;
            
        }
        th{
            background:#CC9999;
            color:#000000;
            padding: 0.7rem 0.5rem;
            font:small-caps 800 22px Arial,sans-serif;
        }
        td{
            background:#FFEBCD;
            color:#000000;
            padding: 0.7rem 0.5rem;
            font: 600 18px serif;
            
        }
        h1{
            margin:2.8% 4.5%;
            color:#000000;
            font: 800 32px serif;
        }
        form{
            margin: 2px 2px
        }
        form > label {
            color:#000000;
            font: 500 22px serif;
        }
        form > input {
            border-radius:20px;
            margin:4px 0px ;
            padding: 10px 20px;
            font: 600 18px serif;
        }   
        form > textarea {
            border-radius:20px;
            margin:4px 0px ;
            padding: 10px 20px;
            font: 600 18px serif;
        }
    </style>
</head>

<?php
session_start();

if(isset($_SESSION["cart"])){
    echo "<h1>สรุปรายการสินค้า</h1>";
    $total=0;
    echo "<h1>ตระกร้าสินค้า</h1>";
    echo "<table><tr><th>ลำดับ</th><th>id</th><th>name</th><th>description</th><th>price</th></tr>";
        for($i=0;$i<count($_SESSION["cart"]);$i++)
        {
            $item=$_SESSION["cart"][$i];
            echo "<tr><td>".($i+1)."</td>";
            echo "<td>".$item['id']."</td>";
            echo "<td>".$item['name']."</td>";
            echo "<td>".$item['description']."</td>";
            echo "<td>".$item['price']."</td>";
            echo "<td><a href='del_cart.php?i=".$i."'>";
            echo "<font color='red'>x</font></a></td></tr>";
            $total+=$item['price'];
        }
    echo "</table>";
    echo "<h1>ราคาสินค้า $total บาท</h1>";
?>
        <form action="order.php" method="post">
            <label for="fname">First name:</label><br>
            <input type="text" id="fname" name="fname" value=""><br>
            <label for="lname">Last name:</label><br>
            <input type="text" id="lname" name="lname" value=""><br>
            <label for="address">Address:</label><br>
    <textarea id="address" name="address"  rows="4" cols="50"></textarea><br>
            <label for="mobile">mobile no.:</label><br>
            <input type="text" id="mobile" name="mobile" value=""><br>
            <input type="submit" value="Submit">
        </form> 
<?php
}
?>
</html>