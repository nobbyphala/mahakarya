<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Kontak_kami extends CI_Controller {
	function __construct() {
        parent::__construct();
        $this->load->model('prestasi_model');
    }
	public function index()
	{
		$this->load->view('header');
		$this->load->view('include_tab');
		$this->load->view('link');
		$this->load->view('body_navbar');
		$this->load->view('kontak_kami');
		$this->load->view('footer');
	}
}
