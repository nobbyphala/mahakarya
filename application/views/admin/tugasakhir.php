
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Tugas Akhir
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Input Data
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
				
				<!--/.form input -->
				<div class="col-lg-12">
				<div class="col-lg-6">
				<div class="row">
					<form role="form" method="POST" enctype="multipart/form-data" action="<?php echo base_url();?>admin/submit_ta/">
						<div class="form-group">
							<label>Judul Tugas Akhir</label>
							<input name="judul_tugas_akhir" class="form-control">
								<p class="help-block"> Masukan judul dari tugas akhir anda disini</p>
						</div>
						<div class="form-group">

							<label>NRP</label>
							<input name="nrp_mahasiswa_tugas_akhir" class="form-control">
								<p class="help-block"> Masukan NRP user disini</p>
						</div>
						<div class="form-group">
							<label>NIP Dosen Pembimbing 1</label>
							<input name="nama_dosen_pembimbing_1" class="form-control">
								<p class="help-block"> Masukan NIP Dosen user disini</p>
						</div>
						<div class="form-group">
							<label>NIP Dosen Pembimbing 2</label>
							<input name="nama_dosen_pembimbing_2" class="form-control">
								<p class="help-block"> Masukan NIP Dosen user disini</p>

						</div>
				
				</div>
				</div>
                <div class="col-lg-6" style="padding-left:50px">
				<div class="row">
					
						<div class="form-group">
							<label>Deskripsi Tugas Akhir</label>
								<textarea name="deskripsi_tugas_akhir" class="form-control" rows="3"></textarea>
						</div>
						<div class="form-group">
							<label>RMK</label>
								<select class="form-control" name="rmk">
									<?php foreach ($h->result() as $row){?>
									<option value="<?php echo $row->id_rmk;?>"><?php echo $row->nama_rmk;?></option>
									<?php }?>
								</select>
						</div>
						
						<div class="form-group">
							<label>Poster Tugas Akhir</label>
							<input type="file" name="userfile" size="10" required>
						</div>
                              <div class="form-group">
							<label>Video Tugas Akhir</label>
							<input type="file" name="userfile2" size="10" required>
						</div>
                        <!--div class="form-group">
							<label>Demo Video Tugas Akhir</label>
							<input type="file" name="video_file" size="10">
						</div-->
											
							<br>
							<br>
                            <input class="btn btn-primary" type="submit">
								<!--button class="btn btn-primary" type="button" data-toggle="modal" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
									Submit
								</button-->
								<button type="reset" class="btn btn-default">Reset</button>
							<div class="modal" id="collapseExample" style="top:50%">
							<div class="col-lg-6" style="left:30%">
							  <div class="alert alert-success" style="margin-top:20px;">
								<center>
								<strong>Selamat! Input berhasil!</strong>
								</center>
							  </div>
							</div>
							</div>
					
							
					</form>
				</div>
				</div>
				
				</div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
