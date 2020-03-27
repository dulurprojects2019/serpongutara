<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//package
$route['paket-prioritas'] = 'packagepriority/index';
$route['list-paket-prioritas'] = 'packagepriority/index';
$route['paket-prioritas/add'] = 'packagepriority/add';
$route['paket-prioritas/view/(:any)'] = 'packagepriority/view/$1';

//package
$route['list-paket'] = 'package/index';
$route['paket/add'] = 'package/add';
$route['paket/view/(:any)'] = 'package/view/$1';

//pagespostsview
$route['posts/health/(:any)'] = 'home/pages_posts_view/$1';
$route['posts/sports/(:any)'] = 'home/pages_posts_view/$1';
$route['posts/ekonomi/(:any)'] = 'home/pages_posts_view/$1';
$route['posts/culture/(:any)'] = 'home/pages_posts_view/$1';
$route['posts/video/(:any)'] = 'home/pages_posts_view/$1';

// $route['gallery'] = 'gallery/add';
$route['gallery'] = 'gallery/index';
$route['list-gallery'] = 'gallery/index';
$route['list-gallery/delete-gallery'] = 'gallery/deletegallery';

//posts
$route['posts'] = 'posts/index';
$route['list-posts'] = 'posts/index';
$route['posts/add'] = 'posts/add';
$route['posts/view/(:any)'] = 'posts/view/$1';

//categories posts
$route['postscategories'] = 'postscategories/index';
$route['list-postscategories'] = 'postscategories/index';
$route['postscategories/add'] = 'postscategories/add';
$route['postscategories/view/(:any)'] = 'postscategories/view/$1';

//pages
$route['pages'] = 'pages/index';
$route['list-pages'] = 'pages/index';
$route['pages/add'] = 'pages/add';
$route['pages/view/(:any)'] = 'pages/view/$1';

//icontab
$route['iconbar'] = 'iconbar/index';
$route['icon-bar'] = 'iconbar/index';

//icontab
$route['brandlogo'] = 'brandlogo/index';
$route['brand-logo'] = 'brandlogo/index';

//icontab
$route['slidehomepage'] = 'slidehomepage/index';
$route['slide-home-page'] = 'slidehomepage/index';

//profile
$route['view/profile'] = 'profile/index';

//levels
$route['users'] = 'users/index';
$route['list-users'] = 'users/index';
$route['users/add'] = 'users/add';
$route['users/view/(:any)'] = 'users/view/$1';

//levels
$route['levels'] = 'levels/index';
$route['list-levels'] = 'levels/index';
// $route['levels/add'] = 'levels/add';
$route['levels/view/(:any)'] = 'levels/view/$1';

//groups
$route['groups'] = 'groups/index';
$route['list-groups'] = 'groups/index';
// $route['groups/add'] = 'groups/add';
$route['groups/view/(:any)'] = 'groups/view/$1';

//homedashboard
$route['dashboard'] = 'backend/index';

//pagescategoriesview
$route['blog/(:any)'] = 'home/pages_posts_view/$1';
$route['events/(:any)'] = 'home/pages_posts_view/$1';

//pagespackageview
$route['paket/detail/(:any)'] = 'home/pages_package_view/$1';

//pagesmenusview
$route['(:any)'] = 'home/pages_menu_view/$1';

$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
