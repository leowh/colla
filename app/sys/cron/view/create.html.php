<?php
/**
 * The index view file of cron module of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     cron
 * @version     $Id$
 * @link        http://www.ranzhico.com
 */
?>
<?php include '../../common/view/header.html.php';?>
<div class='panel'>
  <div class='panel-heading'>
    <strong><i class="icon-plus"></i> <?php echo $lang->cron->create . $lang->cron->common?></strong>
  </div>
  <div class='panel-body'>
    <form class='form-condensed' method='post' id='ajaxForm'>
      <table class='table table-form'>
        <tr>
          <th class='rowhead w-80px'><?php echo $lang->cron->m;?></th>
          <td class='w-p20'><?php echo html::input('m', '', "class='form-control'")?></td>
          <td><?php echo $lang->cron->notice->m;?></td>
        </tr>
        <tr>
          <th><?php echo $lang->cron->h;?></th>
          <td><?php echo html::input('h', '', "class='form-control'")?></td>
          <td><?php echo $lang->cron->notice->h;?></td>
        </tr>
        <tr>
          <th><?php echo $lang->cron->dom;?></th>
          <td><?php echo html::input('dom', '', "class='form-control'")?></td>
          <td><?php echo $lang->cron->notice->dom;?></td>
        </tr>
        <tr>
          <th><?php echo $lang->cron->mon;?></th>
          <td><?php echo html::input('mon', '', "class='form-control'")?></td>
          <td><?php echo $lang->cron->notice->mon;?></td>
        </tr>
        <tr>
          <th><?php echo $lang->cron->dow;?></th>
          <td><?php echo html::input('dow', '', "class='form-control'")?></td>
          <td><?php echo $lang->cron->notice->dow;?></td>
        </tr>
        <tr>
          <th><?php echo $lang->cron->command;?></th>
          <td colspan='2'><?php echo html::input('command', '', "class='form-control'")?></td>
        </tr>
        <tr>
          <th><?php echo $lang->cron->remark;?></th>
          <td colspan='2'><?php echo html::input('remark', '', "class='form-control'")?></td>
        </tr>
        <tr>
          <th><?php echo $lang->cron->type;?></th>
          <td><?php echo html::select('type', $lang->cron->typeList, 'system', "class='form-control'")?></td>
        </tr>
        <tr>
          <th></th>
          <td><?php echo html::submitButton() . "&nbsp;&nbsp;" . html::backButton()?></td>
        </tr>
      </table>
    </form>
  </div>
</div>
<?php include '../../common/view/footer.html.php';?>
