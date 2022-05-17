<?php
require_once "pdo.php";  
require "header.php";  
if (isset($_POST['send'])) {
  if (isset($_POST['email']) && isset($_POST['message'])) {
    $stmt = $pdo->prepare('INSERT INTO feedback
          (email,message) VALUES ( :email,:message)'); 
    $stmt->execute(array(
      ':email' => $_POST['email'],
      ':message' => $_POST['message'],
    ));
    echo " <script>
    alert('Thank you for your Feedback');
    window.location.href='index.php';
    </script>";
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Fashion store</title>
  <link rel="icon" type="image/jpg" href="images/logo.png" />
  <link rel="stylesheet" type="text/css" href="index.css">
  <script src="https://kit.fontawesome.com/66036fc421.js" crossorigin="anonymous"></script>
</head>

<div class="big_image">
  <img src="images/bigpic.jpg">
</div>
<h2 class="middle">Categories</h2>
<div class="categories">
  <div class="first">
    <div>
      <a href="men.php">
        <p>Men</p>
      </a>
    </div>
  </div>
  <div class="second">
    <div><a href="women.php">
        <p>Women</p>
      </a></div>
  </div>
  <div class="third">
    <div><a href="kids.php">
        <p>Kids</p>
      </a></div>
  </div>
</div><br>
<h2 class="middle">Products</h2>
<div class="products">
  <div class="fourth">
    <div>
      <a href="shirts.php">
        <p>Shirts</p>
      </a>
    </div>
  </div>
  <div class="fifth">
    <div><a href="trousers.php">
        <p>Jeans & Trousers</p>
      </a></div>
  </div>
  <div class="sixth">
    <div><a href="tops.php">
        <p>Kurtis & Tops</p>
      </a></div>
  </div>
  <div class="seventh">
    <div><a href="leggings.php">
        <p>Leggings</p>
      </a></div>
  </div>
  
</div>

<footer>
  <div class="main">
    <div class="left">
      <h2>About us</h2>
      <p>This is a shopping website where you can shop for a variety of clothing for all men,women and children.</p>
      <div class="social">
        <ul>
          <li><a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook-square"></i></a></li>
          <li><a href="https://twitter.com" target="_blank"><i class="fab fa-twitter-square"></i></a></li>
          <li><a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram-square"></i></a></li>
        </ul>
      </div>
    </div>
    <div class="mid">
      <h2>Address</h2>
      <ul>
        <li><i class="fas fa-map-marker-alt"></i><span class="text">tunisia,tunis</span></li>
        <div class="phone">
          <li><i class="fas fa-phone-alt"></i><span class="text">+216-71545666</span></li>
        </div>
        <li><i class="fas fa-envelope-square"></i><span class="text">abc@fashionstore.tn</span></li>
      </ul>
    </div>
    <div class="right">
      <h2>Contact us</h2>
      <form method="POST">
        <div class="txt"><span>Email:</span></div>
        <input type="email" name="email" required /><br>
        <div class="msg"><span>Message:</span></div>
        <input type="textarea" name="message" required /><br><br>
        <button class="btn" type="submit" name="send">Send</button>
      </form>
    </div>
  </div>
  <p class="copyright">Created By Pranith
    <span class="far fa-copyright"></span>2020 All rights reserved.
  </p>
</footer>

</html>