<?php
/**
 *
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 *
 * モバイルサイト/ご利用方法
 */

// {{{ requires
require_once("../require.php");
require_once(CLASS_EX_PATH . "page_extends/guide/LC_Page_Guide_Usage_Ex.php");

// }}}
// {{{ generate page

$objPage = new LC_Page_Guide_Usage_Ex();
register_shutdown_function(array($objPage, "destroy"));
$objPage->mobileInit();
$objPage->mobileProcess();
?>
