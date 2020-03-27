    <section id="home" class="video-hero" style="height: 500px; background-image: url(<?=base_url()?>assets/backend/img/pages/<?=$pagesview['pgs_images']; ?>);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
        <div class="overlay"></div>
        <div class="display-t display-t2 text-center">
            <div class="display-tc display-tc2">
                <div class="container">
                    <div class="col-md-12 col-md-offset-0">
                        <div class="animate-box">
                            <h2><?=$pagesview['pgs_name']; ?></h2>
                            <p class="breadcrumbs"><span><a href="<?=site_url()?>">Home</a></span> <span><?=$pagesview['pgs_name']; ?></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--- BLOG --->
    <?php if($pagesview['pgs_slug'] == 'blog') { ?>
        <div class="colorlib-work">
            <div class="container">
                <div class="row">
                    <?php foreach($blog as $blg) : ?>
                        <div class="col-md-4 animate-box">
                            <div class="work-grid">
                                <a href="<?=site_url('blog/'.$blg['pst_slug'])?>" class="work-img" style="background-image: url(<?=base_url()?>assets/backend/img/posts/<?=$blg['pst_images']; ?>)">
                                    <span class="icon"><i class="icon-plus2"></i></span>
                                </a>
                                <div class="desc work-img">
                                    <h2><a href="<?=site_url('blog/'.$blg['pst_slug'])?>"><?=$blg['pst_name']; ?></a></h2>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    <?php } ?>

    <!--- EVENTS --->
    <?php if($pagesview['pgs_slug'] == 'events') { ?>
        <div class="colorlib-work">
            <div class="container">
                <div class="row">
                    <?php foreach($events as $evnts) : ?>
                        <div class="col-md-4 animate-box">
                            <div class="work-grid">
                                <a href="<?=site_url('events/'.$evnts['pst_slug'])?>" class="work-img" style="background-image: url(<?=base_url()?>assets/backend/img/posts/<?=$evnts['pst_images']; ?>)">
                                    <span class="icon"><i class="icon-plus2"></i></span>
                                </a>
                                <div class="desc work-img">
                                    <h2><a href="<?=site_url('events/'.$evnts['pst_slug'])?>"><?=$evnts['pst_name']; ?></a></h2>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    <?php } ?>

    <!--- KONTAK --->
    <?php if($pagesview['pgs_slug'] == 'kontak') { ?>
        <div id="colorlib-contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-push-8 animate-box">
                        <h2>Informasi Kontak</h2>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="contact-info-wrap-flex">
                                    <?php foreach($kontak as $ktk) : ?>
                                        <div class="con-info">
                                            <p><span><i class=""></i></span><?=$ktk['pgs_body']; ?></p>
                                        </div>
                                    <?php endforeach; ?>
                                    <div class="con-info">
                                        <p><span><i class="icon-phone3"></i></span> <a href="tel:082217992355"> +62 822-1799-2355</a></p>
                                    </div>
                                    <div class="con-info">
                                        <p><span><i class="icon-whatsapp"></i></span> <a href="https://api.whatsapp.com/send?phone=6282217992355&text=Hallo.. Saya ingin berlangganan IndiHome"> +62 822-1799-2355 - WhatsApp</a></p>
                                    </div>
                                    <div class="con-info">
                                        <p><span><i class="icon-paperplane"></i></span> <a href="mailto:indihomeserpongutara@gmail.com">indihomeserpongutara@gmail.com</a></p>
                                    </div>
                                    <div class="con-info">
                                        <p><span><i class="icon-globe"></i></span> <a href="https://www.serpongutara.com/">www.serpongutara.com</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-md-pull-4 animate-box">
                        <h2>Maps</h2>
                        <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=kelurahan%20pakujaya&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.crocothemes.net"></a></div><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div>    
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>

    <!--- KONTAK --->
    <?php if($pagesview['pgs_slug'] == 'paket') { ?>
        <div class="colorlib-pricing">
            <div class="container">
                <div class="row">
                    <?php foreach($package as $pcg) : ?>
                        <div class="col-md-3 text-center animate-box"><br>
                            <div class="pricing">
                                <h2 class="pricing-heading"><?=$pcg['inp_name']; ?></h2>
                                <div class="price"><sup class="currency">Rp</sup><?=substr($pcg['inp_price'], 0, 3); ?><a style="font-size: 18px">rb</a><small>per bulan</small></div>
                                <p><?=$pcg['inp_name']; ?> 10% mulai dari Rp. <?=$pcg['inp_price']; ?></p>
                                <p><a href="<?=site_url('paket/detail/'.$pcg['inp_slug'])?>" class="btn btn-primary">Lihat Detail</a></p>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    <?php } ?>

    <!--- PEMASANGAN --->
    <?php if($pagesview['pgs_slug'] == 'pemasangan') { ?>
        <div class="colorlib-work">
            <div class="container">
                <div class="row">
                    <?php foreach($gallery as $glr) : ?>
                        <div class="col-md-4 animate-box">
                            <div class="work-grid">
                                <a class="work-img" style="background-image: url(<?=base_url()?>assets/backend/img/gallery/<?=$glr['glr_imagesname']; ?>)">
                                    <span class="icon"><i class="icon-plus2"></i></span>
                                </a>
                            </div>
                        </div>
                    <?php endforeach; ?>

                </div>

            </div>
        </div>
    <?php } ?>

