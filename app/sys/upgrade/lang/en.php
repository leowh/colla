<?php
/**
 * The upgrade module English file of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     upgrade
 * @version     $Id: en.php 3393 2015-12-21 03:25:39Z daitingting $
 * @link        http://www.ranzhico.com
 */
$lang->upgrade = new stdclass();
$lang->upgrade->common  = 'Upgrade';

$lang->upgrade->result  = 'Result';
$lang->upgrade->fail    = 'Failed';
$lang->upgrade->success = 'Success';
$lang->upgrade->tohome  = 'Go to index';

$lang->upgrade->index         = 'Upgrad Ranzhi.';
$lang->upgrade->backup        = 'Backup';
$lang->upgrade->selectVersion = 'Select version to upgrade from';
$lang->upgrade->confirm       = 'Confirm the SQL to be excuted.';
$lang->upgrade->execute       = 'Execute';
$lang->upgrade->next          = 'Next';
$lang->upgrade->redeploy      = 'Please redeploy app directory before upgrade.';
$lang->upgrade->redeployDesc  = "<h5>For reaseon of code adjustment app directory need to redeploy.</h5><div class='text-important'>operating steps : delete app directory before copy new package.</div>";
$lang->upgrade->removeTodo    = 'Please remove %s directory before upgrade.';
$lang->upgrade->removeTodoTip = "<h5>For reaseon of code adjustment %s directory need to remove.</h5><div class='text-important'>operating steps : delete directory of %s.</div>";
$lang->upgrade->updateLicense = 'The license of RanZhi 2. 0 has changed to Z PUBLIC LICENSE(ZPL) 1.1.';

$lang->upgrade->backupData = <<<EOT
<pre>
<strong>Using phpMyAdmin or mysqldump to backup database.</strong>
<code class='red'>$ mysqldump -u %s</span> -p%s %s > ranzhi.sql</code>
</pre>
EOT;

$lang->upgrade->versionNote = "Please choose the version to upgrade.";

$lang->upgrade->fromVersions['1_0_beta'] = '1.0.beta';
$lang->upgrade->fromVersions['1_1_beta'] = '1.1.beta';
$lang->upgrade->fromVersions['1_2_beta'] = '1.2.beta';
$lang->upgrade->fromVersions['1_3_beta'] = '1.3.beta';
$lang->upgrade->fromVersions['1_4_beta'] = '1.4.beta';
$lang->upgrade->fromVersions['1_5_beta'] = '1.5.beta';
$lang->upgrade->fromVersions['1_6']      = '1.6';
$lang->upgrade->fromVersions['1_7']      = '1.7';
$lang->upgrade->fromVersions['2_0']      = '2.0';
$lang->upgrade->fromVersions['2_1']      = '2.1';
$lang->upgrade->fromVersions['2_2']      = '2.2';
$lang->upgrade->fromVersions['2_3']      = '2.3';
$lang->upgrade->fromVersions['2_4']      = '2.4';
$lang->upgrade->fromVersions['2_5']      = '2.5';
$lang->upgrade->fromVersions['2_6']      = '2.6';
$lang->upgrade->fromVersions['2_7']      = '2.7';
$lang->upgrade->fromVersions['3_0']      = '3.0';
