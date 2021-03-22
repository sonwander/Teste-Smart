<?php
function wm_theme_styles(){
    wp_enqueue_style('bootstrap_css', get_template_directory_uri().'/assets/css/bootstrap.min.css');
    wp_enqueue_style('fontawsome_css', get_template_directory_uri().'/assets/css/all.min.css', array('bootstrap_css'));
    wp_enqueue_style('template_css', get_template_directory_uri().'/assets/css/template.css', array('bootstrap_css'));

    wp_enqueue_script('bootstrap_js', get_template_directory_uri().'/assets/js/bootstrap.min.js', array('jquery'), false, true);
    wp_enqueue_script('fontawsome_js', get_template_directory_uri().'/assets/js/all.min.js', array('jquery', 'bootstrap_js'), false, true);
    wp_enqueue_script('script_js', get_template_directory_uri().'/assets/js/script.js', array('jquery', 'bootstrap_js'), false, true);


}

function wm_after_setup(){
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_theme_support('custom-logo');

    register_nav_menu('primary', __('Primary Menu', 'medusa'));

}

function wm_widgets(){
    register_sidebar(array(
        'name' => __('Sidebar', 'medusa'),
        'id' => 'wm_sidebar',
        'description' => __('Sidebar para o tema MedUsa', 'medusa')
    ));

    register_sidebar(array(
        'name' => 'Sidebar Rodapé',
        'id' => 'wm_footer_sidebar',
        'description' => __('Sidebar do Rodapé', 'medusa'),
        'before_widget' => '<div id="%1$s" class="widget %2$s"',
        'after_widget' => '</div>'
));
    
}

function wpblog_add_google_fonts() {
    wp_enqueue_style('wpblog_google_fonts', 'https://fonts.googleapis.com/css?family=Montserrat:300i,400&display=swap', false);
}