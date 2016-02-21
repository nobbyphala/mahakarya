<div style="display:block; width:100%; height:3px; background-color:#0082c6; z-index:100"></div>
<footer class="page-footer" style="background-color:#1a1a1a; margin-top:0">
	<div class="row">
		<div class="col s12">
			<div class="col l6 s12">
				<h5 class="white-text">Mahakarya-TC</h5>
				<p class="grey-text text-lighten-4">
                Jurusan Teknik Informatika<br>
				Fakultas Teknologi Informasi<br>
				Institut Teknologi Sepuluh Nopember<br><br>

				Jl. Teknik Kimia, Gedung Teknik Informatika, Kampus ITS Sukolilo, Surabaya, 60111<br>
				Telp: +6231 – 5939214<br>
				Fax: +6231 – 5913804<br>
				Email: informatika[at]if.its.ac.id</p>
			</div>
			<div class="col l3 s12">
				<h5 class="white-text">Navigasi</h5>
				<ul>
					<li><a target="_blank" class="white-text" href="http://its.ac.id">Institut Teknologi Sepuluh Nopember</a></li>
					<li><a target="_blank" class="white-text" href="http://if.its.ac.id">Teknik Informatika ITS</a></li>
					<li><a target="_blank" class="white-text" href="http://hmtc.if.its.ac.id">HMTC ITS</a></li>
				</ul>
			</div>
			<div class="col l3 s12">
				<h5 class="white-text">Media Sosial</h5>
				<ul>
					<li><a target="_blank" class="white-text" href="https://www.facebook.com/HMTCFTIf/?fref=ts">Facebook</a></li>
</ul>
			</div>
		</div>
	</div>
	<div class="footer-copyright">
		<div class="row" style="background-color:#171717">
			<div class="col s12 m10">Copyright &copy; Mahakarya-TC | Teknik Informatika ITS | 2015</div>
               <div class="col s12 m2"><span style="float:right"><b>
			<?php $this->db->reconnect(); $query = $this->db->query('call SP_GET_TOT_VIEW()'); foreach ($query->result() as $row){echo $row->tot_view;}?> 
               total views</b></span></div>
		</div>
	</div>
</footer>
</body></html>