<footer  class="site-footer">
	<div class="container widget-container">
		<div class=" footer-widgets">
			<div class="container row">
				<?php if(is_active_sidebar('wm_footer_sidebar')){dynamic_sidebar('wm_footer_sidebar');}?>
			</div>
				<div class="container contact-social">
					<div class="info">
						9825 S 500W<br>
						Sandy, UT 84070<br>
						Support: 801.352.9500<br>
						Sales: 855.303.8806<br>
						info@medusarcm.com
					</div>
					<div class="social">
						<div class="social-icons">
							<?php if(get_theme_mod('wm_twitter')): ?>
							<a href="<?php echo get_theme_mod('wm_twitter'); ?>" target="_blank">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/images/twitter.png" />
							<?php endif; ?>

							<?php if(get_theme_mod('wm_facebook')): ?>
							<a href="<?php echo get_theme_mod('wm_facebook'); ?>" target="_blank">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/images/facebook.png" />
							<?php endif; ?>

							<?php if(get_theme_mod('wm_instagram')): ?>
							<a href="<?php echo get_theme_mod('wm_instagram'); ?>" target="_blank">
							<img src="<?php echo get_template_directory_uri(); ?>/assets/images/instagram.png" />
							<?php endif; ?>
						</div>
					</div>	
				</div>
		</div>
	</div>
	<div class="main-footer">
		<div class="main-footer-left">
			@ 2020 MedUSA | All rights reserved
		</div>
		<div class="main-footer-right">
			<a href="<?php echo esc_url('/wordpress/privacy-policy/'); ?>">Privacy Policy </a>
			<a href="<?php echo esc_url('/wordpress/terms-of-service/'); ?>">Terms of Service</a>

		</div>
	</div>
</footer>

</body>
</html>
