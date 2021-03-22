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
			<div class="uk-container">
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
					<nav id="sidenav" class="nav-menu">
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
				<a href="#" class="uk-navbar-toggle uk-hidden@s" uk-navbar-toggle-icon uk-toggle="target: #sidenav"></a>
			</div>
		</div>	
		
	</header>