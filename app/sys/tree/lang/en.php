<?php
/**
 * The tree category zh-cn file of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     tree
 * @version     $Id: en.php 3138 2015-11-09 07:32:18Z chujilu $
 * @link        http://www.ranzhico.com
 */
$lang->tree->common      = "Tree";
$lang->tree->add         = "Add";
$lang->tree->edit        = "Edit";
$lang->tree->children    = "Add child";
$lang->tree->delete      = "Delete";
$lang->tree->browse      = "Manage";
$lang->tree->manage      = "Manage";
$lang->tree->fix         = "Fix data";

$lang->tree->noCategories  = 'No category yet, add one first.';
$lang->tree->noBoards      = 'No board yet, add one first.';
$lang->tree->timeCountDown = "Locate to %s manage page in <strong id='countDown'>3</strong> seconds.";
$lang->tree->redirect      = 'Manage now';
$lang->tree->aliasRepeat   = 'Alias: %s already exists。';
$lang->tree->aliasConflict = 'Alias: %s  conflicts with system modules';
$lang->tree->hasChildren   = "The board has children, can't be deleted.";
$lang->tree->hasThreads    = "The board has threads, can't be deleted.";
$lang->tree->confirmDelete = "Are you sure to delete it?";
$lang->tree->successFixed  = "Successfully fixed.";

/* Lang items for article, products. */
$lang->category = new stdclass();
$lang->category->common   = 'Category';
$lang->category->name     = 'Name';
$lang->category->alias    = 'Alias';
$lang->category->parent   = 'Parent';
$lang->category->desc     = 'Description';
$lang->category->keywords = 'Keyword';
$lang->category->children = "Children";
$lang->category->rights   = 'Rights';

/* Lang items for area. */
$lang->area = new stdclass();
$lang->area->common   = 'Area';
$lang->area->name     = 'Name';
$lang->area->alias    = 'Alias';
$lang->area->parent   = 'Parent';
$lang->area->desc     = 'Description';
$lang->area->keywords = 'Keyword';
$lang->area->children = 'Children';

/* Lang items for industry. */
$lang->industry = new stdclass();
$lang->industry->common   = 'Industry';
$lang->industry->name     = 'Name';
$lang->industry->alias    = 'Alias';
$lang->industry->parent   = 'Parent';
$lang->industry->desc     = 'Description';
$lang->industry->keywords = 'Keyword';
$lang->industry->children = "Children";

/* Lang items for income. */
$lang->in = new stdclass();
$lang->in->common   = 'Income';
$lang->in->name     = 'Name';
$lang->in->alias    = 'Alias';
$lang->in->parent   = 'Parent';
$lang->in->desc     = 'Description';
$lang->in->keywords = 'Keyword';
$lang->in->children = "Children";

/* Lang items for expend. */
$lang->out = new stdclass();
$lang->out->common   = 'Expense';
$lang->out->name     = 'Name';
$lang->out->alias    = 'Alias';
$lang->out->parent   = 'Parent';
$lang->out->desc     = 'Description';
$lang->out->keywords = 'Keyword';
$lang->out->children = "Children";
$lang->out->rights   = 'Rights';
$lang->out->refund   = 'Reimbursement';

$lang->out->refundList[1] = 'Yes';
$lang->out->refundList[0] = 'No';

/* Lang items for forum. */
$lang->board = new stdclass();
$lang->board->common     = 'Board';
$lang->board->name       = 'Board';
$lang->board->alias      = 'Alias';
$lang->board->parent     = 'Parent';
$lang->board->desc       = 'Description';
$lang->board->keywords   = 'Keyword';
$lang->board->children   = "Children";
$lang->board->readonly   = 'Readonly';
$lang->board->moderators = 'Moderators';

$lang->board->readonlyList[0] = 'Pulic';
$lang->board->readonlyList[1] = 'Readonly';

$lang->board->placeholder = new stdclass();
$lang->board->placeholder->moderators  = "Moderators'account, Separated with" . '","';
$lang->board->placeholder->setChildren = 'Forum needs tow levels boards.';
