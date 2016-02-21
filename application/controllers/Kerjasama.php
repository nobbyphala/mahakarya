<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kerjasama extends CI_Controller {
	function __construct() {
        parent::__construct();
        $this->load->model('prestasi_model');
    }
	public function index()
	{
		$data['h'] = $this->prestasi_model->show_pkm();
		$this->load->view('header');
		$this->load->view('include_tab');
		$this->load->view('link');
		$this->load->view('body_navbar');
		$this->load->view('kerjasama', $data);
		$this->load->view('footer');
	}
}
