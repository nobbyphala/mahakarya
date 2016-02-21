<div id="page-wrapper">
     <div class="container-fluid">
          <!-- Page Heading -->
          <div class="row">
               <div class="col-lg-12">
                    <h1 class="page-header"> Prestasi </h1>
                    <ol class="breadcrumb">
                         <li> <i class="fa fa-dashboard"></i> <a href="index.html">Dashboard</a> </li>
                         <li class="active"> <i class="fa fa-edit"></i> Input Data </li>
                    </ol>
               </div>
          </div>
          <!-- /.row -->
          <!--/.form input -->
          <div class="col-lg-12">
                         <form role="form" method="POST" enctype="multipart/form-data" action="<?php echo base_url();?>admin/submit_prestasi">
                         	<div class="form-group">
                                   <label>Tahun</label>
                                   <input name="tahun" class="form-control">
                                   <p class="help-block"> Masukan nama ajang cotoh : gemastik</p>
                              </div>
                              <div class="form-group">
                                   <label>Ajang</label>
                                   <input name="ajang" class="form-control">
                                   <p class="help-block"> Masukan nama ajang cotoh : gemastik</p>
                              </div>
                              <div class="form-group">
                                   <label>Bidang</label>
                                   <input name="bidang" class="form-control">
                                   <p class="help-block"> Masukan nama bidang kompetisi contoh : Keamanan Jaringan</p>
                              </div>
                              <div class="form-group">
                                   <label>Tingkat</label>
                                   <input name="tingkat" class="form-control">
                                   <p class="help-block"> Masukan tingkat kompetisi contoh : Nasional</p>
                              </div>
                              <div class="form-group">
                                   <label>Peringkat</label>
                                   <input name="peringkat" class="form-control">
                                   <p class="help-block"> Masukan Peringkat kompetisi contoh : Juara 1 </p>
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
                                        <th>Tingkat</th>
                                        <th>Peringkat</th>
                                     
                                    </tr>
									<tbody>
                                             <?php foreach ($h->result() as $row){?>
                                             <tr>
										<td><?php echo $row->TAHUN;?></td>
										<td><?php echo $row->AJANG;?></td>
										<td><?php echo $row->BIDANG;?></td>
                                                  <td><?php echo $row->TINGKAT;?></td>
                                                  <td><?php echo $row->PERINGKAT;?></td>
                                                  </tr>
                                             <?php }?>
									</tbody>
                                </thead>
                             </table>
                        </div>
               </div>
          </div>
     </div>
