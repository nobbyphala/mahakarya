<!--   Icon Section   -->

<div class="row" style="background-color:#FFF; padding:10px; border-top:#0CF 1px solid; overflow:hidden">
<div class="wow slideInLeft col s12 m6 l3 kotak" >
<a href="<?php echo base_url();?>final_project"><img width="100%" src="<?php echo base_url(); ?>uploads/fp/img/final_project.jpg" alt=""></a>
</div>
<div class="wow slideInLeft col s12 m6 l3 kotak">
<a href="<?php echo base_url();?>tugas_akhir"><img width="100%" src="<?php echo base_url(); ?>uploads/fp/img/tugas_akhir.jpg" alt=""></a>
</div>
<div class="wow slideInRight col s12 m6 l3 kotak">
<a href="<?php echo base_url();?>prestasi"><img width="100%" src="<?php echo base_url(); ?>uploads/fp/img/prestasi.jpg" alt=""></a>
</div>
<div class="wow slideInRight col s12 m6 l3 kotak">
<a href="<?php echo base_url();?>tentang_kami"><img width="100%" src="<?php echo base_url(); ?>uploads/fp/img/tentang_kami.jpg" alt=""></a>
</div>
</div>
<script src="<?php echo base_url(); ?>assets/js/wow.min.js"></script> 
<script>
			wow = new WOW(
			  {
				animateClass: 'animated',
				offset:       150,
				callback:     function(box) {
				  console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
				}
			  }
			);
			wow.init();
		  </script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/owl-carousel/owl.carousel.js"></script> 
<script type="text/javascript">
         jQuery(document).ready(function($) {	  
           $("#owl-demo").owlCarousel({		
         	navigation : false,
			pagination :false,
			paginationNumbers : false,
			lazyLoad : true,
         	slideSpeed : 500,
         	paginationSpeed : 400,
         	autoPlay : true,
         	singleItem:true
           });
		   $("#owl-demo2").owlCarousel({		
         	navigation : false,
			pagination :false,
			paginationNumbers : false,
			lazyLoad : true,
         	slideSpeed : 50,
         	paginationSpeed : 200,
         	autoPlay : true,
         	singleItem:true
           });
		   $("#owl-demo3").owlCarousel({		
         	navigation : false,
			pagination :false,
			paginationNumbers : false,
			lazyLoad : true,
         	slideSpeed : 50,
         	paginationSpeed : 200,
         	autoPlay : true,
         	singleItem:true
           });
		   $("#owl-demo4").owlCarousel({		
         	navigation : false,
			pagination :false,
			paginationNumbers : false,
			lazyLoad : true,
         	slideSpeed : 50,
         	paginationSpeed : 200,
         	autoPlay : true,
         	singleItem:true
           });
		   $("#owl-demo5").owlCarousel({		
         	navigation : false,
			pagination :false,
			paginationNumbers : false,
			lazyLoad : true,
         	slideSpeed : 50,
         	paginationSpeed : 200,
         	autoPlay : true,
         	singleItem:true
           });
		   $("#owl-demo6").owlCarousel({		
         	navigation : false,
			pagination :false,
			paginationNumbers : false,
			lazyLoad : true,
         	slideSpeed : 50,
         	paginationSpeed : 200,
         	autoPlay : true,
         	singleItem:true
           });
		   $("#owl-demo7").owlCarousel({		
         	navigation : false,
			pagination :false,
			paginationNumbers : false,
			lazyLoad : true,
         	slideSpeed : 50,
         	paginationSpeed : 200,
         	autoPlay : true,
         	singleItem:true
           });
         });	 
      </script>
      <script src="<?php echo base_url();?>assets/js/jquery.vide.js"></script>
      <script type="application/javascript">
	  $('#block').vide('<?php echo base_url();?>assets/img/video', {
			volume: 1,
			  playbackRate: 1,
			  muted: true,
			  loop: false,
			  autoplay: true,
			  position: '50% 50%', // Similar to the CSS `background-position` property.
			  posterType: 'detect', // Poster image type. "detect" — auto-detection; "none" — no poster; "jpg", "png", "gif",... - extensions.
			  resizing: true, // Auto-resizing, read: https://github.com/VodkaBears/Vide#resizing
			  bgColor: 'transparent' // Allow custom background-color for Vide div
		});
	  </script>
       <script>
         $(document).ready(function(){
      $('.slider').slider({full_width: true});
    });
       </script>