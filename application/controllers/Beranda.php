<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Beranda extends CI_Controller {
	function __construct() {
        parent::__construct();
        $this->load->database('default','true');
    }
	public function index()
	{
		$query = $this->db->query('call SP_ADD_TOT_VIEW()');
		$this->load->view('header');
		$this->load->view('beranda/link_beranda');
		$this->load->view('body_navbar');
		$this->load->view('beranda/beranda');
		$this->load->view('beranda/prestasi_beranda');
		$this->load->view('footer');
	}
}
