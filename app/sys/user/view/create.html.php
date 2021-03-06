<?php
/**
 * The create view file of user module of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     user 
 * @version     $Id: create.html.php 3138 2015-11-09 07:32:18Z chujilu $
 * @link        http://www.ranzhico.com
 */
?>
<?php
include '../../common/view/header.html.php';
include '../../common/view/treeview.html.php';
?>
<div class="col-md-12">
  <?php include './deptside.html.php';?>
  <div class='col-md-10'>
    <div class="panel">
      <div class="panel-heading">
        <strong><i class="icon-plus"></i> <?php echo $lang->user->create;?></strong>
      </div>
      <div class='panel-body'>
        <form method='post' id='ajaxForm'>
          <table class='table table-form'>
            <tr>
              <th class='w-100px'><?php echo $lang->user->account;?></th>
              <td class='w-p40'><?php echo html::input('account', '', "class='form-control'");?></td>
            </tr>
            <tr>
              <th><?php echo $lang->user->realname;?></th>
              <td><?php echo html::input('realname', '', "class='form-control'");?></td>
            </tr>
            <tr>
              <th><?php echo $lang->user->gender;?></th>
              <td><?php unset($lang->user->genderList->u); echo html::radio('gender', $lang->user->genderList, '');?></td>
            </tr>  
            <tr>
              <th><?php echo $lang->user->dept;?></th>
              <td><?php echo html::select('dept', $depts, '', "class='form-control'");?></td>
            </tr>
            <tr>
              <th><?php echo $lang->user->role;?></th>
              <td><?php echo html::select('role', $lang->user->roleList, '', "class='form-control'");?></td><td></td>
            </tr>
            <tr>
              <th><?php echo $lang->user->password;?></th>
              <td><?php echo html::password('password1', '', "class='form-control' autocomplete='off'")?></td><td></td>
            </tr>  
            <tr>
              <th><?php echo $lang->user->password2;?></th>
              <td><?php echo html::password('password2', '', "class='form-control'");?></td><td></td>
            </tr>  
            <tr>
              <th><?php echo $lang->user->email;?></th>
              <td><?php echo html::input('email', '', "class='form-control'");?></td>
            </tr>
            <tr>
              <th></th>
              <td><?php echo html::submitButton();?></td>
            </tr>
          </table>
        </form>
      </div>
    </div>
  </div>
</div>
<?php include '../../common/view/footer.html.php';?>
