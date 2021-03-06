<!DOCTYPE html>
<html lang="en">
    
<!--Designed By ALpha-->
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Serpong Utara - <?=$titlebar;?></title>
        <?php foreach($iconbar as $iconb) : ?>
            <link rel="icon" href="<?=base_url()?>assets/backend/img/controlpanel/iconbar/<?=$iconb['lib_images']?>">
        <?php endforeach ?>

        <!-- Vendor styles -->
        <link rel="stylesheet" href="<?=base_url()?>assets/backend/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/backend/vendors/bower_components/animate.css/animate.min.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/backend/vendors/bower_components/jquery.scrollbar/jquery.scrollbar.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/backend/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css">
        <link rel="stylesheet" href="<?=base_url()?>assets/backend/vendors/bower_components/lightgallery/dist/css/lightgallery.min.css">

        <!-- App styles -->
        <link rel="stylesheet" href="<?=base_url()?>assets/backend/css/app.min.css">
    </head>

    <body data-sa-theme="1">
        <main class="main">
            <div class="page-loader">
                <div class="page-loader__spinner">
                    <svg viewBox="25 25 50 50">
                        <circle cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
                    </svg>
                </div>
            </div>

            <header class="header">
                <div class="navigation-trigger hidden-xl-up" data-sa-action="aside-open" data-sa-target=".sidebar">
                    <i class="zmdi zmdi-menu"></i>
                </div>

                <div class="logo hidden-sm-down">
                    <h1><a href="<?=site_url('dashboard')?>">Dashboard</a></h1>
                </div>

                <form class="search">
                    <div class="search__inner">
                        <input type="text" class="search__text" placeholder="Search for people, files, documents...">
                        <i class="zmdi zmdi-search search__helper" data-sa-action="search-close"></i>
                    </div>
                </form>

                <ul class="top-nav">
                    <li class="hidden-xl-up"><a href="#" data-sa-action="search-open"><i class="zmdi zmdi-search"></i></a></li>

                    <li class="dropdown hidden-xs-down">
                        <a href="#" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>

                        <div class="dropdown-menu dropdown-menu-right">
                            <div class="dropdown-item theme-switch">
                                Theme Switch

                                <div class="btn-group btn-group--colors mt-2 d-block" data-toggle="buttons">
                                    <label class="btn active border-0" style="background-color: #234d6d"><input type="radio" value="1" autocomplete="off" checked></label>
                                    <label class="btn border-0" style="background-color: #273C5B"><input type="radio" value="2" autocomplete="off"></label>
                                    <label class="btn border-0" style="background-color: #174042"><input type="radio" value="3" autocomplete="off"></label>
                                    <label class="btn border-0" style="background-color: #383844"><input type="radio" value="4" autocomplete="off"></label>
                                    <label class="btn border-0" style="background-color: #49423F"><input type="radio" value="5" autocomplete="off"></label>

                                    <br>

                                    <label class="btn border-0" style="background-color: #5e3d22"><input type="radio" value="6" autocomplete="off"></label>
                                    <label class="btn border-0" style="background-color: #772036"><input type="radio" value="7" autocomplete="off"></label>
                                    <label class="btn border-0" style="background-color: #3b5e5e"><input type="radio" value="8" autocomplete="off"></label>
                                    <label class="btn border-0" style="background-color: #0a4c3e"><input type="radio" value="9" autocomplete="off"></label>
                                    <label class="btn border-0" style="background-color: #7b3d54"><input type="radio" value="10" autocomplete="off"></label>
                                </div>
                            </div>
                            <a href="#" class="dropdown-item" data-sa-action="fullscreen">Fullscreen</a>
                            <a href="#" class="dropdown-item">Clear Local Storage</a>
                            <a href="<?=site_url('mlehoy/logout')?>" class="dropdown-item">Sign Out</a>
                        </div>
                    </li>
                </ul>

                <div class="clock hidden-md-down">
                    <div class="time">
                        <span class="hours"></span>
                        <span class="min"></span>
                        <span class="sec"></span>
                    </div>
                </div>
            </header>

            <aside class="sidebar">
                <div class="scrollbar-inner">

                    <div class="user">
                        <div class="user__info" data-toggle="dropdown">
                            <?php if ($this->fungsi->user_login()->usr_images == '1510nophoto.png') { ?>
                                <img class="user__img" src="<?=base_url()?>assets/backend/img/nophoto/1510nophoto.png" alt="">
                            <?php }else{ ?>
                                <img class="user__img" src="<?=base_url()?>assets/backend/1508photos/<?=$this->fungsi->user_login()->usr_images ?>" alt="">
                            <?php } ?>
                            <div>
                                <div class="user__name"><?=$this->fungsi->user_login()->usr_fullname ?></div>
                                <div class="user__email"><?=$this->fungsi->user_login()->usr_email ?></div>
                            </div>
                        </div>

                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="<?=site_url('view/profile')?>">View Profile</a>
                            <a class="dropdown-item" href="<?=site_url('profile/password/'.encrypt_url($this->fungsi->user_login()->usr_id ))?>">Settings</a>
                            <a class="dropdown-item" href="<?=site_url('mlehoy/logout')?>">Logout</a>
                        </div>
                    </div>

                    <ul class="navigation">

                        <li <?=$this->uri->segment(1) == 'dashboard' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?>><a href="<?=site_url('dashboard'); ?>"><i class="zmdi zmdi-view-dashboard"></i> Dashboard</a></li>

                        <?php if ($this->fungsi->user_login()->usr_group_id == 1 && $this->fungsi->user_login()->usr_level_id == 1) { ?>
                            <li class="navigation__sub <?=$this->uri->segment(1) == 'list-users' || $this->uri->segment(1) == 'list-groups' || $this->uri->segment(1) == 'list-levels' ? 'navigation__sub--active navigation__sub--toggled' : ''; ?>" >
                                <a href="#"><i class="zmdi zmdi-accounts"></i> Accounts -></a>

                                <ul>
                                    <li <?=$this->uri->segment(1) == 'list-users' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('list-users')?>"> List Users</a></li>
                                    <li <?=$this->uri->segment(1) == 'list-groups' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('list-groups')?>"> List Groups</a></li>
                                    <li <?=$this->uri->segment(1) == 'list-levels' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('list-levels')?>"> List Levels</a></li>
                                </ul>
                            </li>
                        <?php } ?>

                        <?php if ($this->fungsi->user_login()->usr_group_id == 1 && $this->fungsi->user_login()->usr_level_id == 1 || $this->fungsi->user_login()->usr_group_id == 1 && $this->fungsi->user_login()->usr_level_id == 2) { ?>
                            <li class="navigation__sub <?=$this->uri->segment(1) == 'icon-bar' || $this->uri->segment(1) == 'slide-home-page' || $this->uri->segment(1) == 'brand-logo' ? 'navigation__sub--active navigation__sub--toggled' : ''; ?>" >
                                <a href="#"><i class="zmdi zmdi-settings"></i> Control Panel -></a>

                                <ul>
                                    <li <?=$this->uri->segment(1) == 'icon-bar' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('icon-bar'); ?>"> Icon Bar</a></li>
                                    <li <?=$this->uri->segment(1) == 'slide-home-page' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('slide-home-page')?>"> Slide Homepage</a></li>
                                    <li <?=$this->uri->segment(1) == 'brand-logo' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('brand-logo')?>"> Brand Logo</a></li>
                                </ul>
                            </li>
                        <?php } ?>

                        <!-- <li class="navigation__sub  navigation__sub--toggled">
                            <a href="#"><i class="zmdi zmdi-collection-item"></i> Pages -></a>

                            <ul>
                                <li class="navigation__active"><a href="<?=site_url('list-pages'); ?>"> List Pages</a></li>
                                <li class="navigation__active"><a href="<?=site_url('list-subpages')?>"> List Sub Pages</a></li>
                            </ul>
                        </li> -->

                        <li <?=$this->uri->segment(1) == 'list-pages' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('list-pages'); ?>"><i class="zmdi zmdi-collection-item"></i> Pages</a></li>

                        <li <?=$this->uri->segment(1) == 'list-posts' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('list-posts'); ?>"><i class="zmdi zmdi-collection-text"></i> Posts</a></li>

                        <!-- <li class="navigation__sub  navigation__sub--toggled">
                            <a href="#"><i class="zmdi zmdi-collection-text"></i> Posts -></a>

                            <ul>
                                <li class="navigation__active"><a href="<?=site_url('list-posts'); ?>"> List Posts</a></li>
                                <?php if ($this->fungsi->user_login()->usr_group_id == 1 && $this->fungsi->user_login()->usr_level_id == 1 || $this->fungsi->user_login()->usr_group_id == 1 && $this->fungsi->user_login()->usr_level_id == 2) { ?>
                                    <li class="navigation__active"><a href="<?=site_url('list-postscategories')?>"> List Categories Posts</a></li>
                                <?php }?>
                            </ul>
                        </li> -->

                        <li <?=$this->uri->segment(1) == 'list-gallery' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('list-gallery'); ?>"><i class="zmdi zmdi-collection-image-o"></i> Gallery</a></li>

                        <li <?=$this->uri->segment(1) == 'list-paket' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('list-paket'); ?>"><i class="zmdi zmdi-local-offer"></i> Paket</a></li>

                        <li <?=$this->uri->segment(1) == 'list-paket-prioritas' || $this->uri->segment(1) == '' ? 'class="navigation__active"' : ''; ?> ><a href="<?=site_url('list-paket-prioritas'); ?>"><i class="zmdi zmdi-local-offer"></i> Paket Prioritas</a></li>

                    </ul>
                </div>
            </aside>

            <section class="content">
            	<?=$contents?>
            </section>  
        </main>

        <!-- Javascript -->
        <!-- <?=base_url()?>assets/backend/vendors -->
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/popper.js/dist/umd/popper.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/jquery.scrollbar/jquery.scrollbar.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/jquery-scrollLock/jquery-scrollLock.min.js"></script>

        <script src="<?=base_url()?>assets/backend/vendors/bower_components/salvattore/dist/salvattore.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/flot/jquery.flot.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/flot/jquery.flot.resize.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/jqvmap/dist/jquery.vmap.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/jqvmap/dist/maps/jquery.vmap.world.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/peity/jquery.peity.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/moment/min/moment.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>

        <!-- Vendors: Data tables -->
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/jszip/dist/jszip.min.js"></script>
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>

        <!-- Light Gallery -->
        <script src="<?=base_url()?>assets/backend/vendors/bower_components/lightgallery/dist/js/lightgallery-all.min.js"></script>

        <!-- App functions and actions -->
        <script src="<?=base_url()?>assets/backend/js/app.min.js"></script>
        <script src="<?=base_url()?>assets/backend/ckeditor/ckeditor.js"></script>

        <!-- CK EDITOR -->
        <script>
            $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('editor1')
            //bootstrap WYSIHTML5 - text editor
            $('.textarea').wysihtml5()
            })
        </script>

        <script type="text/javascript">  
          $(function() {
          $('#vieworhide').change(function(){
            $('.voh').hide();
            $('#' + $(this).val()).show();
          });
        });
        </script>

        

    </body>

<!--Designed By ALpha-->
</html>