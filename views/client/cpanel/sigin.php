<?php require_once "./views/client/include/head.php"; ?>
<script>
    $(document).ready(function(){
        $("#email").keyup(function(){
            var email = $(this).val();
            $.post("ajax/checkuser",{email:email},function(data){
                 $("#mess").html(data);
            });
        });

        $("#pass_confirm").keyup(function(){
            var pass_confirm = $(this).val();
            var pass  = $("#pass").val();
            $.post("ajax/checkpass",{pass:pass,pass_confirm:pass_confirm},function(data){
                 $("#mess").html(data);
            });
        });

		$(".unset-mess").blur(function(){
                 $("#mess").html("");
        });
    });
</script>
<style>
    .c{
        background-color: red;
    }
</style>
<body>
<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i> 0399967832</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> zoro99np@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
                                <li><a href="https://www.facebook.com/leuleu031099"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fab fa-facebook"></i></a></li>
								<li><a href="#"><i class="fab fa-youtube"></i></a></li>
								<li><a href="#"><i class="fab fa-instagram-square"></i></a></li>
								<li><a href="#"><i class="fab fa-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-md-2 clearfix">
						<div class="logo pull-left">
							<a href="<?=base?>"><img src="public/images/logo/logoshop.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-md-4 clearfix mob-ipa">
						<div class="shop-menu clearfix pull-left">
							<div class="mainmenu pull-left">
								<ul class="nav navbar-nav collapse navbar-collapse">
									<li><a href="">Trang Ch???</a></li>
									<li><a href="<?=base?>contact/contact">Li??n H???</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 clearfix mob-ipa">
						<div class="shop-menu clearfix pull-right">
						<ul class="nav navbar-nav collapse navbar-collapse" style="position: relative;">
							<?php if(isset($_SESSION["info"]["name"])){?>
								<li class="dropdown menu-info">
									<a class="text-info" href="javascrip:void(0)"> <?php echo '<i class="fa fa-user"></i>Xin ch??o '.$_SESSION['info']["name"].'<i class="fa fa-angle-down"></i>'; ?></a>
									<ul class="info-user">
											<li><a href="<?=base?>infouser/index">Th??ng tin c?? nh??n</a></li>
											<li><a href="<?=base?>home/history">L???ch s??? mua h??ng</a></li>
									</ul>
								</li>
							<?php }?>
								<li><a href="<?=base?>cart/showcart"><i class="fa fa-shopping-cart"></i> Gi??? H??ng</a></li>
								<li><?php if(isset($_SESSION["info"]["name"])) echo '<a href="logout/logout"><i class="fas fa-sign-out-alt"></i>????ng Xu???t</a>'; else echo '<a href="login/login"><i class="fa fa-lock"></i>????ng Nh???p</a>'; ?></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="container" style="height: 500px;">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-4">
					<div class="login-form"><!--login form-->
						<h2 style="text-align: center;">????ng K?? T??i Kho???n</h2>
                        <div style="height: 30px; width: 100%;" id= "mess"><?=$data["mess"]?></div>
						<form action="sigin/sigin" method="post">
                            <input class="unset-mess" type="text" placeholder="H??? V?? T??n" name="data[name]" required>
							<input class="unset-mess" type="email" placeholder="Email" name="data[email]" id="email" required>
							<input class="unset-mess" type="password" placeholder="M???t Kh???u" name="data[pass]" id = "pass" required>
                            <input class="unset-mess" type="password" placeholder="X??c Nh???n M???t Kh???u" name="data[pass_confirm]" id = "pass_confirm" required>
                            <input class="unset-mess" type="number" placeholder="S??? ??i???n Tho???i" name="data[phonenumber]" required>
                            <input class="unset-mess" type="text" placeholder="?????a Ch???" name="data[address]" required>
                            <div style="display: flex; justify-content: space-around;">
                                <button type="submit" class="btn btn-primary" name="sigin">????ng K??</button>
                                <a style="margin-left: 40px; padding-left: 30px; padding-right: 30px;" class="btn btn-primary" href="login/login">????ng Nh???p</a>
                            </div>
						</form>
					</div><!--/login form-->
				</div>
			</div>
		</div>
		
    <?php require_once "./views/client/include/footer.php"; ?>
</body>
</html>