<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index(){
		$data['pages'] = $this->home_m->get_pages();
		$data['posts'] = $this->home_m->get_all_posts();
		$data['events'] = $this->home_m->get_posts_events();
		$data['blog'] = $this->home_m->get_posts_blog();
		$data['package'] = $this->home_m->get_internet_package();
		$data['packagepriority'] = $this->home_m->get_internet_package_priority();
		$data['slidehomepage'] = $this->global_m->get_slidehomepage();
		$data['brandlogo'] = $this->global_m->get_brandlogo();
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'Home';
		
		$this->temp_frontend->load('temp_frontend', 'frontend/home/home', $data);
	}

	public function pages_menu_view($slug = NULL){
		$data['pagesview'] = $this->home_m->get_pagesview($slug);
		$data['postsview'] = $this->home_m->get_postsview();
		$data['pages'] = $this->home_m->get_pages();
		$data['events'] = $this->home_m->get_posts_events();
		$data['kontak'] = $this->home_m->get_pages_contact();
		$data['blog'] = $this->home_m->get_posts_blog();
		$data['package'] = $this->home_m->get_internet_package();
		$data['gallery'] = $this->home_m->get_gallery();
		$data['brandlogo'] = $this->brandlogo_m->get_brandlogo();
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'View Pages';

       //  //konfigurasi pagination
       //  $config['base_url'] = site_url('pemasangan'); //site url
       //  $config['total_rows'] = $this->db->count_all('gallery'); //total row
       //  $config['per_page'] = 6;  //show record per halaman
       //  $config["uri_segment"] = 3;  // uri parameter
       //  $choice = $config["total_rows"] / $config["per_page"];
       //  $config["num_links"] = floor($choice);
 
       //  // Membuat Style pagination untuk BootStrap v4
      	// $config['first_link']       = 'First';
       //  $config['last_link']        = 'Last';
       //  $config['next_link']        = 'Next';
       //  $config['prev_link']        = 'Prev';
       //  $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
       //  $config['full_tag_close']   = '</ul></nav></div>';
       //  $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
       //  $config['num_tag_close']    = '</span></li>';
       //  $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
       //  $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
       //  $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
       //  $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
       //  $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
       //  $config['prev_tagl_close']  = '</span>Next</li>';
       //  $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
       //  $config['first_tagl_close'] = '</span></li>';
       //  $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
       //  $config['last_tagl_close']  = '</span></li>';
 
       //  $this->pagination->initialize($config);
       //  $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
 
       //  //panggil function get_gallery_list yang ada pada mmodel home_m. 
       //  $data['data'] = $this->home_m->get_gallery_list($config["per_page"], $data['page']);           
 
       //  $data['pagination'] = $this->pagination->create_links();

		if(empty($data['pagesview'])){
			show_404();
		}

		$this->temp_frontend->load('temp_frontend', 'frontend/pages/pagesmenu/pages_menu_view', $data);
	}

	public function pages_package_view($slug = NULL){
		$data['package'] = $this->home_m->get_internet_package($slug);
		$data['packageview'] = $this->home_m->get_internet_packageview();
		$data['posts'] = $this->home_m->get_all_posts();
		$data['pages'] = $this->home_m->get_pages();
		$data['blog'] = $this->home_m->get_posts_blog();
		$data['brandlogo'] = $this->brandlogo_m->get_brandlogo();
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'View Pages';

		if(empty($data['package'])){
			show_404();
		}

		$this->temp_frontend->load('temp_frontend', 'frontend/pages/pagespackage/pages_package_view', $data);
	}



	public function pages_posts_view($slug = NULL){
		$data['postsview'] = $this->home_m->get_postsview($slug);
		$data['pages'] = $this->home_m->get_pages();
		$data['events'] = $this->home_m->get_posts_events();
		$data['blog'] = $this->home_m->get_posts_blog();
		$data['users'] = $this->global_m->get_users();
		$data['brandlogo'] = $this->brandlogo_m->get_brandlogo();
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'View Posts';

		if(empty($data['postsview'])){
			show_404();
		}

		$this->temp_frontend->load('temp_frontend', 'frontend/pages/pagesposts/pages_posts_view', $data);
	}

	// public function pages_menu_sub_view($slug = NULL){
	// 	$data['pagessubview'] = $this->home_m->get_subpages($slug);
	// 	$data['pages'] = $this->home_m->get_pages();
	// 	$data['postsview'] = $this->home_m->get_posts();
	// 	$data['subpagesservices'] = $this->home_m->get_subpages_services();
	// 	$data['subpagesaboutus'] = $this->home_m->get_subpages_aboutus();
	// 	$data['categoriesposts'] = $this->home_m->get_categoriesposts();
	// 	$data['postsvideo'] = $this->home_m->get_posts_video();
	// 	$data['users'] = $this->global_m->get_users();
	// 	$data['brandlogo'] = $this->brandlogo_m->get_brandlogo();
	// 	$data['iconbar'] = $this->global_m->get_iconbar();
	// 	$data['titlebar'] = 'View Pages';

	// 	$this->temp_frontend->load('temp_frontend', 'frontend/pages/pagessubmenu/pages_menu_sub_view', $data);
	// }

	// public function pages_categories_view($slug = NULL){
	// 	$data['categoriespostsview'] = $this->home_m->get_categories($slug);
	// 	$data['categoriesposts'] = $this->home_m->get_categoriesposts();
	// 	// $data['pagessubview'] = $this->home_m->get_subpages();
	// 	$data['pages'] = $this->home_m->get_pages();
	// 	$data['allpostsview'] = $this->home_m->get_all_posts();
	// 	$data['postsview'] = $this->home_m->get_posts();
	// 	$data['subpagesservices'] = $this->home_m->get_subpages_services();
	// 	$data['subpagesaboutus'] = $this->home_m->get_subpages_aboutus();
	// 	$data['postsvideo'] = $this->home_m->get_posts_video();
	// 	$data['users'] = $this->global_m->get_users();
	// 	$data['brandlogo'] = $this->brandlogo_m->get_brandlogo();
	// 	$data['iconbar'] = $this->global_m->get_iconbar();
	// 	$data['titlebar'] = 'View Pages';

	// 	$this->temp_frontend->load('temp_frontend', 'frontend/pages/pagescategories/pages_categories_view', $data);
	// }
}
