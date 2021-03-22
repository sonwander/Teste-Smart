<?php

function wm_social_customize($wp_customize){
    $wp_customize->add_setting('wm_twitter', array('default'=>''));
    $wp_customize->add_setting('wm_facebook', array('default'=>''));
    $wp_customize->add_setting('wm_instagram', array('default'=>''));

    $wp_customize->add_section('wm_social_section', array(
        'title' => 'Redes Sociais',
        'priority' => '100'
    ));

    $wp_customize->add_control(
        new WP_Customize_Control(
            $wp_customize,
            'wm_twitter',
            array(
                'label' => 'Link do Twitter',
                'section' => 'wm_social_section',
                'settings' => 'wm_twitter',
                'type' => 'text'
            )
            )
            );

     $wp_customize->add_control(
        new WP_Customize_Control(
            $wp_customize,
            'wm_facebook',
            array(
                'label' => 'Link do Facebook',
                'section' => 'wm_social_section',
                'settings' => 'wm_facebook',
                'type' => 'text'
            )
            )
            );
        
    $wp_customize->add_control(
        new WP_Customize_Control(
            $wp_customize,
            'wm_instagram',
            array(
                'label' => 'Link do Instagram',
                'section' => 'wm_social_section',
                'settings' => 'wm_instagram',
                'type' => 'text'
            )
            )
            );

}