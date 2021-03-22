<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

	<header>
		<div class="row">
			<div class="container">
				<div class="logo">
					<?php
						if(has_custom_logo()){
							the_custom_logo();
						}
					?>
				</div>
					<div class="search-area">
						<?php get_search_form(); ?>
					</div>
				<nav class="nav-menu">
					<?php 
						if(has_nav_menu('primary')){
							wp_nav_menu(array(
								'theme_location' => 'primary',
								'container' => 'nav',
								'container_class' => 'nav-menu',
								'fallback_cb' => false
							));
						}
					?>
				</nav>
			</div>
		</div>	
	</header>