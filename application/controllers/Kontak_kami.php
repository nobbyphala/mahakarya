<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Kontak_kami extends CI_Controller {
	function __construct() {
        parent::__construct();
        $this->load->model('prestasi_model');
    }
	public function index()
	{
		$data['h']='0';
		$this->load->view('header');
		$this->load->view('include_tab');
		$this->load->view('link');
		$this->load->view('body_navbar');
		$this->load->view('kontak_kami', $data);
		$this->load->view('footer');
	}
	
	public function post(){
		$nama = $this->input->post('name');
		$email = $this->input->post('email');
		$subjek = $this->input->post('subject');
		$pesan = $this->input->post('message');
		$query = $this->db->query("call SP_POST_KONTAK_KAMI('$nama','$email','$subjek','$pesan')");
		$data['h']='1';
		$this->load->view('header');
		$this->load->view('include_tab');
		$this->load->view('link');
		$this->load->view('body_navbar');
		$this->load->view('kontak_kami', $data);
		$this->load->view('footer');
	}
}
