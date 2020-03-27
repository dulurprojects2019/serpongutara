<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Packagepriority extends CI_Controller {

	function __construct(){
		parent::__construct();
		check_not_login();
	}

	public function index(){
		$data['packagepriority'] = $this->packagepriority_m->get_internet_package_priorityview();
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'List Packagepriority';

		$this->temp_backend->load('temp_backend', 'backend/package/priority/priority_list', $data);
	}

	// public function add(){
	// 	$data['iconbar'] = $this->global_m->get_iconbar();
	// 	$data['titlebar'] = 'Add Packagepriority';

	// 	$this->form_validation->set_rules('ipp_name', 'Nama Paket', 'required');
	// 	$this->form_validation->set_rules('ipp_tags', 'Tags Paket', 'required');
	// 	$this->form_validation->set_rules('ipp_images', 'Images packagepriority', 'callback_validate_image');

	// 	$this->form_validation->set_message('required', '%s Empty, Please Input..');

	// 	if($this->form_validation->run() === FALSE){
	// 		$this->temp_backend->load('temp_backend', 'backend/package/priority/priority_form_add', $data);
	// 	} else {
	// 		$config['upload_path'] = './assets/backend/img/packagepriority';
	// 		$config['allowed_types'] = 'jpg|png|jpeg';
	//		date_default_timezone_set('Asia/Jakarta');
	// 		$rename = date('d-m-Y His ').strtolower($this->input->post('ipp_name')).$_FILES["ipp_images"]['file_name'];
	// 		$config['file_name'] = $rename;

	// 		$this->load->helper('file');
	// 		$this->load->library('upload', $config);

	// 		if(!$this->upload->do_upload('ipp_images')){
	// 			$errors = array('error' => $this->upload->display_errors());
	// 			$images = 'noimagesheader.jpg';
	// 		} else {
	// 			$dataimagespackageprioritys = $this->upload->data();
	// 			$images = $dataimagespackageprioritys['file_name'];
	// 		}

	// 		$this->packagepriority_m->add_internet_package_priority($images);
	// 		redirect('list-paket-prioritas');
	// 	}		
	// }

	public function edit($id){
		$id = decrypt_url($id);
		$data['packagepriority'] = $this->packagepriority_m->get_internet_package_priority($id);
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'Edit Packagepriority';

		$this->form_validation->set_rules('ipp_name', 'Nama Paket', 'required');
		$this->form_validation->set_rules('ipp_tags', 'Tags Paket', 'required');
		$this->form_validation->set_rules('ipp_images', 'Images packagepriority', 'callback_validate_image');

		$this->form_validation->set_message('required', '%s Empty, Please Input..');

		if($this->form_validation->run() === FALSE){
			$this->temp_backend->load('temp_backend', 'backend/package/priority/priority_form_edit', $data);
		} else {
			$id = $this->input->post('ipp_id');
			$config['upload_path'] = './assets/backend/img/packagepriority';
			$config['allowed_types'] = 'jpg|png|jpeg';

			date_default_timezone_set('Asia/Jakarta');
			$rename = date('dmY His').strtolower($this->input->post('ipp_name'));
			$config['file_name'] = $rename;

			$this->load->library('upload', $config);

			if(!$this->upload->do_upload('ipp_images')){
				$errors = array('error' => $this->upload->display_errors());
				$images = $this->input->post('imagespackagepriority');
			} else {
				$data = $this->packagepriority_m->ambil_id_gambar($id);
				$path = './assets/backend/img/packagepriority/';
				$nama = $path.$data->ipp_images;

				if(file_exists($nama) && unlink($nama)){
					$dataimagespackageprioritys = $this->upload->data();
					$images = $dataimagespackageprioritys['file_name'];
				}
					$dataimagespackageprioritys = $this->upload->data();
					$images = $dataimagespackageprioritys['file_name'];
			}
			$this->packagepriority_m->update_internet_package_priority($images);
			redirect('list-paket-prioritas');
		}
	}

	public function validate_image() {
    $check = TRUE;
    if (isset($_FILES['ipp_images']) && $_FILES['ipp_images']['size'] != 0) {
        $allowedExts = array("jpeg", "jpg", "png", "JPG", "JPEG", "PNG");
        $allowedTypes = array(IMAGETYPE_PNG, IMAGETYPE_JPEG, IMAGETYPE_GIF);
        $extension = pathinfo($_FILES["ipp_images"]["name"], PATHINFO_EXTENSION);
        $detectedType = exif_imagetype($_FILES['ipp_images']['tmp_name']);
        $type = $_FILES['ipp_images']['type'];
        if (!in_array($detectedType, $allowedTypes)) {
            $this->form_validation->set_message('validate_image', 'Invalid Image Content!');
            $check = FALSE;
        }
        if(filesize($_FILES['ipp_images']['tmp_name']) > 3000000) {
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
		$data['packagepriority'] = $this->packagepriority_m->get_internet_package_priorityview($slug);
		$data['users'] = $this->global_m->get_users();
		$data['iconbar'] = $this->global_m->get_iconbar();
		$data['titlebar'] = 'View packagepriority';

		$this->temp_backend->load('temp_backend', 'backend/package/priority/priority_view', $data);
	}

	public function delete($id){
		$id = decrypt_url($id);
		$data = $this->packagepriority_m->ambil_id_gambar($id);//ambil id gambar	  
		$path = './assets/backend/img/packagepriority/';// lokasi gambar berada
		unlink($path.$data->ipp_images);// hapus data di folder dimana data tersimpan
		$this->packagepriority_m->delete_internet_package_priority($id);
		redirect('list-paket-prioritas');
	}
}
