<?php

get_header();
?>

	<main class="site-main">

		<section class="error-404 not-found">
			<header class="page-header">
				<h1 class="page-title"><?php esc_html_e( 'Nada encontrado.', 'medusa' ); ?></h1>
			</header>

			<div class="page-content">
				<p><?php esc_html_e( 'Nada encontrado aqui. Que tal fazer uma busca?', 'medusa' ); ?></p>

					<?php
					get_search_form();

					the_widget( 'WP_Widget_Recent_Posts' );
					?>


			</div>
		</section>

	</main>

<?php
get_footer();
