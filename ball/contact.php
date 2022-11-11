<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <video autoplay loop muted plays-inline class="back-video">
      <source src="images/Ishow.mp4" type="video/mp4">
    </video>
    
    <div class="wrapper">
        <div class="icon facebook">
            <div class="tooltip">Facebook</div>
            <a href="https://www.facebook.com/profile.php?id=100008315810968"><span><i class="fab fa-facebook-f"></i></span></a>
        </div>
        <div class="icon instagram">
            <div class="tooltip">Instagram</div>
            <a href="https://www.instagram.com/siriwat.max/"><span><i class="fab fa-instagram"></i></span></a>
        </div>
        <div class="icon youtube">
           <div class="tooltip">Youtube</div>
            <span><i class="fab fa-youtube"></i></span>
        </div>
        <div class="icon github">
            <div class="tooltip">Github</div>
            <a href="https://github.com/SiriwatMax"><span><i class="fab fa-github"></i></span></a>
        </div>
        
    </div>
    <div class="content">
      <a href="index.php">Back to Home page!</a>
    </div>
</body>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
.back-video{
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
  z-index: 1;
}
.content{
    z-index: 3;
}
.content a{
  text-decoration: none;
  display: inline-block;
  color: black;
  font-size: 24px;
  border: 2px solid black;
  padding: 14px 70px;
  border-radius: 50px;
  margin-top: 20px;
  z-index: 3;
  font-family: 'Poppins', sans-serif;
  font-weight: bold;
  background-color: #fff;
}
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
html,body{
    display: grid;
    height: 100%;
    width: 100%;
    place-items: center;
    background: linear-gradient(315deg, #ffffff, #d7e1ec);
}
.wrapper{
    display: inline-flex;
}
.wrapper .icon{
    margin: 0 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    position: relative;
    z-index: 2;
    cursor: pointer;
}
.wrapper .icon span{
    position: relative;
    height: 60px;
    width: 60px;
    display: block;
    background: #fff;
    box-shadow: 0 10px 10px rgba(0,0,0,0.1);
    border-radius: 50%;
    z-index: 2;
    text-align: center;
}

.wrapper .icon span i{
    font-size: 25px;
    line-height: 60px;
}
.wrapper .icon:hover span{
    color: #fff;
}
.wrapper .icon .tooltip{
    position: absolute;
    top: 0px;
    background: #fff;
    color: #fff;
    font-size: 20px;
    padding: 10px 18px;
    border-radius: 25px;
    box-shadow: 0 10px 10px rgba(0,0,0,0.1);
    opacity: 0;
    pointer-events: none;
    transition: all 0.4s cubic-bezier(0.68,-0.55,0.265,1.55);
}
.wrapper .icon:hover .tooltip{
    top: -70px;
    opacity: 1;
    pointer-events: auto;
}
.wrapper .icon .tooltip:before{
    position: absolute;
    content: "";
    height: 15px;
    width: 15px;
    background: #fff;
    bottom: -8px;
    left: 50%;
    transform: translateX(-50%) rotate(45deg);
}
.wrapper .icon:hover span,
.wrapper .icon:hover .tooltip{
    text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.4);
}
.wrapper .facebook:hover span,
.wrapper .facebook:hover .tooltip,
.wrapper .facebook:hover .tooltip:before{
    background: #3B5999;
}
.wrapper .instagram:hover span,
.wrapper .instagram:hover .tooltip,
.wrapper .instagram:hover .tooltip:before{
    background: #e1306c;
}
.wrapper .github:hover span,
.wrapper .github:hover .tooltip,
.wrapper .github:hover .tooltip:before{
    background: #333;
}
.wrapper .youtube:hover span,
.wrapper .youtube:hover .tooltip,
.wrapper .youtube:hover .tooltip:before{
    background: #de463b;
}



</style>

</html>