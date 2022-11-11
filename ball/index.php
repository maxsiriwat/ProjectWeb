<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MyProject</title>
</head>
<body>
  <div class="hero">

    <video autoplay loop muted plays-inline class="back-video">
      <source src="images/video.mp4" type="video/mp4">
    </video>

    <nav>
      <img src="images/logo.png" class="logo">
      <ul>
        <li><a href="">HOME</a></li>
        <li><a href="show_product.php">STORE</a></li>
        <li><a href="contact.php">CONTACT</a></li>
        <li><a href="">ABOUT</a></li>
      </ul>
    </nav>
    <div class="content">
      <h1>Welcome to KitShop</h1>
      <a href="show_product.php">Click for Shop!</a>
    </div>
  </div>
</body>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
    font-weight: bold;
}

.hero{
    width: 100%;
    height: 100vh;
    background-image: linear-gradient(rgba(12,3,51,0.3),rgba(12,3,51,0.3));
    position: relative;
    padding: 0 5%;
    display: flex;
    align-items: center;
    justify-content: center;
}
nav{
  width: 100%;
  position: absolute;
  top: 0;
  left: 0;
  padding: 20px 8%;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
nav .logo{
  width: 80px;

}
nav ul li{
  list-style: none;
  display: inline-block;
  margin-left: 40px;
}
nav ul li a{
  text-decoration: none;
  color: #fff;
  font-size: 25px;
}
.content{
  text-align: center;
}
.content h1{
  font-size: 160px;
  color: #fff;
  font-weight: 600;
  transition: 0.5s;
}
.content h1:hover{
-webkit-text-stroke: 2px #fff;
color: transparent;
}
.content a{
  text-decoration: none;
  display: inline-block;
  color: #fff;
  font-size: 24px;
  border: 2px solid #fff;
  padding: 14px 70px;
  border-radius: 50px;
  margin-top: 20px;
}
.back-video{
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
  z-index: -1;
}

</style>

</html>