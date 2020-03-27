<section id="home" class="video-hero" style="height: 500px; background-image: url(<?=base_url()?>assets/backend/img/pages/<?=$postsview['pst_images']; ?>);  background-size:cover; background-position: center center;background-attachment:fixed;" data-section="home">
        <div class="overlay"></div>
        <div class="display-t display-t2 text-center">
            <div class="display-tc display-tc2">
                <div class="container">
                    <div class="col-md-12 col-md-offset-0">
                        <div class="animate-box">
                            <h2><?=substr($postsview['pst_name'], 0, 30); ?>..</h2>
                            <p class="breadcrumbs"><span><a href="<?=site_url()?>">Home</a></span> <?php if($postsview['pst_categoriespost_id'] == '2') { ?><span><a href="<?=site_url('blog')?>">Blog</a></span><?php }else{ ?> <span><a href="<?=site_url('events')?>">Events</a></span> <?php }?> <span><?=$postsview['pst_name']; ?></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--- POST DETAIL --->
    <div class="colorlib-intro">
        <div class="container">
            <h2 style="text-align: center;"><?=$postsview['pst_name']; ?></h2>
            <div align="center">
                <img class="img-responsive" src="<?=base_url()?>assets/backend/img/posts/<?=$postsview['pst_images']; ?>">
            </div>
            <p><?=$postsview['pst_body']; ?></p>
            <div class="row">
                <div class="col-md-12 animate-box">
                    <hr>
                </div>
            </div>

            <!--- BLOG --->
            <?php if($postsview['pst_categoriespost_id'] == '2') { ?>
                <div class="colorlib-work">
                    <div class="container">
                        <div class="row">
                            <?php foreach(array_slice($blog, 0, 3) as $blg) : ?>
                                <?php if($postsview['pst_id'] != $blg['pst_id']) {?>
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
                                <?php }?>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            <?php } ?>

            <!--- EVENTS --->
            <?php if($postsview['pst_categoriespost_id'] == '1') { ?>
                <div class="colorlib-work">
                    <div class="container">
                        <div class="row">
                            <?php foreach(array_slice($events, 0, 3) as $evnts) : ?>
                                <?php if($postsview['pst_id'] != $evnts['pst_id']) {?>
                                    <div class="col-md-4 animate-box">
                                        <div class="work-grid">
                                            <a href="<?=site_url('events/'.$evnts['pst_slug'])?>" class="work-img" style="background-image: url(<?=base_url()?>assets/backend/img/posts/<?=$evnts['pst_images']; ?>)">
                                                <span class="icon"><i class="icon-plus2"></i></span>
                                            </a>
                                            <div class="desc work-img">
                                                <h2><a href="<?=site_url('blog/'.$evnts['pst_slug'])?>"><?=$evnts['pst_name']; ?></a></h2>
                                            </div>
                                        </div>
                                    </div>
                                <?php }?>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>