<?php
/**
 * The create view file of contract module of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     contract
 * @version     $Id$
 * @link        http://www.ranzhico.com
 */
?>
<?php include '../../common/view/header.html.php';?>
<?php include '../../common/view/datepicker.html.php';?>
<?php include '../../../sys/common/view/kindeditor.html.php';?>
<?php include '../../../sys/common/view/chosen.html.php';?>
<?php js::set('customer', isset($customer) ? $customer : 0);?>
<div class='panel'>
  <div class='panel-heading'>
    <strong><i class="icon-plus"></i> <?php echo $lang->contract->create;?></strong>
  </div>
  <div class='panel-body'>
    <form method='post' id='ajaxForm'>
      <table class='table table-form'>
        <tr>
          <th><?php echo $lang->contract->customer;?></th>
          <td><?php echo html::select('customer', $customers, isset($customer) ? $customer : '', "class='form-control chosen' onchange='getOrder(this.value)'");?></td>
        </tr>
        <tr>
          <th class='w-80px'><?php echo $lang->contract->name;?></th>
          <td class='w-p40'><?php echo html::input('name', '', "class='form-control'");?></td><td></td>
        </tr>
        <tr>
          <th><?php echo $lang->contract->amount;?></th>
          <td>
            <div class='row'>
              <div class='col-sm-3'><?php echo html::select('currency', $currencyList, isset($currentOrder) ? $currentOrder->currency : '', "class='form-control'");?></div>
              <div class='col-sm-9'><?php echo html::input('amount', isset($currentOrder) ? $currentOrder->plan : '', "class='form-control'");?></div>
            </div>
          </td>
        </tr>
        <tr>
          <th><?php echo $lang->contract->signedBy;?></th>
          <td><?php echo html::select('signedBy', $users, '', "class='form-control chosen'");?></td>
        </tr>
        <tr>
          <th><?php echo $lang->contract->signedDate;?></th>
          <td><?php echo html::input('signedDate', '', "class='form-control form-date'");?></td>
        </tr>
        <tr>
          <th><?php echo $lang->contract->dateRange;?></th>
          <td>
          <div class="input-group">
            <?php echo html::input('begin', '', "class='form-control form-date' placeholder='{$lang->contract->begin}'");?>
            <span class="input-group-addon"><?php echo $lang->minus;?></span>
            <?php echo html::input('end', '', "class='form-control form-date' placeholder='{$lang->contract->end}'");?></td>
          </div>
          </td>
        </tr>
        <tr>
          <th><?php echo $lang->contract->handlers;?></th>
          <td><?php echo html::select('handlers[]', $users, $this->app->user->account, "class='form-control chosen' multiple");?></td>
        </tr>
        <tr>
          <th><?php echo $lang->contract->items;?></th>
          <td colspan='2'><?php echo html::textarea('items', '',"rows='5' class='form-control'");?></td>
        </tr>
        <tr>
          <th><?php echo $lang->contract->uploadFile;?></th>
          <td colspan='2'><?php echo $this->fetch('file', 'buildForm');?></td>
        </tr>
        <tr>
          <th></th>
          <td><?php echo html::submitButton() . '&nbsp;&nbsp;' . html::backButton();?></td>
        </tr>
	<tr><th></th>
          <td><?php echo "系统自动生成采购编号";?></td>
	</tr>
      </table>
    </form>
  </div>
</div>
<table class='hide'><tr class='orderInfo'><td></td></tr></table>
<?php js::set('currencySign', array('' => '') + $currencySign);?>
<?php include '../../common/view/footer.html.php';?>
