<?php

class fp_model extends CI_Model{
    function __construct() {
        parent::__construct();
        $this->load->database('default','true');
    }
	
	public function show_matakuliah()
	{
		$this->db->reconnect();
		$query = $this->db->query('call SP_LIST_FP()');
		return $query;
	}
	
	public function show_tahun()
	{
		$query = $this->db->get('tahun_pelajaran');
		return $query;
	}
	
	public function matakuliah($id)
	{
		$this->db->where("mata_kuliah",$id);
		$query = $this->db->get('fp');
		return $query;
	}
	
	public function matakuliah_rinci($id)
	{
		$this->db->where("ID_FP",$id);
		$query = $this->db->get('fp');
		return $query;
	}
}
?>
