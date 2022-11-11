<?php
session_start();
$servername="localhost";
$username="root";
$password="12345678";
$dbname="shopball";

$con=mysqli_connect($servername,$username,$password,$dbname);
if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
echo "Connect mysql successfully!";
$sent_id= $_SESSION["sent_id"];
$sql="SELECT * FROM `order_product`,`order_details`,`product` WHERE `order_product`.id=`order_details`.order_id AND `order_details`.product_id =  `product`.id AND `order_details`.order_id=$sent_id";
$result=mysqli_query($con,$sql);

if(mysqli_num_rows($result)>0){
    
    echo "<table border=1><tr><th>price</th><th>order_id</th><th>name</th><th>fname</th><th>lname</th><th>address</th><th>mobile</th></tr>";
    while($row=mysqli_fetch_assoc($result)){
        //$url_id = $row["image"];
        //echo "<tr><td style='text-align: center;'>".$row["price"]."</td><td style='text-align: center;'>".$row["order_id"]."<br>"."<img src='$url_id' style='width:350px;height:350px;'>"."</td><td style='text-align: center;'>"; 
        echo "<tr><td style='text-align: center;'>".$row["price"]."</td><td style='text-align: center;'>".$row["order_id"]."<td style='text-align: center;'>".$row["name"]."</td><br><td>" ; 
        echo $row["fname"]. "</td><td style='text-align: center;'>".$row["lname"]."</td><td style='text-align: center;'>".$row["address"]."</td><td style='text-align: center;'>".$row["mobile"]."</td></tr>";
    //echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."<br>"."</td><td>";
    //echo $row["description"]."</td><td>".$row["price"]."</td>";
    //echo "<td><a href='Add_Product1.php?id=".$row["id"]."'>ใส่ตระกร้า</a></td></tr>";
    }
    echo "</table>";
}else{
    echo "0 results";
}
//echo $_SESSION["sent_id"];


?>