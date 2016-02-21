<br />

 <div class="row" style="padding:20px">
	<br />
			<table class="bordered hoverable">
				<thead>
			    	<tr>
						<th style="color:#00F">Tahun</th>
						<th style="color:#00F">Kategori</th>
						<th style="color:#00F">Judul</th>
					</tr>
				</thead>
				<tbody>
				<?php foreach ($h->result() as $row){?>
					<tr>
						<td><?php echo $row->tahun;?></td>
						<td><?php if($row->kategori=='0') echo "GT"; 
								else if($row->kategori=='1') echo "AI"; 
								else if($row->kategori=='2') echo "PKM-M";
								else if($row->kategori=='3') echo "PKM-P"; 
								else if($row->kategori=='4') echo "PKM-K";
								else if($row->kategori=='5') echo "PKM-T";
								else if($row->kategori=='6') echo "PKM-KC";?></td>
						<td><?php echo $row->judul_pkm;?></td>
				    </tr>
				<?php }?>
				</tbody>
			</table>
    </div>
  </div>