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
define( 'AUTH_KEY',         'B=xzX9,xiHJ]1zcvd&bY9I^$Lt`?M^2Ms7?Kv}?5x|D*^ryX<SCs>(!P,Z-GI>jX' );
define( 'SECURE_AUTH_KEY',  'S&c,?nc#a]eBFQ@Lo![b6y5#@LGMOt%0<$X9hhgU:Nxr^/ZtAd*y=a47LFnHi[|T' );
define( 'LOGGED_IN_KEY',    ']qVI&20VH[I)Rt+}QlK_JePlUtXEr4B-_*2nt?@zK[qO n_7)kK)|YHH{AeKcrpR' );
define( 'NONCE_KEY',        '2LM(icu4+& iGy_=rSwu=*]@Um<j]}Al5fC<Ub[H,|P_fv[`zWy5ca%hjV,}ij;g' );
define( 'AUTH_SALT',        '^#,B.jMVC3K>n6~[y^b`RI1X[nPI,r/GD F3>XAr<#)MrMoo,@i[n$?HYNnek?p,' );
define( 'SECURE_AUTH_SALT', '|/blN<kpXP% *!AUMugiJKj=+ XF1phHv{h8pT.OA.!(aw;-&MA ORJ/e)wt/.-)' );
define( 'LOGGED_IN_SALT',   'l)Soz$MW&Zh 914`1:(nuUQR#FbF-5A!Z.-aGUF#|#]W<;yg+SP(k{Y]V!-jS^Mc' );
define( 'NONCE_SALT',       '(wr|v:7Y,U$J`n+b0}P_jTrv+L=7=C> g~=o|g#!S],Qd1}bt5G[f,dv: V*mQ}L' );

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
