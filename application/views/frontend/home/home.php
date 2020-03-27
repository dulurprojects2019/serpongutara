        <section id="home" class="video-hero" style="height: 700px; background-image: url(<?=base_url()?>assets/frontend/images/cover_img_1.jpg);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
        <div class="overlay"    ></div>
            <a class="player" data-property="{videoURL:'https://www.youtube.com/watch?v=vqqt5p0q-eU',containment:'#home', showControls:false, autoPlay:true, loop:true, mute:true, startAt:0, opacity:1, quality:'default'}"></a> 
            <div class="display-t text-center">
                <div class="display-tc">
                    <div class="container">
                        <div class="col-md-12 col-md-offset-0">
                            <div class="animate-box">
                                <h2>Wujudkan Mimpi Anda Dengan Berlangganan IndiHome</h2>
                                <p>100% Fiber</p>
                                <p><a href="https://wa.me/6282217992355?text=Hallo.. Saya ingin berlangganan IndiHome" class="btn btn-primary btn-lg btn-custom">Berlangganan</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="colorlib-featured">
            <div class="row animate-box">
                <div class="featured-wrap">
                    <div class="owl-carousel">
                        <?php foreach($slidehomepage as $slide) : ?>
                            <div class="item">
                                <div class="col-md-8 col-md-offset-2">
                                    <div class="featured-entry">
                                        <img class="img-responsive" src="<?=base_url()?>assets/backend/img/controlpanel/slidehomepage/<?=$slide['lsh_images']?>" alt="">
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="colorlib-services colorlib-bg-white">
            <div class="container">
                <div class="row">
                    <h2 class="text-center">Langkah Berlangganan IndiHome</h2>
                    <div class="col-md-4 text-center animate-box">
                        <div class="services">
                            <span class="icon">
                                <i class=""><img width="60" src="<?=base_url()?>assets/frontend/img/pendaftaran/paket.png"></i>
                            </span>
                            <div class="desc">
                                <h3>1. Pilih Paket</h3>
                                <p>Tentukan paket sesuai dengan kebutuhan<br><a href="<?=site_url('paket')?>">List Paket</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 text-center animate-box">
                        <div class="services">
                            <span class="icon">
                                <i class=""><img width="60" src="<?=base_url()?>assets/frontend/img/pendaftaran/daftar.png"></i>
                            </span>
                            <div class="desc">
                                <h3>2. Daftar Pemasangan</h3>
                                <p>Yang harus di persiapkan :<br>1. KTP/SIM<br>2. Alamat Lengkap</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 text-center animate-box">
                        <div class="services">
                            <span class="icon">
                                <i class=""><img width="60" src="<?=base_url()?>assets/frontend/img/pendaftaran/pemasangan.png"></i>
                            </span>
                            <div class="desc">
                                <h3>3. Pemasangan</h3>
                                <p>Proses pemasangan akan dilakukan oleh teknisi setelah proses pendaftaran selesai</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="colorlib-intro">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center colorlib-heading animate-box">
                        <h2>Panduan daftar nomor IndiHome di myIndiHome</h2>
                        <p>1. Lebih mudah cek info promo dan produk terbaru dari IndiHome<br>2. Lebih praktis cek dan bayar tagihan IndiHome<br>3. Lebih cepat lapor gangguan dan tanya seputar IndiHome</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 animate-box">
                        <span class="play"><a href="https://www.youtube.com/watch?v=2tE9-CeVM6k" class="pulse popup-vimeo"><i class="icon-play3"></i></a></span>
                    </div>
                </div>
            </div>
        </div>

        <div class="colorlib-work-featured colorlib-bg-white">
            <div class="container">
                <?php foreach(array_slice($packagepriority, 0, 1) as $pcgpriority) : ?>
                    <div class="row mobile-wrap">
                        <div class="col-md-5 animate-box">
                            <div  class="mobile-img" style="background-image: url(<?=base_url()?>assets/backend/img/packagepriority/<?=$pcgpriority['ipp_images']; ?>); height: 100;"></div>
                        </div>
                        <div class="col-md-7 animate-box">
                            <div class="desc">
                                <h2><?=$pcgpriority['ipp_name'] ?></h2>
                                <p><?=$pcgpriority['ipp_description'] ?></p>
                                <p><a href="https://wa.me/6282217992355?text=Saya Ingin Berlangganan <?=$pcgpriority['ipp_name'] ?>" class="btn btn-primary btn-outline with-arrow">Berlangganan <?=$pcgpriority['ipp_name'] ?> <i class="icon-arrow-right3"></i></a></p>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>

                <?php foreach(array_slice($packagepriority, 1, 1) as $pcgpriority) : ?>
                    <div class="row mobile-wrap">
                        <div class="col-md-5 col-md-push-7 animate-box">
                            <div  class="mobile-img" style="background-image: url(<?=base_url()?>assets/backend/img/packagepriority/<?=$pcgpriority['ipp_images']; ?>);"></div>
                        </div>
                        <div class="col-md-7 col-md-pull-5 animate-box">
                            <div class="desc">
                                <h2><?=$pcgpriority['ipp_name'] ?></h2>
                                <p><?=$pcgpriority['ipp_description'] ?></p>
                                <p><a href="https://wa.me/6282217992355?text=Saya Ingin Berlangganan <?=$pcgpriority['ipp_name'] ?>" class="btn btn-primary btn-outline with-arrow">Berlangganan <?=$pcgpriority['ipp_name'] ?> <i class="icon-arrow-right3"></i></a></p>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>

        <div id="colorlib-counter" class="colorlib-counters" style="background-image: url(<?=base_url()?>assets/frontend/images/cover_img_1.jpg);" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-8 col-md-offset-2 text-center colorlib-heading animate-box">
                            <div class="counter-entry">
                                <span class="icon"><i class="flaticon-ribbon"></i></span>
                                <div class="desc">
                                    <span class="colorlib-counter js-counter" data-from="0" data-to="6500000" data-speed="5000" data-refresh-interval="50"></span>
                                    <span class="colorlib-counter-label">Jumlah Pelanggan IndiHome Sampai Dengan Juli 2019 Sudah Mencapai 6,5 Juta Jiwa</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="colorlib-blog">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center colorlib-heading animate-box">
                        <h2>Events</h2>
                    </div>
                </div>
                <div class="row">
                    <?php foreach($events as $evnt) : ?>
                        <div class="col-md-4 animate-box">
                            <article>
                                <h2><a href="<?=site_url('events/'.$evnt['pst_slug'])?>"><?=$evnt['pst_name']; ?></a></h2>
                                <p class="admin"><span>___</span></p>
                                <p><?=substr($evnt['pst_body'], 0, 40); ?>..</p>
                                <?php $tags = explode(",", $evnt['pst_tags']); ?>
                                <?php foreach($tags as $tgs) : ?>
                                    <meta charset="utf-8" name="keywords" content="<?=$tgs; ?>,">
                                <?php endforeach; ?>
                            </article>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>

        <div id="colorlib-subscribe" class="colorlib-subscribe" style="background-image: url(<?=base_url()?>assets/frontend/images/cover_img_1.jpg);" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 text-center colorlib-heading animate-box">
                        <h2>Tanya Kami Disini</h2>
                    </div>
                </div>
                <div class="row animate-box">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1 text-center colorlib-heading animate-box">
                                <a href="https://wa.me/6282217992355?text=Hallo.. Saya ingin bertanya untuk pemasangan indihome di daerah saya" class="btn btn-primary btn-lg btn-custom">Tanya Kami ?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="colorlib-pricing">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center colorlib-heading animate-box">
                        <h2>List Paket IndiHome</h2>
                    </div>
                </div>
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