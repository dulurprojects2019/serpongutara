<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Packagepriority_m extends CI_Model {

	public function get_internet_package_priority($id = FALSE){
		if($id === FALSE){
			$this->db->order_by('ipp_id', 'DESC');
			$query = $this->db->get('internet_package_priority');
			return $query->result_array();
		}
		$query = $this->db->get_where('internet_package_priority', array('ipp_id' => $id));
		return $query->row_array();
	}

	public function get_internet_package_priorityview($slug = FALSE){
		if($slug === FALSE){
			$this->db->order_by('ipp_id', 'ASC');
			$query = $this->db->get('internet_package_priority');
			return $query->result_array();
		}
		$query = $this->db->get_where('internet_package_priority', array('ipp_slug' => $slug));
		return $query->row_array();
	}

	// public function add_internet_package_priority($images){
	// 	$slug = url_title($this->input->post('ipp_name'));
	// 	$data = array(
	// 		'ipp_name' => $this->input->post('ipp_name'),
	// 		'ipp_slug' => strtolower($slug),
	// 		'ipp_description' => $this->input->post('ipp_description'),
	// 		'ipp_images' => $images,
	// 		'ipp_tags' => $this->input->post('ipp_tags'),
	// 		'ipp_created_at' => $this->input->post('ipp_created_at', array('type' => 'timestamp')),
	// 		'ipp_created_by' => $this->fungsi->user_login()->usr_id
	// 	);
	// 	return $this->db->insert('internet_package_priority', $data);
	// }

	public function update_internet_package_priority($images){
		$slug = url_title($this->input->post('ipp_name'));
		$data = array(
			'ipp_name' => $this->input->post('ipp_name'),
			'ipp_slug' => strtolower($slug),
			'ipp_description' => $this->input->post('ipp_description'),
			'ipp_images' => $images,
			'ipp_tags' => $this->input->post('ipp_tags'),
			'ipp_edited_at' => $this->input->post('ipp_edited_at', array('type' => 'timestamp')),
			'ipp_edited_by' => $this->fungsi->user_login()->usr_id
		);
		$this->db->where('ipp_id', $this->input->post('ipp_id'));
		return $this->db->update('internet_package_priority', $data);
	}

	public function ambil_id_gambar($id){
	$this->db->from('internet_package_priority');
	$this->db->where('ipp_id', $id);
	$result = $this->db->get('');
	// periksa ada datanya atau tidak
		if ($result->num_rows() > 0) {
		  return $result->row();//ambil datanya berdasrka row id
		}
	}

	public function delete_internet_package_priority($id){
		$this->db->where('ipp_id', $id);
		$this->db->delete('internet_package_priority');
		return TRUE;
	}

}