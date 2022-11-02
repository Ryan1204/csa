<?php

class M_pembelian extends CI_Model{
	protected $_table = 'tbl_payment';
    protected $_table_v = 'tbl_vendor';
    protected $_table_s = 'tbl_supplier';


    public function ubah_status_pr($data, $id){
        $query = $this->db->set($data);
        $query = $this->db->where(['id' => $id]);
        $query = $this->db->update('purchase_order_hd');
        return $query;
    }
 function hapus_pr_dt($id)
    {
  $this->db->where('id_dt', $id);
  $this->db->delete('purchase_order_dt');
    }
    function save_approve_payment($atdnc_data,$id){
    $kondisi = "( ( ( id_payment  ='" . $id . "')) )";
    $this->db->where($kondisi);
    $this->db->update('tbl_payment', $atdnc_data);
    return TRUE;
    }
    function save_purchase_dt($number_,$detailName,$quantity,$detailNotes){
    if( !empty($number_) ) {
            $result = array();
                foreach($detailName AS $key => $val){
                     $result[] = array(
                      'number_po'   => $number_,
                      'detailName'   => $detailName[$key],
                      'quantity'   => $quantity[$key],
                      'detailNotes'   => $detailNotes[$key]
                     );
                }      
            //MULTIPLE INSERT TO DETAIL TABLE
        $this->db->insert_batch('purchase_order_dt', $result);
        }
    }
    function save_pr_sattle_dt($number_,$detailName,$itemNo,$unitPrice,$quantity,$detailNotes,$itemDiscPercent,$id_dt){
    $this->db->delete('purchase_order_dt', ['number_po' => $number_]);
    if( !empty($number_) ) {
            $result = array();
                foreach($detailName AS $key => $val){
                     $result[] = array(
                      'number_po'   => $number_,
                      'detailName'   => $detailName[$key],
                      'itemNo'   => $itemNo[$key],
                      'unitPrice'   => $unitPrice[$key],
                      'itemDiscPercent'   => $itemDiscPercent[$key],
                      'quantity'   => $quantity[$key],
                      'id_dt'   => $id_dt[$key],
                      'detailNotes'   => $detailNotes[$key]
                     );
                }      
            //MULTIPLE INSERT TO DETAIL TABLE
        $this->db->insert_batch('purchase_order_dt', $result);
        }
    }
    public function cekkode_purcahase_order()
    {
        $query = $this->db->query("SELECT MAX(number_) as number_ from purchase_order_hd");
        $hasil = $query->row();
        return $hasil->number_;
    }
    public function save_purchase_hd($data_hd) 
    {
    $query = $this->db->query("SELECT * FROM purchase_order_hd WHERE number_ = '{$data_hd['number_']}' ");
    $result = $query->result_array();
    $count = count($result);

    if (empty($count)) {

        $this->db->insert('purchase_order_hd', $data_hd); 
    }
    elseif ($count == 1) {
        $kondisi = "( ( ( number_ ='" . $data_hd['number_'] . "')) )";
        $this->db->where($kondisi);
        $this->db->update('purchase_order_hd', $data_hd); 
    }
    }
        public function save_update_pr_dt($update_dt) 
    {
    $query = $this->db->query("SELECT * FROM purchase_order_dt WHERE id_dt = '{$update_dt['id_dt']}' ");
    $result = $query->result_array();
    $count = count($result);

    if (empty($count)) {

        $this->db->insert('purchase_order_dt', $update_dt); 
    }
    elseif ($count == 1) {
        $kondisi = "( ( ( id_dt ='" . $update_dt['id_dt'] . "')) )";
        $this->db->where($kondisi);
        $this->db->update('purchase_order_dt', $update_dt); 
    }
    }
public function save_purchase_history($data_hs){
        return $this->db->insert('purchase_order_history', $data_hs);
    }

public function lihat_pr_status_1($id_lsp = NULL) {
        $this->db->select('purchase_order_hd.*', FALSE); 
        $this->db->select('leads_project.nama_project', FALSE);
        $this->db->from('purchase_order_hd');
        $this->db->join('leads_project', 'leads_project.id_lsp  = purchase_order_hd.project', 'left');
        $this->db->order_by('purchase_order_hd.number_', 'DESC');

        $kondisi = "( ( (  purchase_order_hd.status_po ='" . 1 . "' OR purchase_order_hd.status_po ='" . 2 . "' OR purchase_order_hd.status_po ='" . 3 . "' OR purchase_order_hd.status_po ='" . 4 . "' OR purchase_order_hd.status_po ='" . 5 . "')) )";
        $this->db->where($kondisi);
        if (!empty($id)) {
            $query_result = $this->db->get();
           $result = $query_result->result(); 
        } else {
          //  $this->db->where('laporan_proyek.kode_lap', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result(); 
        }

        return $result;
    }
    public function lihat_pr_status_9($id_lsp = NULL) {
        $this->db->select('purchase_order_hd.*', FALSE); 
        $this->db->select('leads_project.nama_project', FALSE);
        $this->db->from('purchase_order_hd');
        $this->db->join('leads_project', 'leads_project.id_lsp  = purchase_order_hd.project', 'left');
        $this->db->order_by('purchase_order_hd.number_', 'DESC');

        $kondisi = "( ( (  purchase_order_hd.status_po ='" . 9 . "' OR purchase_order_hd.status_po ='" . 10 . "')) )";
        $this->db->where($kondisi);
        if (!empty($id)) {
            $query_result = $this->db->get();
           $result = $query_result->result(); 
        } else {
          //  $this->db->where('laporan_proyek.kode_lap', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result(); 
        }

        return $result;
    }
    public function lihat_pr_status_6($id_lsp = NULL) {
        $this->db->select('purchase_order_hd.*', FALSE); 
        $this->db->select('leads_project.nama_project', FALSE);
        $this->db->from('purchase_order_hd');
        $this->db->join('leads_project', 'leads_project.id_lsp  = purchase_order_hd.project', 'left');
        $this->db->order_by('purchase_order_hd.number_', 'DESC');

        $kondisi = "( ( (  purchase_order_hd.status_po ='" . 6 . "'  )) )";
        $this->db->where($kondisi);
        if (!empty($id)) {
            $query_result = $this->db->get();
           $result = $query_result->result(); 
        } else {
          //  $this->db->where('laporan_proyek.kode_lap', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result(); 
        }

        return $result;
    }
        public function lihat_pr_status_7($id_lsp = NULL) {
        $this->db->select('purchase_order_hd.*', FALSE); 
        $this->db->select('leads_project.nama_project', FALSE);
        $this->db->from('purchase_order_hd');
        $this->db->join('leads_project', 'leads_project.id_lsp  = purchase_order_hd.project', 'left');
        $this->db->order_by('purchase_order_hd.number_', 'DESC');

        $kondisi = "( ( (  purchase_order_hd.status_po ='" . 7 . "'  )) )";
        $this->db->where($kondisi);
        if (!empty($id)) {
            $query_result = $this->db->get();
           $result = $query_result->result(); 
        } else {
          //  $this->db->where('laporan_proyek.kode_lap', $id_lsp);
            $query_result = $this->db->get();
            $result = $query_result->result(); 
        }

        return $result;
    }
public function lihat_pr_detail_hd($id = NULL) {
        $this->db->select('purchase_order_hd.*', FALSE); 
        $this->db->select('leads_project.nama_project', FALSE);
        $this->db->from('purchase_order_hd');
        $this->db->join('leads_project', 'leads_project.id_lsp  = purchase_order_hd.project', 'left');
        $this->db->order_by('purchase_order_hd.number_', 'DESC');

        $this->db->where('purchase_order_hd.id', $id);

              if (!empty($id)) {
            $query_result = $this->db->get();
            $result = $query_result->row();
        } else {
            $this->db->where('purchase_order_hd.id', $id);
            $query_result = $this->db->get();
            $result = $query_result->result();
        }

        return $result;
    }
    public function lihat_pr_detail_dt($id = NULL) {
        $this->db->select('purchase_order_dt.*', FALSE);
        $this->db->select('purchase_order_hd.number_,purchase_order_hd.id as id_hd', FALSE); 
        $this->db->from('purchase_order_dt');
        $this->db->join('purchase_order_hd', 'purchase_order_dt.number_po  = purchase_order_hd.number_', 'left');
        $this->db->where('purchase_order_hd.id', $id);
        $query_result = $this->db->get();
        $result = $query_result->result();
        return $result;
    }
    public function lihat_pr_detail_history($id = NULL) {
        $this->db->select(' purchase_order_history.*', FALSE);
        $this->db->select('purchase_order_hd.number_', FALSE); 
        $this->db->from(' purchase_order_history');
        $this->db->join('purchase_order_hd', ' purchase_order_history.no_po  = purchase_order_hd.number_', 'left');
        $this->db->where('purchase_order_hd.id', $id);
        $this->db->order_by('purchase_order_history.actiontime', 'DESC');
        $query_result = $this->db->get();
        $result = $query_result->result();
        return $result;
    }
}