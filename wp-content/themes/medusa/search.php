<?php get_header(); ?>

	<section>
	<div class="uk-container">

		<?php
		if ( have_posts() ) :

			while ( have_posts() ) :
				the_post();
			endwhile;

		endif;
		?>

	</div>
	<?php get_sidebar(); ?>
	</section>

<?php
get_footer();
