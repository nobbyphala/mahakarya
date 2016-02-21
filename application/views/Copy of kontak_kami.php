<div class="row" style="min-height:100vh; ">		
	<div class="container">
      <?php if($h==1){ ?>
      <div class="row">
        <div class="col s12">
          <div class="card yellow lighten-4">
            <div class="card-content">
              <span>Data telah sukses tersubmit!</span>
            </div>
          </div>
        </div>
      </div>
      <?php }?>
      
     <h4 align="center" style="margin-top:50px">KONTAK KAMI</h4>
     <div class="col s12">
		<div class="border margin-bottom" style="margin-top:7px">
			<div class="padding">
				<form action="<?php echo base_url();?>kontak_kami/post" method="post" accept-charset="utf-8" enctype="multipart/form-data">
					<div class="input-field col s6">
						<input name="name" placeholder="Name" id="icon_prefix" type="text" class="validate" required>
					</div>
					<div class="input-field col s6">
						<input name="email" placeholder="Email" id="icon_prefix" type="email" class="validate" required>
					</div>
					<div class="input-field col s12">
						<input name="subject" placeholder="Subject" id="icon_prefix" type="text" class="validate" required>
					</div>
					<div class="input-field col s12">
						<textarea name="message" id="textarea1" class="materialize-textarea" required></textarea>
						<label for="textarea1">Message</label>
					</div>


					<div class="center">
						<button type="submit" class="btn margin-top" style="width:100%;">submit</button>
					</div>
				</form>
			</div>
		</div>

     </div>
</div>
</div>

