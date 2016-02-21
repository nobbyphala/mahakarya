<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Tugas_akhir extends CI_Controller {
	function __construct() {
        parent::__construct();
	    $this->load->model('tugas_akhir_model');
    }
	public function index()
	{
		$data['most_view']= $this->tugas_akhir_model->get_tot_view();
		$data['h'] = $this->tugas_akhir_model->show_rmk();
		$this->load->view('header');
		$this->load->view('body_navbar');
		$this->load->view('tugas_akhir', $data);
		$this->load->view('footer');
	}

	public function search()
	{
		$value = $this->input->get('value');
		$data['h'] = $this->tugas_akhir_model->search($value);
		$this->load->view('header');
		$this->load->view('body_navbar');
		$this->load->view('tugas_akhir_rmk',$data);
		$this->load->view('footer');
	}
	
	public function rmk($id)
	{
		$data['h'] = $this->tugas_akhir_model->rmk($id);
		$this->load->view('header');
		$this->load->view('body_navbar');
		$this->load->view('tugas_akhir_rmk',$data);
		$this->load->view('footer');
	}

	public function rincian_ta($id)
	{
		$data['h'] = $this->tugas_akhir_model->rmk_rinci($id);
		$this->load->view('header');
		$this->load->view('body_navbar');
		$this->load->view('tugas_akhir _rinci', $data);
		$this->load->view('footer');
	}
}
