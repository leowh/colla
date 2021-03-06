<?php
/**
 * The html template file of step3 method of install module of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     install 
 * @version     $Id: step3.html.php 3138 2015-11-09 07:32:18Z chujilu $
 * @link        http://www.ranzhico.com
 */
include '../../common/view/header.lite.html.php';
?>
<div class='container'>
  <div class='modal-dialog'>
    <div class='modal-content'>
    <?php if(isset($error)):?>
    <div class='modal-header'><strong><?php echo $lang->install->error;?></strong></div>
    <div class='modal-body'><div class='alert alert-danger'><?php echo $error;?></div></div>
    <div class='modal-footer'><?php echo html::backButton($lang->install->pre, 'btn btn-primary');?></div>
    <?php else: ?>
    <div class='modal-header'><strong><?php echo $lang->install->saveConfig;?></strong></div>
    <div class='modal-body'>
      <div class='form-group'><?php echo html::textArea('config', $result->content, "rows='10' class='form-control small'");?></div>
      <div class='alert alert-warning'><?php printf($lang->install->save2File, $result->myPHP);?></div>
    </div>
    <div class='modal-footer'><?php echo html::a(inlink('step4'), $lang->install->next, "class='btn btn-primary'");?></div>
    <?php endif;?>
    </div>
  </div>
</div>
<?php include './footer.html.php';?>
