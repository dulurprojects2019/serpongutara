
<!DOCTYPE HTML>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Serpong Utara</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="" />
    <meta name="keywords" content="marketing indihome, sales indihome, daftar indihome, pemasangan indihome, fiber optic" />
    <meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <!-- Favicon  -->
    <?php foreach($iconbar as $iconb) : ?>
        <link rel="icon" href="<?=base_url()?>assets/backend/img/controlpanel/iconbar/<?=$iconb['lib_images']?>">
    <?php endforeach ?>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400" rel="stylesheet">
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="<?=base_url()?>assets/frontend/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<?=base_url()?>assets/frontend/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<?=base_url()?>assets/frontend/css/bootstrap.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<?=base_url()?>assets/frontend/css/magnific-popup.css">

    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?=base_url()?>assets/frontend/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/frontend/css/owl.theme.default.min.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="<?=base_url()?>assets/frontend/css/style.css">

    <!-- Modernizr JS -->
    <script src="<?=base_url()?>assets/frontend/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="<?=base_url()?>assets/frontend/js/respond.min.js"></script>
    <![endif]-->

    </head>
    <body>
        
    <div class="colorlib-loader"></div>

    <div id="page">
        <nav class="colorlib-nav" role="navigation">
            <div class="top-menu">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2">
                            <div id="colorlib-logo"><a href="<?=site_url()?>">Serpong Utara</a></div>
                        </div>
                        <div class="col-md-10 text-right menu-1">
                            <ul>
                                <li><a href="<?=site_url()?>">Home</a></li>
                                <?php foreach($pages as $pgs) : ?>
                                    <li><a href="<?=site_url(''.$pgs['pgs_slug'])?>"><?=$pgs['pgs_name'];?></a></li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <?=$contentsfrontend?>        

        <footer id="colorlib-footer">
            <div class="container">
                <div class="row row-pb-md">
                    <div class="col-md-3 colorlib-widget">
                        <h4>Informasi Gangguan</h4>
                        <p>Bisa melalui Contact Center di : <br><a href="tel:147"><i class="icon-phone"></i> 147</a><br>atau bisa menghubungi kami di : <br><a href="tel:082217992355"><i class="icon-phone"></i> +62 822-1799-2355</a><br><a href="https://wa.me/6282217992355?text=Hallo.. Internet saya sedang mengalamai gangguan, bisa tolong di bantu?"><i class="icon-whatsapp"></i> +62 822-1799-2355</a></p>
                        <p>
                            <ul class="colorlib-social-icons">
                                <li><a href="#"><i class="icon-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-instagram"></i></a></li>
                            </ul>
                        </p>
                    </div>
                    <div class="col-md-3 colorlib-widget">
                        <h4>Information</h4>
                        <p>
                            <ul class="colorlib-footer-links">
                                <li><a href="<?=site_url()?>"><i class="icon-check"></i> Home</a></li>
                                <?php foreach($pages as $pgs) : ?>
                                    <li><a href="<?=site_url()?><?=$pgs['pgs_slug']?>"><i class="icon-check"></i> <?=$pgs['pgs_name']; ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                        </p>
                    </div>

                    <div class="col-md-3 colorlib-widget">
                        <h4>Recent Blog</h4>
                        <?php foreach(array_slice($blog, 0, 3) as $blg) : ?>
                            <div class="f-blog">
                                <a href="<?=site_url('blog/'.$blg['pst_slug'])?>" class="blog-img" style="background-image: url(<?=base_url()?>assets/backend/img/posts/<?=$blg['pst_images']; ?>);">
                                </a>
                                <div class="desc">
                                    <h2><a href="<?=site_url('blog/'.$blg['pst_slug'])?>"><?=$blg['pst_name']; ?></a></h2>
                                    <p class="admin"><span><?=date('d-m-Y', strtotime($blg['pst_created_at'])); ?></span></p>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>

                    <div class="col-md-3 colorlib-widget">
                        <h4>kontak</h4>
                        <ul class="colorlib-footer-links">
                            <li>Stand Pasar modern Graha raya<br>Stand keluarahan Paku Jaya serepong utara</li>
                            <li><a href="tel:082217992355"><i class="icon-phone"></i> +62 822-1799-2355</a></li>
                            <li><a href="mailto:indihomeserpongutara@gmail.com"><i class="icon-envelope"></i> indihomeserpongutara@gmail.com</a></li>
                            <li><a href="https://www.serpongutara.com/"><i class="icon-location4"></i> www.serpongutara.com</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="copy">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Dulur Projects</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
    </div>
    
    <!-- jQuery -->
    <script src="<?=base_url()?>assets/frontend/js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="<?=base_url()?>assets/frontend/js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="<?=base_url()?>assets/frontend/js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="<?=base_url()?>assets/frontend/js/jquery.waypoints.min.js"></script>
    <!-- Stellar Parallax -->
    <script src="<?=base_url()?>assets/frontend/js/jquery.stellar.min.js"></script>
    <!-- YTPlayer -->
    <script src="<?=base_url()?>assets/frontend/js/jquery.mb.YTPlayer.min.js"></script>
    <!-- Owl carousel -->
    <script src="<?=base_url()?>assets/frontend/js/owl.carousel.min.js"></script>
    <!-- Magnific Popup -->
    <script src="<?=base_url()?>assets/frontend/js/jquery.magnific-popup.min.js"></script>
    <script src="<?=base_url()?>assets/frontend/js/magnific-popup-options.js"></script>
    <!-- Counters -->
    <script src="<?=base_url()?>assets/frontend/js/jquery.countTo.js"></script>
    <!-- Main -->
    <script src="<?=base_url()?>assets/frontend/js/main.js"></script>

    </body>
</html>

