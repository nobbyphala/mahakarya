<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Admin extends CI_Controller {
	function __construct() {
        parent::__construct();
        $this->load->model('insert_model');
        $this->load->model('tugas_akhir_model');
       }
	   
	public function index()
	{
		$this->load->view('admin/header');
		$this->load->view('admin/index');
		$this->load->view('admin/footer');
	}
	
		public function final_project_tambah()
	{
		$this->load->view('admin/header');
		$this->load->view('admin/finalproject');
		$this->load->view('admin/footer');
	}
		public function final_project_edit()
	{
		$data['h'] = $this->insert_model->showfp();
		$this->load->view('admin/header');
		$this->load->view('admin/finalproject_edit', $data) ; 
		$this->load->view('admin/footer');
	}
		public function final_project_hapus()
	{
		$this->load->view('admin/header');
		$this->load->view('admin/finalproject_hapus');
		$this->load->view('admin/footer');
	}
	public function tugas_akhir()
	{
		$this->load->model('tugas_akhir_model');
		$data['h'] = $this->tugas_akhir_model->show_rmk();
		$this->load->view('admin/header');
		$this->load->view('admin/tugasakhir',$data);
		$this->load->view('admin/footer');
	}
	public function tugas_akhir_edit()
	{
		$this->load->view('admin/header');
		$this->load->view('admin/tugasakhir_edit');
		$this->load->view('admin/footer');
	}
	public function tugas_akhir_hapus()
	{
		$this->load->view('admin/header');
		$this->load->view('admin/tugasakhir_hapus');
		$this->load->view('admin/footer');
	}
	public function karya()
	{
		$this->load->view('admin/header');
		$this->load->view('admin/karya');
		$this->load->view('admin/footer');
	}
	public function karya_edit()
	{
		$this->load->view('admin/header');
		$this->load->view('admin/karya_edit');
		$this->load->view('admin/footer');
	}
	public function karya_hapus()
	{
		$this->load->view('admin/header');
		$this->load->view('admin/karya_hapus');
		$this->load->view('admin/footer');
	}

	//prestasi
	public function tambah_prestasi()
	{
		$this->load->model('prestasi_model');
		$data['h'] = $this->prestasi_model->show_prestasi();
		$this->load->view('admin/header');
		$this->load->view('admin/prestasi', $data);
		$this->load->view('admin/footer');
	}
	
	public function tambah_pkm()
	{
		$this->load->model('prestasi_model');
		$data['m'] = $this->prestasi_model->show_pkm();
		$data['h'] = $this->prestasi_model->show_pkm();
		$this->load->view('admin/header');
		$this->load->view('admin/pkm', $data);
		$this->load->view('admin/footer');
	}
	
	public function submit_pkm()
	{
		$tahun = $this->input->post('tahun');
		$judul = $this->input->post('judul');
		$kategori = $this->input->post('kategori');
		$nrp1 = $this->input->post('nrp1');
		$nrp2 = $this->input->post('nrp2');
		$nrp3 = $this->input->post('nrp3');
		$nrp4 = $this->input->post('nrp4');
		$nrp5 = $this->input->post('nrp5');
		$dosbing = $this->input->post('dosbing');
		$ringkasan = $this->input->post('ringkasan');
		$this->load->model('prestasi_model');
		$hasil = $this->prestasi_model->submit_pkm($tahun, $judul, $kategori, $nrp1, $nrp2, $nrp3, $nrp4, $nrp5, $dosbing, $ringkasan);

		$id_terakhir='';
          foreach ($hasil->result() as $row)
				{
				   $id_terakhir = $row->id_terakhir;
				}      		
			
		$config['upload_path']          = './uploads/pkm';
		$config['allowed_types']        = 'pdf';
		$config['file_name']		  = $id_terakhir;
          $config['overwrite']            = TRUE; 

		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload())
		{
            echo $this->upload->display_errors();
		}
		else
		{
			redirect('/admin/tambah_pkm', 'refresh');	
		}
		
	}
	
	public function submit_prestasi()
	{
		$tahun = $this->input->post('tahun');
		$ajang = $this->input->post('ajang');
		$bidang = $this->input->post('bidang');
		$tingkat = $this->input->post('bidang');
		$peringkat = $this->input->post('peringkat');
		$this->load->model('prestasi_model');
		$this->prestasi_model->submit_prestasi($tahun, $ajang, $bidang, $tingkat, $peringkat);
		redirect('/admin/tambah_prestasi', 'refresh');
	}

	public function submit_fp()
	{

		$judul=$this->input->post('judul');
		$nrp1=$this->input->post('nrp1');
		$nrp2=$this->input->post('nrp2');
		$nrp3=$this->input->post('nrp3');
		$nrp4=$this->input->post('nrp4');
		$nrp5=$this->input->post('nrp5');
		$nrp6=$this->input->post('nrp6');
		$deskripsi=$this->input->post('deskripsi');
		$semester=$this->input->post('semester');
		$nip=$this->input->post('nip');
		$matkul=$this->input->post('matkul');
		$screenshot=$this->input->post('screenshot');
		$video=$this->input->post('video');
		$demo=$this->input->post('demo');
			
		$this->insert_model->infp($judul,$nrp1,$nrp2,$nrp3,$nrp4,$nrp5,$nrp6,$deskripsi,$semester,$nip,$matkul,$screenshot,$video,$demo);
		$this->load->view('admin/header');
		$this->load->view('admin/finalproject');
		$this->load->view('admin/footer');
	}
	
	public function submit_ta()
	{
		$data = array(
        'judul' => $this->input->post('judul_tugas_akhir'),
        'nrp'=>$this->input->post('nrp_mahasiswa_tugas_akhir'),
        'deskripsi'=>$this->input->post('deskripsi_tugas_akhir'),
        'rmk'=>$this->input->post('rmk'),
        'dosbing1'=>$this->input->post('nama_dosen_pembimbing_1'),
        'dosbing2'=>$this->input->post('nama_dosen_pembimbing_2'),
        'tipe'=>'',
            );

		$hasil = $this->tugas_akhir_model->tambah_ta($data);

		$id_terakhir='';
          foreach ($hasil->result() as $row)
				{
				   $id_terakhir = $row->id_terakhir;
				}      		
			
		$config['upload_path']          = './uploads/ta/gambar_asli';
		$config['allowed_types']        = 'gif|jpg|png|jpeg';
		$config['file_name']			= $id_terakhir;
          $config['overwrite']            = TRUE; 

		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload(userfile))
		{
            echo $this->upload->display_errors();
		}
		else
		{
                $data['upload_data'] = $this->upload->data();
                $this->load->model('tugas_akhir_model');
		        $type=$data['upload_data']['file_ext']; 
		       	$this->tugas_akhir_model->update_id($id_terakhir,$type);

                $image_data = $this->upload->data();
				$lala['image_library']  = 'gd2';
				$lala['source_image']   =  $image_data['full_path'];
				$lala['create_thumb'] 	= TRUE;
				$lala['new_image'] 		= './uploads/ta/thumb';
				$lala['maintain_ratio'] = TRUE;
				$lala['width']         	= 800;
                $lala['overwrite'] 		= TRUE; 
                $this->load->library('image_lib', $lala);

				if ( ! $this->image_lib->resize())
				{
        			echo $this->image_lib->display_errors();
				}
		}
		
		$config['upload_path']          = './uploads/ta/video';
		$config['file_name']			= $id_terakhir;
          $config['overwrite']            = TRUE; 

		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload(userfile2))
		{
            echo $this->upload->display_errors();
		}
		else
		{
			redirect('admin/tugas_akhir');
			}
	}
	
}
