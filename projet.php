<?php
include("connexion.php");?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
    <link rel="stylesheet" href="sous.css">
      <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        
    
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
          <p id="date"></p>
      <script>
var d = new Date();
document.getElementById("date").innerHTML = d.toUTCString();
</script>
        </a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="#">Connexion</a></li>
      <li><a href="#">Forum</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
    
  </div>
        </nav></div>
    <div class="row">
         
              <div class="logo">
                  <div class="col-sm-4">
        <img src="photo/logo%20eve.jpg">
                      </div>
                  <div class="col-sm-4">
        <img class="img2" src="photo/Capture.PNG">
                  </div>
    </div>
        </div>
    
   
      <?php 
    $sql="select * from categorie ";
        $query=mysqli_query($con,$sql);
        echo"<li><a  class='w3-bar-item w3' href='projet.php?idc=0'>Homme</a></li>";
        
       while ($t=mysqli_fetch_array($query))
       {
         echo  "<div class='w3-bar w3'><ul><li><a   class='w3-bar-item w3-button' href='projet.php?idc={$t['id_categorie']}'>{$t['libelle']}</a></li></ul></div>
                
     
    ";
       }
?>


 <nav  id="menu" class="navbar navbar-inverse">
  <div class="container-fluid">
   
    <ul   id="j" class='nav navbar-nav'>
       
        <?php 
    $sql="select * from categorie ";
        $query=mysqli_query($con,$sql);
        echo"<li><a class='homme' href='projet.php?idc=0'>Homme</a></li>";
        
       while ($t=mysqli_fetch_array($query))
       {
         echo  "<li><a  href='projet.php?idc={$t['id_categorie']}'>{$t['libelle']}</a></li>
                
     
    ";
       }
        ?>
     </ul>
   
  </div>
</nav>


    <div class="row">
        <div class="col-sm-4">
    <div class="slider">
    <div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/braden-collum-87875-unsplash.jpg" alt="Los Angeles" >
      </div>

      <div class="item">
        <img src="images/braden-collum-87875-unsplash.jpg" alt="Chicago" >
      </div>
    
      <div class="item">
        <img src="images/rachel-barkdoll-355971-unsplash.jpg" alt="New york" >
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
        </div></div></div></div>
        
  <div class="row">
      <div class="laune">
       <h3>A LA UNE</h3> 
            <p></p> 
      </div>
    <div class="col-sm-4">
      <div class="une1">
                <img src="photo/1.jpg"
                     >
                <H2>arah Jessica Parker est de loin préférée.</H2> 
                <img  class="img1"src="photo/4.jpg"
                     >
                
                <H4>arah Jessica Parker est préférée.</H4>
                <span>Par amina el wardi 20.1.2019</span>
                <img  class="img3"src="photo/3.jpg"
                     >
                <H4>arah Jessica Parker est  préférée.</H4> 
                 <span>Par zhor el wardi 20.1.2019</span>
            </div>
    </div>
    <div class="col-sm-4">
     <div class="une2">
                  <img src="photo/2.jpg"
                     >
               <H2>arah Jessica Parker est  préférée.</H2> 
    
                <img  class="img1"src="photo/5.jpg"
                     >
                <H4>arah Jessica Parker est préférée.</H4> 
                <span>Par jamila el wardi 20.1.2019</span>
                 <img  class="img3" src="photo/6.jpg"
                     >
                <H4>arah Jessica Parker est  préférée.</H4> 
                 <span>Par zhor el wardi 20.1.2019</span>
                
            </div>
    </div>
    <div class="col-sm-3">
        <div class="c1">
        <h3 >RESTER CONNECTER</h3> 
      <p></p></div>
      <img src="images/CN.PNG">
    </div>
      
  </div>
<div class="row">
     <div class="maison">
             <h3>EVE MAISON</h3> 
            <p></p>
         <div class="col-sm-3">
            <img src="photo/7.jpg">
            <h5>Maisons du Monde : les idées qu'on pique à la collection<span> printemps-été 2019</span></h5>
         </div>
         <div class="col-sm-3">
             <img src="photo/8.jpg">
             <h5>Maisons du Monde : les idées qu'on pique à la collection <span>printemps-été 2019</span></h5></div>
         <div class="col-sm-3">
             <img src="photo/9.jpg">
            
             <h5>Maisons du Monde : les idées qu'on pique à la collection <span>printemps-été 2019</span></h5></div>
        </div>
    </div>
    <div class="row">
    <div class="video">
        <h3>EVE VIDEOS</h3> 
            <p></p>
        <video controls="controls">
            <source src="images/4%20Easy%20Meals%20To%20Start%20Cooking.mp4" type="video/mp4">
            
        </video>
            <video controls="controls">
            <source src="images/Woman%20Who%20Did%20Makeup%20While%20in%20Labor%20Will%20Doll%20Up%20Others%20Before%20Delivery.mp4" type="video/mp4">
                
            
        </video>
                <video controls="controls">
            <source src="images/HOW%20TO%20MAKE%20ANY%20BASIC%20OUTFIT%20LOOK%20GOOD!%20%20FASHION%20HACKS.mp4" type="video/mp4">
                
            
        </video>
    </div></div>
    <div class="fashion">
    <div class="row">
        <h3>BEAUTE&FASHION</h3> 
            <p></p>
        <div class="col-sm-2">
        <img src="photo/10.jpg"><br><br>
        </div>
        <div class="col-sm-2">
            <p>jgtjkkjtrnjsnjnhsktjjt</p>
            <span>Par zhor el wardi 20.1.2019</span>
        </div>
    </div>
    <div class="row">
      <div class="col-sm-2">
        <img src="photo/11.jpg">
        </div>
          <div class="col-sm-2">
            <p>jgtjkkjtrnjsnjnhsktjjt</p>
            <span>Par zhor el wardi 20.1.2019</span>
        </div>
        </div></div>
    <div class="row">
     <div class="sante">
             <h3>SANTE</h3> 
            <p></p>
         <div class="col-sm-3">
            <img src="photo/12.jpg">
            <h5>Maisons du Monde : les idées qu'on pique à la collection</h5><span>Par zhor el wardi 20.1.2019</span>
         </div>
         <div class="col-sm-3">
             <img src="photo/13.jpg">
             <h5>Maisons du Monde : les idées qu'on pique à la collection </h5><span>Par zhor el wardi 20.1.2019</span></div>
         <div class="col-sm-3">
             <img src="photo/14.jpg">
            
             <h5>Maisons du Monde : les idées qu'on pique à la collection </h5><span>Par zhor el wardi 20.1.2019</span></div>
        </div>
    </div>
    <div class="footer">
       <p>copyrghit@byEve</p> 
    </div>
    </div>
</body>
</html>
    