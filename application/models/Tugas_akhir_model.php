<?php

class tugas_akhir_model extends CI_Model{
    function __construct() {
        parent::__construct();
        $this->load->database('default','true');
    }
	
	public function show_rmk()
	{
		$this->db->reconnect();
		$query = $this->db->get('rmk');
		return $query;
	}
	
	public function rmk($id)
	{
		$this->db->reconnect();
		$query = $this->db->query("call SP_LIST_TA('$id')");
		return $query;
	}
	
	public function rmk_rinci($id)
	{
		$this->db->reconnect();
		$query = $this->db->query("call SP_RMK_RINCI('$id')");
		return $query;
	}
	
	public function search($value)
	{
		$this->db->reconnect();
		$query = $this->db->query("call SP_CARI_JUDUL_TA('$value')");
		return $query;
	}
	
	public function get_tot_view()
	{
		$this->db->reconnect();
		$query = $this->db->query("call SP_MOST_VIEW_TA()");
		return $query;
	}
}
?>
