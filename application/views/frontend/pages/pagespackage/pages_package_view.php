    <section id="home" class="video-hero" style="height: 500px; background-image: url(images/cover_img_1.jpg);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
        <div class="overlay"></div>
        <div class="display-t display-t2 text-center">
            <div class="display-tc display-tc2">
                <div class="container">
                    <div class="col-md-12 col-md-offset-0">
                        <div class="animate-box">
                            <h2><?=$package['inp_name']; ?></h2>
                            <p class="breadcrumbs"><span><a href="<?=site_url()?>">Home</a></span> <span><a href="<?=site_url('paket')?>">Paket</a></span> <span><?=$package['inp_name']; ?></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="colorlib-pricing">
        <div class="container">
            <div class="row row-pb-lg">
                <div class="col-md-6 animate-box">
                    <div class="video colorlib-video" style="background-image: url(<?=base_url()?>assets/backend/img/package/<?=$package['inp_images']; ?>);">
                        <div class="overlay"></div>
                    </div>
                </div>
                <div class="col-md-6 animate-box">
                    <h2><?=$package['inp_name']; ?></h2>
                    <p><?=$package['inp_description']; ?></p>
                </div>
            </div>

            <div class="row">
                <?php foreach($packageview as $pcgview) : ?>
                    <?php if($package['inp_id'] != $pcgview['inp_id']) {?>
                        <div class="col-md-3 text-center animate-box"><br>
                            <div class="pricing">
                                <h2 class="pricing-heading"><?=$pcgview['inp_name']; ?></h2>
                                <div class="price"><sup class="currency">Rp</sup><?=substr($pcgview['inp_price'], 0, 3); ?><a style="font-size: 18px">rb</a><small>per bulan</small></div>
                                <p><?=$pcgview['inp_name']; ?> 10% mulai dari Rp. <?=$pcgview['inp_price']; ?></p>
                                <p><a href="<?=site_url('paket/detail/'.$pcgview['inp_slug'])?>" class="btn btn-primary">Lihat Detail</a></p>
                            </div>
                        </div>
                    <?php } ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>