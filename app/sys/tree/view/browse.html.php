<?php
/**
 * The browse view file of tree module of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     tree
 * @version     $Id: browse.html.php 3138 2015-11-09 07:32:18Z chujilu $
 * @link        http://www.ranzhico.com
 */
?>
<?php
if(RUN_MODE == 'front')
{
    include $app->getModuleRoot() . 'common/view/header.html.php';
}
else
{
    include '../../common/view/header.html.php';
}
include '../../common/view/kindeditor.html.php';
include '../../common/view/chosen.html.php';
js::set('root', $root);
js::set('type', $type);
js::set('moduleID', $moduleID);
?>
<div class='col-md-12'>
<?php if(strpos($treeMenu, '<li>') !== false):?>
<div class='row'>
  <?php if($moduleMenu):?>
  <div class='col-md-4'>
  <?php else:?>
  <div class='col-md-3'>
  <?php endif;?>
    <div class='panel'>
      <div class='panel-heading'><strong><i class="icon-sitemap"></i> <?php echo $lang->category->common;?></strong></div>
      <div class='panel-body'><div id='treeMenuBox'><?php echo $treeMenu;?></div></div>
    </div>
  </div>
  <div class='col-md-8' id='categoryBox'></div>
</div>
<?php else:?>
<div id='categoryBox'></div>
<?php endif;?>
</div>
<?php
include '../../common/view/treeview.html.php';
if(RUN_MODE == 'front' && strpos($app->getModuleRoot(), 'sys') == false)
{
    include $app->getModuleRoot() . 'common/view/footer.html.php';
}
else
{
    include '../../common/view/footer.html.php';
}
?>
