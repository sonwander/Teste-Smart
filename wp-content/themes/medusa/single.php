<?php

get_header();
?>

	<div class="post">

		<?php
		if ( have_posts() ) :

			while ( have_posts() ) :
				the_post();
			endwhile;

		endif;
		?>

	</div>

<?php
get_sidebar();
get_footer();
