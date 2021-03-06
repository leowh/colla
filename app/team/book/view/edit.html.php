<?php
/**
 * The edit book view file of book of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Tingting Dai<daitingting@xirangit.com>
 * @package     book
 * @version     $Id: edit.html.php 3138 2015-11-09 07:32:18Z chujilu $
 * @link        http://www.ranzhico.com
 */
?>
<?php include '../../common/view/header.admin.html.php';?>
<?php include '../../common/view/kindeditor.html.php';?>
<?php 
$path = explode(',', $node->path);
js::set('path', json_encode($path));
?>
<div class="panel">
  <div class="panel-heading">
    <strong><i class="icon-edit"></i> <?php echo $lang->edit . $lang->book->typeList[$node->type];?></strong>
  </div>
  <div class='panel-body'>
    <form id='ajaxForm' method='post' class='form-inline' action='<?php echo inlink('edit', "nodeID=$node->id")?>'>
      <table class='table table-form'>
        <tr>
          <th class='col-xs-1'><?php echo $lang->book->author;?></th>
          <td><?php echo html::input('author', $node->author, "class='form-control'");?></td>
        </tr>
        <?php if($node->type != 'book'):?>
        <tr>
          <th><?php echo $lang->book->parent;?></th>
          <td><?php echo html::select('parent', $optionMenu, $node->parent, "class='chosen form-control'");?></td>
        </tr>
        <?php endif; ?>
        <tr>
          <th><?php echo $lang->book->title;?></th>
          <td><?php echo html::input('title', $node->title, 'class="form-control"');?></td>
        </tr>
        <tr>
          <th><?php echo $lang->book->alias;?></th>
          <td>
            <div class='input-group text-1'>
              <span class='input-group-addon'>http://<?php echo $this->server->http_host . $config->webRoot?>book/id@</span>
              <?php echo html::input('alias', $node->alias, "class='form-control' placeholder='{$lang->alias}'");?>
              <span class='input-group-addon'>.html</span>
            </div>
          </td>
        </tr>
        <tr>
          <th><?php echo $lang->book->keywords;?></th>
          <td><?php echo html::input('keywords', $node->keywords, "class='form-control'");?></td>
        </tr>
        <tr>
          <th><?php echo $lang->book->summary;?></th>
          <td><?php echo html::textarea('summary', $node->summary, "class='form-control' rows='2'");?></td>
        </tr>
        <?php if($node->type == 'article'):?>
        <tr>
          <th><?php echo $lang->book->content;?></th>
          <td valign='middle'><?php echo html::textarea('content', $node->content, "rows='6' class='form-control'");?></td>
        </tr>
        <?php endif;?>
        <tr>
          <th></th>
          <td><?php echo html::submitButton() . html::hidden('referer', $this->server->http_referer);?></td>
        </tr>
      </table>
    </form>
  </div>
</div>
<?php include '../../common/view/footer.html.php';?>
