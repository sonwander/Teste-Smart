<?php
require get_template_directory().'/includes/setup.php';
require get_template_directory().'/includes/customizer/theme-customizer.php';

add_action('wp_enqueue_scripts', 'wpblog_add_google_fonts');
add_action('wp_enqueue_scripts', 'wm_theme_styles');
add_action('after_setup_theme', 'wm_after_setup');
add_action('widgets_init', 'wm_widgets');
add_action('customize_register', 'wm_customize_register');