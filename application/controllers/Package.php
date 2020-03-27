<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Package extends CI_Controller {

	function __construct(){
		parent::__construct();
		check_not_login();
	}

	public function index(){
		$data['package'] = $this->package_m->get_internet_packageview();
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'List package';

		$this->temp_backend->load('temp_backend', 'backend/package/package/package_list', $data);
	}

	public function add(){
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'Add package';

		$this->form_validation->set_rules('inp_name', 'Nama Paket', 'required');
		$this->form_validation->set_rules('inp_price', 'Harga Paket', 'required');
		$this->form_validation->set_rules('inp_tags', 'Tags Paket', 'required');
		$this->form_validation->set_rules('inp_images', 'Images package', 'callback_validate_image');

		$this->form_validation->set_message('required', '%s Empty, Please Input..');

		if($this->form_validation->run() === FALSE){
			$this->temp_backend->load('temp_backend', 'backend/package/package/package_form_add', $data);
		} else {
			$config['upload_path'] = './assets/backend/img/package';
			$config['allowed_types'] = 'jpg|png|jpeg';

			date_default_timezone_set('Asia/Jakarta');
			$rename = date('d-m-Y His ').strtolower($this->input->post('inp_name'));
			$config['file_name'] = $rename;

			$this->load->helper('file');
			$this->load->library('upload', $config);

			if(!$this->upload->do_upload('inp_images')){
				$errors = array('error' => $this->upload->display_errors());
				$images = 'noimagesheader.jpg';
			} else {
				$dataimagespackages = $this->upload->data();
				$images = $dataimagespackages['file_name'];
			}

			$this->package_m->add_internet_package($images);
			redirect('list-paket');
		}		
	}

	public function edit($id){
		$id = decrypt_url($id);
		$data['package'] = $this->package_m->get_internet_package($id);
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'Edit package';

		$this->form_validation->set_rules('inp_name', 'Nama Paket', 'required');
		$this->form_validation->set_rules('inp_price', 'Harga Paket', 'required');
		$this->form_validation->set_rules('inp_tags', 'Tags Paket', 'required');
		$this->form_validation->set_rules('inp_images', 'Images package', 'callback_validate_image');

		$this->form_validation->set_message('required', '%s Empty, Please Input..');

		if($this->form_validation->run() === FALSE){
			$this->temp_backend->load('temp_backend', 'backend/package/package/package_form_edit', $data);
		} else {
			$id = $this->input->post('inp_id');
			$config['upload_path'] = './assets/backend/img/package';
			$config['allowed_types'] = 'jpg|png|jpeg';

			date_default_timezone_set('Asia/Jakarta');
			$rename = date('dmY His').strtolower($this->input->post('inp_name'));
			$config['file_name'] = $rename;

			$this->load->library('upload', $config);

			if(!$this->upload->do_upload('inp_images')){
				$errors = array('error' => $this->upload->display_errors());
				$images = $this->input->post('imagespackage');
			} else {
				$data = $this->package_m->ambil_id_gambar($id);
				$path = './assets/backend/img/package/';
				$nama = $path.$data->inp_images;

				if(file_exists($nama) && unlink($nama)){
					$dataimagespackages = $this->upload->data();
					$images = $dataimagespackages['file_name'];
				}
					$dataimagespackages = $this->upload->data();
					$images = $dataimagespackages['file_name'];
			}
			$this->package_m->update_internet_package($images);
			redirect('list-paket');
		}
	}

	public function validate_image() {
    $check = TRUE;
    if (isset($_FILES['inp_images']) && $_FILES['inp_images']['size'] != 0) {
        $allowedExts = array("jpeg", "jpg", "png", "JPG", "JPEG", "PNG");
        $allowedTypes = array(IMAGETYPE_PNG, IMAGETYPE_JPEG, IMAGETYPE_GIF);
        $extension = pathinfo($_FILES["inp_images"]["name"], PATHINFO_EXTENSION);
        $detectedType = exif_imagetype($_FILES['inp_images']['tmp_name']);
        $type = $_FILES['inp_images']['type'];
        if (!in_array($detectedType, $allowedTypes)) {
            $this->form_validation->set_message('validate_image', 'Invalid Image Content!');
            $check = FALSE;
        }
        if(filesize($_FILES['inp_images']['tmp_name']) > 3000000) {
            $this->form_validation->set_message('validate_image', 'The Image file size shoud not exceed 3MB!');
            $check = FALSE;
        }
        if(!in_array($extension, $allowedExts)) {
            $this->form_validation->set_message('validate_image', "Invalid file extension {$extension}, Only .jpeg | .jpg | .png format is allowed");
            $check = FALSE;
        }
    }
    return $check;
	}

	public function view($slug = NULL){
		$data['package'] = $this->package_m->get_internet_packageview($slug);
		$data['users'] = $this->global_m->get_users();
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'View package';

		$this->temp_backend->load('temp_backend', 'backend/package/package/package_view', $data);
	}

	public function delete($id){
		$id = decrypt_url($id);
		$data = $this->package_m->ambil_id_gambar($id);//ambil id gambar	  
		$path = './assets/backend/img/package/';// lokasi gambar berada
		unlink($path.$data->inp_images);// hapus data di folder dimana data tersimpan
		$this->package_m->delete_internet_package($id);
		redirect('list-paket');
	}
}
