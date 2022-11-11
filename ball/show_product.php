<!DOCTYPE html>
<html>
<head>
    <title>PHP connect Mysql</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
        body{
            display:flex;
            position: relative;
            flex-direction:column;
            background:#1C2C5B;
            justify-content:center;
            align-items:center;
        }
        td,tr,th{
            /* border: 2px solid #ddd; */
            /* border-radius:2%; */
            position:relative;
            max-width:750px;
        }
        table {
            
            /* border: 1px solid #ddd; */
            /* border-radius:0.02%; */
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
            background:#6CABDD;
            color:#000000;
            padding: 0.7rem 0.5rem;
            font:small-caps 800 22px 'Poppins', sans-serif;
        }
        td{
            
           
            background: #fff;;
            color:#000000;
            padding: 0.7rem 0.5rem;
            font: 600 18px serif;
            
        }
        img {
            max-width:70%;
           
        }
        a{
            /* background:#EC3325; */
            border-radius:5px;
            padding:0.7rem 0.5rem;
            margin: 0.5rem;
            font:small-caps 800 20px ,'Poppins', sans-serif;
            color:#000000;
        }
        h1{
            margin:2.8% 4.5%;
            color:#fff;
            font: 800 32px 'Poppins', sans-serif;
        }

    </style>
</head>
<?php
    session_start();
    $servername="localhost";
    $username="root";
    $password="12345678";
    $dbname="shopball";

    $per_page=10;
    $page = $_GET["page"];
    if(isset($_GET["page"])) $start_page=$_GET["page"]*$per_page;
    else $start_page=0;
    $con=mysqli_connect($servername,$username,$password,$dbname);
    if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
    $sql="SELECT * FROM product";
    $result=mysqli_query($con,$sql);
    $numrow=mysqli_num_rows($result);
  
    $sql="SELECT * FROM product LIMIT $start_page,$per_page";
    $result=mysqli_query($con,$sql);
    echo "<h1><a href='index.php'>Back to Home page</a></h1>";

    echo "<h1>รายการสินค้าทั้งหมด</h1>";
    
    if(mysqli_num_rows($result)>0){
        
        echo "<table border=2px double><tr><th>id</th><th>name</th><th>description</th><th>price</th><th></th></tr>";
        while($row=mysqli_fetch_assoc($result)){
        $url_id=$row["image"];
        echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."</td><td>"."<img src='$url_id' style='width:150px;height:150px;'><br>";
        echo $row["description"]."</td><td>".$row["price"]."</td>";
        echo "<td><a href='add_product.php?id=".$row["id"]."'>ใส่ตระกร้า</a></td></tr>";
        }
        echo "</table>";
    }else{
        echo "0 results";
    }
    echo "<div>";
    for($i=0;$i<ceil($numrow/$per_page);$i++){
        if($i == 0){
            if($page ==0){
                echo "<a href=".$_SERVER['PHP_SELF']."?page=".(0)." > < </a>";
            }else{
                echo "<a href=".$_SERVER['PHP_SELF']."?page=".($page-1)." > < </a>";
            }
            
        }
       
        echo "<a href=".$_SERVER['PHP_SELF']."?page=".($i)." >".($i+1)."</a>";
        if($i == 5){
            if($page == 5){
                echo "<a href=".$_SERVER['PHP_SELF']."?page=".(5)." > > </a>";
            }else{
                echo "<a href=".$_SERVER['PHP_SELF']."?page=".($page+1)." > > </a>";
            }
            
        }
    }


    if(isset($_SESSION["cart"])){
        $total=0;
        if(count($_SESSION['cart'])!= 0){
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
            echo "<h2><a href='del_all.php'>ลบสิ้นค้าทั้งหมด</a></h2>";
            echo "<h2><a href='check_out.php'>สั่งซื้อ</a></h2>";
        }
        
   
    }
    mysqli_close($con);
    
?>
</body>
</html>