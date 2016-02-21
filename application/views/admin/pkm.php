<div id="page-wrapper">
     <div class="container-fluid">
          <!-- Page Heading -->
          <div class="row">
               <div class="col-lg-12">
                    <h1 class="page-header"> PKM </h1>
                    <ol class="breadcrumb">
                         <li> <i class="fa fa-dashboard"></i> <a href="index.html">Dashboard</a> </li>
                         <li class="active"> <i class="fa fa-edit"></i> Input Data </li>
                    </ol>
               </div>
          </div>
          <!-- /.row -->
          <!--/.form input -->
          <div class="col-lg-12">
                         <form role="form" method="POST" enctype="multipart/form-data" action="<?php echo base_url();?>admin/submit_pkm">
                         	<div class="form-group">
                                   <label>Tahun</label>
                                   <input name="tahun" class="form-control">
                                   <p class="help-block"> Contoh 2015</p>
                              </div>
                              <div class="form-group">
                                   <label>Judul PKM</label>
                                   <input name="judul" class="form-control">
                                   <p class="help-block"> Contoh : Kantong etnik hijau ramah lingkungan</p>
                              </div>
                              <div class="form-group">
							<label>KATEGORI</label>
								<select class="form-control" name="kategori">
                                   <option value="1">Gagasan Tertulis</option>
                                   <option value="2">Artikel Ilmiah</option>
                                   <option value="3">PKM-Pengabdian Kepada Masyarakat (PKM-M)</option>
                                   <option value="4">PKM-Penelitian (PKM-P)</option>
                                   <option value="5">PKM-Kewirausahaan (PKM-K)</option>
                                   <option value="6">PKM-Penerapan Teknologi (PKM-T)</option>
                                   <option value="7">PKM-Karsa Cipta (PKM-KC)</option>
								</select>
						</div>

                              <div class="form-group">
                                   <label>NRP1</label>
                                   <input name="nrp1" class="form-control">
                                   <p class="help-block"> contoh : 5113100090</p>
                              </div>
                              <div class="form-group">
                                   <label>NRP2</label>
                                   <input name="nrp2" class="form-control">
                                   <p class="help-block"> contoh : 5113100090</p>
                              </div>
                              <div class="form-group">
                                   <label>NRP3</label>
                                   <input name="nrp3" class="form-control">
                                   <p class="help-block"> contoh : 5113100090</p>
                              </div>
                              <div class="form-group">
                                   <label>NRP4</label>
                                   <input name="nrp4" class="form-control">
                                   <p class="help-block"> contoh : 5113100090</p>
                              </div>
                               <div class="form-group">
                                   <label>NRP5</label>
                                   <input name="nrp5" class="form-control">
                                   <p class="help-block"> contoh : 5113100090</p>
                              </div>
                               <div class="form-group">
                                   <label>DOSBING</label>
                                   <input name="dosbing" class="form-control">
                              </div>
                              <div class="form-group">
							<label>Ringkasan PKM</label>
								<textarea class="ckeditor"  rows="3" name="deskripsi" type="text"></textarea>
						</div>
                              <div class="form-group">
							<label>File pdf</label>
							<input type="file" name="userfile">
						</div>
                              
                              <input class="btn btn-primary" type="submit">
                         </form>
                         <div class="table-responsive" style="margin-top:30px">
                            <table class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Tahun</th>
                                        <th>Ajang</th>
                                        <th>Bidang</th>
                                     
                                    </tr>
									<tbody>
                                             <?php foreach ($m->result() as $row){?>
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
                                </thead>
                             </table>
                        </div>
               </div>
          </div>
     </div>
