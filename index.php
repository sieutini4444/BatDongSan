<?php
session_start();

require_once('./database.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TrangChu</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

</head>

<body>
    <?php
     if(isset($_SESSION['username'])){
        $username =$_SESSION['username'];
        $query_people=mysqli_query($conn,"Select * from account where username ='$username'");
        $row_people = mysqli_fetch_assoc($query_people);

        $level_user= $row_people['level'];
     }

     $query_sp=mysqli_query($conn,"Select * from sanpham");
     $query_baiviet=mysqli_query($conn,"Select * from baiviet");

     if(isset($_POST['btnsearch'])){
        if(isset($_POST['search'])){
            $search= $_POST['search'];
            $sql_yeucau="SELECT * FROM sanpham , baiviet where sanpham.tensp like '%$search%' OR baiviet.tenbaiviet like '%$search%'";
            $query_sp = mysqli_query($conn,$sql_yeucau);
        }
        
    }
    ?>
    <!-- Phan navbar-->
    <div class="container">

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="#">
                <img src="images/logo.jpg" alt="logo" style="width:40px;">
            </a>
           
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">Trang chủ <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="templates/Danhsachsanpham.php">Nhà đất</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="templates/Danhsachbaiviet.php">Bài viết</a>
                </li>

                
                <li class="search timkiem">
                    <form method="POST">
                        <input type="text" placeholder="Search.." name="search">
                        <button type="submit" name="btnsearch"><i class="fa fa-search"></i></button>
                    </form>
                </li>
                <li class="nav-item login" <?php if(isset($_SESSION['username'])) {echo "style='display:none'";} ?>>
                    <a class="nav-link " href="./templates/Dangnhap.php">Đăng nhập</a>
                </li>
                <li class="nav-item" <?php if(!isset($_SESSION['username'])) {echo "style='display:none'";} ?>>
                    <a class="nav-link " href="./templates/Dangxuat.php">Đăng xuất</a>
                </li>
                <li class="nav-item" <?php 
                if(isset($_SESSION['username'])) {
                    if($level_user!=2){
                        echo "style='display:none'";
                        }
                }else{
                    echo "style='display:none'";
                }
                     ?>>
                    <a class="nav-link " href="./templates/phanquyen.php">Phân quyền</a>
                </li>
                
            </ul>
            
        </nav>
    
    <!-- Phan slide img-->
    
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100 " src="images/hotseller.jpeg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100"  src="images/hotseller2.jpeg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100"  src="images/hotseller3.jpeg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    

    <!----->
    

        <div class="row">
            <div class="col-sm-3">
                
            </div>

            <div class="col-sm-9">
                <div class="over_sp">
                    <h1 class="title" >Sản phẩm</h1>
                    <div class="row row_item">
                        <?php 
                        $count =0;
                        foreach ($query_sp as $itemsp){
                        ?>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="images/<?= $itemsp['image'] ?>" alt="Card image cap">
                                <div class="card-body">
                                <h5 class="card-title"><?= $itemsp['tensp'] ?></h5>
                                    <p class="card-text">Diện tích :<?= $itemsp['dientich'] ?></p>
                                    <p class="card-text">Số lượng phòng :<?= $itemsp['SLphongngu'] ?></p>
                                    <p class="card-text">Trạng thái:<?= $itemsp['trangthai'] ?></p>
                                </div>
                                <div class="card-footer" <?php if(!isset($_SESSION['username'])){echo "style='display:none;'";}  ?>>
                                    <a href="templates/Sanpham.php?idsp=<?= $itemsp['idsp'] ?>" class="btn btn-primary" >chi tiet</a>
                                </div>
                            </div>
                        </div>
                        <?php 
                            $count++;
                            if($count==6){
                                break;
                            }
                            else{
                                continue;
                            }
                            }
                        ?>
                        
                    </div>
                    <h4 class="title"><a href="templates/Danhsachsanpham.php">Xem thêm</a></h4>
                </div>
                <div class="over_sp">
                    <h1 class="title">Bài viết</h1>
                    <div class="row row_item">
                        <?php 
                            $count =0;
                            foreach ($query_baiviet as $itembaiviet){
                        ?>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card">
                                <img class="card-img-top" src="images/<?= $itembaiviet['image'] ?>" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title"><?= $itembaiviet['tenbaiviet'] ?></h5>
                                </div>
                                <div class="card-footer"  <?php if(!isset($_SESSION['username'])){echo "style='display:none;'";}  ?>>
                                    <a href="templates/Baiviet.php?idbaiviet=<?= $itembaiviet['idbaiviet'] ?>" class="btn btn-primary">chi tiet</a>
                                </div>
                            </div>
                        </div>
                        <?php 
                            $count++;
                            if($count==6){
                                break;
                            }
                            else{
                                continue;
                            }
                            }
                        ?>
                    
                    </div>
                    <h4 class="title"><a href="templates/Danhsachbaiviet.php">Xem thêm</a></h4>
                </div>
            </div>
        </div>
    </div>
    <div class="Footer">
        Copyright @ Your Website 2020
    </div>
</body>

</html>