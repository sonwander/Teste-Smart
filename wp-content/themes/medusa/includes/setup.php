<?php
function wm_theme_styles(){
    wp_enqueue_style( 'uikit', 'https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.25/css/uikit.min.css'  ); 

    wp_enqueue_style('template_css', get_template_directory_uri().'/assets/css/template.css', array('uikit'));

    wp_enqueue_script( 'uikit', 'https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.25/js/uikit.min.js' );    
    wp_enqueue_script( 'uikit-icons', 'https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-beta.25/js/uikit-icons.min.js' );    

    wp_enqueue_script('script_js', get_template_directory_uri().'/assets/js/script.js', array('jquery', 'uikit'), false, true);


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
        'description' => __('Sidebar do Rodapé', 'medusa')
));
    
}

function wpblog_add_google_fonts() {
    wp_enqueue_style('wpblog_google_fonts', 'https://fonts.googleapis.com/css?family=Montserrat:300i,400&display=swap', false);
}