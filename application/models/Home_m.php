<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home_m extends CI_Model {

	public function get_pages($id = FALSE){
		if($id === FALSE){
			$this->db->order_by('pgs_id', 'ASC');
			$query = $this->db->get('pages');
			return $query->result_array();
		}
		$query = $this->db->get_where('pages', array('pgs_id' => $id));
		return $query->row_array();
	}

	public function get_pagesview($slug = FALSE){
		if($slug === FALSE){
			$this->db->order_by('pgs_id', 'ASC');
			$query = $this->db->get('pages');
			return $query->result_array();
		}
		$query = $this->db->get_where('pages', array('pgs_slug' => $slug));
		return $query->row_array();
	}

	public function get_pages_contact($slug = FALSE){
		if($slug === FALSE){
			$this->db->order_by('pgs_id', 'ASC');
			$this->db->where('pgs_id', '6');
			$query = $this->db->get('pages');
			return $query->result_array();
		}
		$query = $this->db->get_where('pages', array('pgs_slug' => $slug));
		return $query->row_array();
	}

	public function get_all_posts($id = FALSE){
		if($id === FALSE){
			$this->db->order_by('pst_id', 'DESC');
			$query = $this->db->get('posts');
			return $query->result_array();
		}
		$query = $this->db->get_where('posts', array('pst_id' => $id));
		return $query->row_array();
	}

	public function get_postsview($slug = FALSE){
		if($slug === FALSE){
			$this->db->order_by('pst_id', 'DESC');
			$query = $this->db->get('posts');
			return $query->result_array();
		}
		$query = $this->db->get_where('posts', array('pst_slug' => $slug));
		return $query->row_array();
	}

	public function get_posts_events($id = FALSE){
		if($id === FALSE){
			$this->db->order_by('pst_id', 'DESC');
			$this->db->where('pst_categoriespost_id', '1');
			$query = $this->db->get('posts');
			return $query->result_array();
		}
		$query = $this->db->get_where('posts', array('pst_id' => $id));
		return $query->row_array();
	}

	public function get_posts_blog($id = FALSE){
		if($id === FALSE){
			$this->db->order_by('pst_id', 'DESC');
			$this->db->where('pst_categoriespost_id', '2');
			$query = $this->db->get('posts');
			return $query->result_array();
		}
		$query = $this->db->get_where('posts', array('pst_id' => $id));
		return $query->row_array();
	}

	public function get_internet_package($slug = FALSE){
		if($slug === FALSE){
			$this->db->order_by('inp_slug', 'ASC');
			$query = $this->db->get('internet_package');
			return $query->result_array();
		}
		$query = $this->db->get_where('internet_package', array('inp_slug' => $slug));
		return $query->row_array();
	}

	public function get_internet_packageview($slug = FALSE){
		if($slug === FALSE){
			$this->db->order_by('inp_slug', 'ASC');
			$query = $this->db->get('internet_package');
			return $query->result_array();
		}
		$query = $this->db->get_where('internet_package', array('inp_slug' => $slug));
		return $query->row_array();
	}

	public function get_internet_package_priority($id = FALSE){
		if($id === FALSE){
			$this->db->order_by('ipp_id', 'ASC');
			$query = $this->db->get('internet_package_priority');
			return $query->result_array();
		}
		$query = $this->db->get_where('internet_package_priority', array('ipp_id' => $id));
		return $query->row_array();
	}

	public function get_gallery($id = FALSE){
		if($id === FALSE){
			$this->db->order_by('glr_id', 'DESC');
			$query = $this->db->get('gallery');
			return $query->result_array();
		}
		$query = $this->db->get_where('gallery', array('glr_id' => $id));
		return $query->row_array();
	}

	// function data($number,$offset){
	// 	return $query = $this->db->get('gallery',$number,$offset)->result();		
	// }
 
	// function jumlah_data(){
	// 	return $this->db->get('gallery')->num_rows();
	// }

	// function get_gallery_list($limit, $start){
 //        $query = $this->db->get('gallery', $limit, $start);
 //        return $query;
 //    }

}