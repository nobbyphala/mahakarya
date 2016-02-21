<div class="row" style="min-height:100vh">		
<h5 class="center" style=" background-color:#fff; color:#666; margin-top:20px">TUGAS AKHIR</h5>
<div style="background-color:#fff; margin:30px; border-top:#0CF 1px dashed;"></div>
	<div class="col s12 m9">
		<div class="section">
			
			<!--   Icon Section   -->
			<div class="row">
               <div class="row">
               <div class="col s12 m8">
                 <div class="row">
                 <form action="<?php echo base_url();?>tugas_akhir/search" method="get">
                   <div class="input-field col s12 m6">
                     <input  name="value" id="first_name2" type="text" class="validate">
                     <label class="active" for="first_name2">Pencarian Topik / NRP / Tahun</label>
                   </div>
                   <div class="input-field col s12 m6">
                   <button type="submit" class="waves-effect waves-light btn">CARI</button>
                   </form>
                   </div>
                 </div>
                 </div>
                 </div>
			<?php  
         foreach ($h->result() as $row)  
         {  
            ?>
				<a href="<?php echo base_url();?>tugas_akhir/rmk/<?php echo $row->id_rmk;?>"><div class="wow fadeIn col s12 m2 kotak2">
					<div class="gambar_kotak2" > <img src="<?php echo base_url(); ?>assets/img/folder.png" style="width:100%; height:100%;"/> </div>
					<div class="caption2">
						<p align="center"><?php echo $row->nama_rmk;?></p>
					</div>
				</div></a>
				<?php }?>
			</div>
		</div>
	</div>
     <div class="col s12 m3" style="border-left:#666 solid 1px">
     <h5 style="font-size:18px; padding:3px"><b>Most View</b></h5>
      <?php foreach ($most_view->result() as $row)  
         {  
            ?><a href="<?php echo base_url();?>tugas_akhir/rincian_ta/<?php echo $row->ID_TA;?>">
     <p style="font-size:10px" class="most_view"><?php echo $row->JUDUL_TA;?><br /><span style=" font-style:italic; color:#999">Total view: <?php echo $row->TOT_VIEW;?></span></p>
     </a>
     <?php }?>
     </div>
</div>