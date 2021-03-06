<?php
/**
 * The forum module zh-cn file of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     forum
 * @version     $Id: en.php 3138 2015-11-09 07:32:18Z chujilu $
 * @link        http://www.ranzhico.com
 */
if(!isset($lang->forum)) $lang->forum = new stdclass();
$lang->forum->common      = 'Forum';
$lang->forum->index       = 'Index';
$lang->forum->board       = 'Board';
$lang->forum->owners      = 'Moderator';
$lang->forum->threadList  = 'Threads';
$lang->forum->threadCount = 'Threads';
$lang->forum->postCount   = 'Posts';
$lang->forum->noPost      = 'No thread';
$lang->forum->lastPost    = 'Last posted: %s by %s';
$lang->forum->readonly    = 'Readonly';
$lang->forum->notExist    = 'The board does not exist.';
$lang->forum->lblOwner    = " [ Moderator: %s ]";

$lang->forum->post   = 'Post';
$lang->forum->admin  = 'Admin';
$lang->forum->update = 'Update';

$lang->forum->updateDesc    = 'This action will re-compute the stats(threads, replies) of every board again.';
$lang->forum->successUpdate = 'Update sucessfully';

/* Adjust the pager. */
$lang->pager->noRecord      = '';
$lang->pager->digest        = str_replace('records', 'threads', $lang->pager->digest);
$lang->pager->settedInForum = true;    // Set this switch thus in thread module can avoid overiding them.
