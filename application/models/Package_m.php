<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Package_m extends CI_Model {

	public function get_internet_package($id = FALSE){
		if($id === FALSE){
			$this->db->order_by('inp_id', 'DESC');
			$query = $this->db->get('internet_package');
			return $query->result_array();
		}
		$query = $this->db->get_where('internet_package', array('inp_id' => $id));
		return $query->row_array();
	}

	public function get_internet_packageview($slug = FALSE){
		if($slug === FALSE){
			$this->db->order_by('inp_id', 'ASC');
			$query = $this->db->get('internet_package');
			return $query->result_array();
		}
		$query = $this->db->get_where('internet_package', array('inp_slug' => $slug));
		return $query->row_array();
	}

	public function add_internet_package($images){
		$slug = url_title($this->input->post('inp_name'));
		$data = array(
			'inp_name' => $this->input->post('inp_name'),
			'inp_slug' => strtolower($slug),
			'inp_price' => $this->input->post('inp_price'),
			'inp_description' => $this->input->post('inp_description'),
			'inp_images' => $images,
			'inp_tags' => $this->input->post('inp_tags'),
			'inp_created_at' => $this->input->post('inp_created_at', array('type' => 'timestamp')),
			'inp_created_by' => $this->fungsi->user_login()->usr_id
		);
		return $this->db->insert('internet_package', $data);
	}

	public function update_internet_package($images){
		$slug = url_title($this->input->post('inp_name'));
		$data = array(
			'inp_name' => $this->input->post('inp_name'),
			'inp_slug' => strtolower($slug),
			'inp_price' => $this->input->post('inp_price'),
			'inp_description' => $this->input->post('inp_description'),
			'inp_images' => $images,
			'inp_tags' => $this->input->post('inp_tags'),
			'inp_edited_at' => $this->input->post('inp_edited_at', array('type' => 'timestamp')),
			'inp_edited_by' => $this->fungsi->user_login()->usr_id
		);
		$this->db->where('inp_id', $this->input->post('inp_id'));
		return $this->db->update('internet_package', $data);
	}

	public function ambil_id_gambar($id){
	$this->db->from('internet_package');
	$this->db->where('inp_id', $id);
	$result = $this->db->get('');
	// periksa ada datanya atau tidak
		if ($result->num_rows() > 0) {
		  return $result->row();//ambil datanya berdasrka row id
		}
	}

	public function delete_internet_package($id){
		$this->db->where('inp_id', $id);
		$this->db->delete('internet_package');
		return TRUE;
	}

}