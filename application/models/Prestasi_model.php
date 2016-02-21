<?php

class prestasi_model extends CI_Model{
    function __construct() {
        parent::__construct();
        $this->load->database('default','true');
    }
	
	public function show_prestasi()
	{
		$this->db->order_by("tahun","desc");
		$query = $this->db->get('prestasi');
		return $query;
	}
	
		public function show_pkm()
	{
		$this->db->order_by("tahun","desc");
		$query = $this->db->get('pkm');
		return $query;
	}
	
	public function submit_prestasi($tahun, $ajang, $bidang, $tingkat, $peringkat)
	{
		$query = $this->db->query("call SP_SUBMIT_PRESTASI('$tahun', '$ajang', '$bidang', '$tingkat', '$peringkat');");
	}
	
	public function submit_pkm($tahun, $judul, $kategori, $nrp1, $nrp2, $nrp3, $nrp4, $nrp5, $dosbing, $ringkasan)
	{
		$query = $this->db->query("call SP_SUBMIT_PKM('$judul', '$kategori', '$nrp1', '$nrp2', '$nrp3', '$nrp4', '$nrp5', '$dosbing', '$tahun','$ringkasan');");
		return $query;
	}
}
?>
