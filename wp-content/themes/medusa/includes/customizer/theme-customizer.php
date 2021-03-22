<?php
require get_template_directory().'/includes/customizer/social.php';

function wm_customize_register($wp_customize){
    wm_social_customize($wp_customize);

}