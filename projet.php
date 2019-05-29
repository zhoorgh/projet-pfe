<?php
include("connexion.php");?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
    <link rel="stylesheet" href="sous.css">
     
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootsrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  

</head>
<body>

    
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div id="lg" class="navbar-header">


  <ul class="navbar-nav">
    <li class="nav-item">
     <a> <p id="date"></p>
      <script>
var d = new Date();
document.getElementById("date").innerHTML = d.toUTCString();
</script></a></li>
    <li class="nav-item ">
      <a class="nav-link" href="#">Connexion</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Forum</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">About</a>
    </li>
    
     
  </ul>
      </div></div></nav>

    
<div class="row">
         
              <div class="logo">
                  <div class="col-sm-4">
        <img src="photo/logo%20eve.jpg">
                      </div>
                  <div class="col-sm-6">
        <img class="img2" src="photo/Capture.PNG">
                  </div>
    </div>
        </div>

        <?php
            $sql="select * from categorie";
            $query=mysqli_query($con, $sql);
            echo "<nav class='navbar navbar-expand-sm' >
  <ul class='navbar-nav'>
    <li class='nav-item active'>
     <a id='j' class='nav-link' href='projet.php?idc=0'>Acceuil</a><li>
    ";
            while ($t=mysqli_fetch_array($query)) {
              echo"
      <a  class='nav-link' href='projet.php?idc={$t['id_categorie']}'>{$t['libelle']}</a>
     ";
             
            }
            echo "</li></ul></nav> ";




        ?>



<style type="text/css">
  
  .navbar-nav{
    background-color: ;
    
  
    list-style: none;
    margin-top: 21px;
    text-transform: uppercase;




  }
  #j{

    background-color: red;
    color: white;
    padding: 9px;
    text-transform: uppercase;
  }
  .nav-link{
    color: black;
    margin-left: 55px;
     height: 78px
  }
   .nav-link:hover{
    color: black;
    text-decoration: underline;
  }
</style>










<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
      #slide{
          width: 990px;
      }
  </style>
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
        <img src="photo/slide1.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h3>Los Angeles</h3>
          <p>LA is always so much fun!</p>
        </div>
      </div>

      <div class="item">
        <img src="photo/slide2.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h3>Chicago</h3>
          <p>Thank you, Chicago!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="photo/slide2.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>We love the Big Apple!</p>
        </div>
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
</div>
        
  <div class="row">
      <div class="laune">
       <h3>A LA UNE</h3> 
            <p></p> 
      </div>

<?php 
$sql="SELECT * FROM categorie limit 20";
$re=mysqli_query($con,$sql);
$tab=mysqli_fetch_all($re);
$p=1;
for($i=0;$i<6;$i+=3){
$sqll="SELECT * FROM article WHERE id_categorie={$tab[$i][0]} order by datepub desc ";
$req=mysqli_query($con,$sqll);
$t=mysqli_fetch_array($req);
?>

    <div class="col-sm-4">
      <div class="une<?php echo $p; ?>">
                <img src="photo/<?php echo $t['vignette'];?>"
                     >
                <H2><?php echo $t['libelle']; ?></H2> 
         
          <?php
          $sqll="SELECT * FROM article WHERE id_categorie={$tab[$i+1][0]} order by datepub desc ";
          $req=mysqli_query($con,$sqll);
          $t=mysqli_fetch_array($req);
          ?>
                <img  class="img1"src="photo/<?php echo $t['vignette'];?>"
                     >
                
                <H4><?php echo $t['libelle']; ?>.</H4>
                <span>Par amina el wardi 20.1.2019</span>
               
             
             <?php
          $sqll="SELECT * FROM article WHERE id_categorie={$tab[$i+2][0]} order by datepub desc ";
          $req=mysqli_query($con,$sqll);
          $t=mysqli_fetch_array($req);
          ?>

                <img  class="img3"src="photo/<?php echo $t['vignette'];?>"
                     >
                <H4><?php echo $t['libelle']; ?></H4> 
                 <span>Par zhoor el wardi 20.1.2019</span>
            </div>
    </div>

<?php $p++; } ?>

    <div class="col-sm-4">
  
    </div>
    
    <div class="col-sm-3">
        <div class="c1">
        <h3 >RESTER CONNECTER</h3> 
      <p></p></div>
      <img src="photo/CN.PNG">
    </div>
      
  </div>
<div class="row">
     <div class="maison">
             <h3>EVE MAISON</h3> 
            <p></p>
         <?php 
         $sql="select * from article where id_categorie=3  limit 3 " or die ("erooor");
         
         $req=mysqli_query($con,$sql);
         while($t=mysqli_fetch_array($req)){
             
             echo"<div class='col-sm-3'>
            <img src='photo/{$t['vignette']}'>
            <h5>{$t['libelle']}\n<span></span></h5>
         </div>  ";
             
             
         }?>
        
        
        
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
        
       <?php 
         $sql="select * from article where id_categorie=1  limit 2 " or die ("erooor");
         
         $req=mysqli_query($con,$sql);
         while($t=mysqli_fetch_array($req)){
             
             echo"<div class='col-sm-3'>
            <img src='photo/{$t['vignette']}'>
            <h5>{$t['libelle']}\n<span></span></h5>
         </div>  ";
             
             
         }?>
      
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
    