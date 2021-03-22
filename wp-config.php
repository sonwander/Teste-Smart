<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'medusa' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '+?6qya50nSPzNlw1*>5=tz90.7FEKz3PMkdR=m#Y!61Jn~-6!O;<xieGI<R8klUb' );
define( 'SECURE_AUTH_KEY',  'RSv3GN.njTOoqdf7w/}PiRKB0X}L_n]O+|Ml ,0ha!rD_Q9/gg}@PlJ7(k$ZV)f*' );
define( 'LOGGED_IN_KEY',    'TOFU}+LUfKFGlqCc=qv[G9&L_W6`}.67;Ev!7]kl)78t,VPto0Nbx$2_*aJr|rMG' );
define( 'NONCE_KEY',        'iw@/6nC{o3nkQ,`y[<U`?r?)(!HdFj^~I_B:n9&|$=zK)PE|;P#A=2vZrl-z{; ,' );
define( 'AUTH_SALT',        '| ,Cy;!gBg&9/f<-7% _B~,=4&yPrTUj:[4%{o^hUgo~C-PW4XZ%((UMQXP6#Q/K' );
define( 'SECURE_AUTH_SALT', '@MzHNjpl-nCx!A8)Sae,z9i+|-TM4Qlz*rb/ylXHDKU,+j9%<Q_QXO^1^cd7F-]o' );
define( 'LOGGED_IN_SALT',   '#JzQW.OX[I}X^B Pr2S9O_z>Uf7al eyeKv|c/2TF*{Tp:2!SC%z6:-tD%WC]Fj9' );
define( 'NONCE_SALT',       'H9F,h5=sV*Q|xAJ=nl>)e$VlO4thXDYR?1@rZ@lRz3+j?|J89kEs T(#EW/4-Hv6' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_mu';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
