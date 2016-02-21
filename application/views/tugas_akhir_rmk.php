<script src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js" type="text/javascript"></script>

<div class="row" style="min-height:100vh">			
	<div class="col s12 m12">
		<div class="section">
		
		<a href="<?php echo base_url();?>tugas_akhir" class="waves-effect waves-light btn-flat" style="margin-top:5px; color:#CCC"><i class="mdi-hardware-keyboard-backspace left"></i>back</a>
			<h5 class="center" style=" background-color:#fff; color:#666;";>TUGAS AKHIR</h5>
			<!--   Icon Section   -->
			<div class="row" style="background-color:#fff; padding-top:30px; border-top:#0CF 1px dashed;">
               <table class="table table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                    	<th>NO</th>
                                        <th>NRP</th>
                                        <th>RMK</th>
                                        <th>JUDUL TA</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                <?php  $m=0;
						    foreach ($h->result() as $row)  
						    { $m=$m+1;
							  ?>
                                     
                                     <tr>
                                     <td align="center"><?php echo $m;?></td>
                                     <td><?php echo $row->NRP;?></td>
                                     <td><?php echo $row->nama_rmk;?></td>
							<td style="text-transform:capitalize"><a class="under" href="<?php echo base_url();?>tugas_akhir/rincian_ta/<?php echo $row->ID_TA;?>"><?php echo strtolower ($row->JUDUL_TA);?></a></td>
                                   
                                   </tr>
                                   <?php }?>
                                   </tbody>
                                   </table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $('#dataTables-example').DataTable({
    "sDom": '<"top">rt<"bottom"flp><"clear">'
  });
} );
</script>
