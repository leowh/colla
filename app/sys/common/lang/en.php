<?php
/**
 * The English file of common module of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     common 
 * @version     $Id: en.php 3401 2015-12-21 08:15:12Z daitingting $
 * @link        http://www.ranzhico.com
 */
$lang->colon      = ' : ';
$lang->prev       = '‹';
$lang->next       = '›';
$lang->laquo      = '&laquo;';
$lang->raquo      = '&raquo;';
$lang->minus      = ' - ';
$lang->hyphen     = '-';
$lang->slash      = ' / ';
$lang->RMB        = '￥';
$lang->divider    = "<span class='divider'>{$lang->raquo}</span> ";
$lang->at         = ' At ';
$lang->by         = ' By ';
$lang->ditto      = 'Ditto';
$lang->etc        = 'Etc';
$lang->importIcon = "<i class='icon-download-alt'> </i>";
$lang->exportIcon = "<i class='icon-upload-alt'> </i>";

/* Apps lang items.*/
$lang->apps = new stdclass();
$lang->apps->crm  = 'CRM';
$lang->apps->cash = 'CASH';
$lang->apps->oa   = 'OA';
$lang->apps->sys  = 'SYSTEM';
$lang->apps->team = 'TEAM';

/* Lang items for ranzhi. */
$lang->ranzhi    = 'ranzhi';
$lang->agreement = "I Agree to the <a href='http://zpl.pub/page/zplv11.html' target='_blank'>Z PUBLIC LICENSE 1.2</a>, <span class='text-danger'>and promise to keep the logo, link of RanZhi.</span>";
$lang->poweredBy = "<a href='http://www.ranzhico.com/?v=%s' target='_blank'>{$lang->ranzhi} %s</a>";

/* IE6 alert.  */
$lang->IE6Alert = <<<EOT
    <div class='alert alert-danger' style='margin-top:100px;'>
      <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
      <h2>Please use IE(>8), firefox, chrome, safari, opera to visit this site.</h2>
      <p>Stop using IE6!</p>
      <p>IE6 is too old, we should stop using it. <br/></p>
      <a href='https://www.google.com/intl/zh-hk/chrome/browser/' class='btn btn-primary btn-lg' target='_blank'>Chrome</a>
      <a href='http://www.firefox.com/' class='btn btn-primary btn-lg' target='_blank'>Firefox</a>
      <a href='http://www.opera.com/download' class='btn btn-primary btn-lg' target='_blank'>Opera</a>
      <p></p>
    </div>
EOT;

/* Themes. */
$lang->theme             = 'Theme';
$lang->themes['default'] = 'Default';
$lang->themes['clear']   = 'Clear';

/* Global lang items. */
$lang->home           = 'Home';
$lang->welcome        = '%s RanZhi';
$lang->messages       = "<strong><i class='icon-comment-alt'></i> %s</strong>";
$lang->todayIs        = 'Today is %s, ';
$lang->today          = 'Today';
$lang->aboutUs        = 'About';
$lang->about          = 'About';
$lang->link           = 'Links';
$lang->frontHome      = 'Front';
$lang->forumHome      = 'Forum';
$lang->bookHome       = 'Book';
$lang->dashboard      = 'Dashboard';
$lang->register       = 'Register';
$lang->logout         = 'Logout';
$lang->login          = 'Login';
$lang->account        = 'Account';
$lang->password       = 'Password';
$lang->all            = 'All';
$lang->changePassword = 'Change password';
$lang->currentPos     = 'Positon';
$lang->categoryMenu   = 'Categories';
$lang->basicInfo      = 'Basic Info';

/* Global action items. */
$lang->reset          = 'Reset';
$lang->add            = 'Add';
$lang->edit           = 'Edit';
$lang->copy           = 'Copy';
$lang->and            = 'And';
$lang->or             = 'Or';
$lang->hide           = 'Hide';
$lang->delete         = 'Delete';
$lang->close          = 'Close';
$lang->finish         = 'Finish';
$lang->cancel         = 'Cancel';
$lang->import         = 'Import';
$lang->export         = 'Export';
$lang->setFileName    = 'File Name:';
$lang->setFileNum     = 'File Number:';
$lang->setFileType    = 'File Type:';
$lang->save           = 'Save';
$lang->saved          = 'Saved';
$lang->confirm        = 'Confirm';
$lang->preview        = 'Preview';
$lang->goback         = 'Back';
$lang->assign         = 'Assign';
$lang->start          = 'Start';
$lang->create         = 'Add';
$lang->forbid         = 'Forbid';
$lang->activate       = 'Activate';
$lang->ignore         = 'Ignore';
$lang->view           = 'View';
$lang->more           = 'More';
$lang->actions        = 'Actions';
$lang->history        = 'History';
$lang->reverse        = 'Reverse';
$lang->switchDisplay  = 'Switching Display';
$lang->feature        = 'Feature';
$lang->year           = 'Year';
$lang->month          = 'Month';
$lang->loading        = 'Loading...';
$lang->saveSuccess    = 'Successfully saved.';
$lang->setSuccess     = 'Successfully saved.';
$lang->sendSuccess    = 'Successfully sended.';
$lang->fail           = 'Fail';
$lang->noResultsMatch = 'No matched results.';
$lang->alias          = 'for seo, can use numbers, letters and words';
$lang->unfold         = '+';
$lang->fold           = '-';
$lang->files          = 'Files';
$lang->addFiles       = 'Add Files ';
$lang->comment        = 'Comment';
$lang->selectAll      = 'All';
$lang->selectReverse  = 'Inverse';
$lang->continueSave   = 'Continue To Save';
$lang->submitting     = 'Saving...';
$lang->yes            = 'YES';
$lang->no             = 'NO';
$lang->signIn         = 'Sign in';
$lang->signOut        = 'Sign out';

$lang->exportAll      = 'Export All';
$lang->exportThisPage = 'Export This Page';
$lang->exportTemplate = 'Export Template';
$lang->importFile     = 'Import File';
$lang->importSuccess  = 'Import Successfully';
$lang->importFail     = 'Import Failure';

/* Items for lifetime. */
$lang->lifetime = new stdclass();
$lang->lifetime->createdBy    = 'Create By';
$lang->lifetime->assignedTo   = 'Assigned to';
$lang->lifetime->signedBy     = 'Signed By';
$lang->lifetime->closedBy     = 'Closed By';
$lang->lifetime->closedReason = 'Closed Reason';
$lang->lifetime->lastEdited   = 'Last Edited';

$lang->setOkFile = <<<EOT
<h5>For security reason, please do these steps. </h5>
<p>Create %s file. If this file exists already, reopen it and save again.</p>
EOT;

/* Items for javascript. */
$lang->js = new stdclass();
$lang->js->confirmDelete         = 'Are sure to delete it?';
$lang->js->deleteing             = 'Deleting...';
$lang->js->doing                 = 'Processing...';
$lang->js->timeout               = 'Timeout';
$lang->js->confirmDiscardChanges = 'Discard changes?';
$lang->js->yes                   = 'Yes';
$lang->js->no                    = 'No';

/* Contact fields*/
$lang->company = new stdclass();
$lang->company->contactUs = 'Contact';
$lang->company->address   = 'Address';
$lang->company->phone     = 'Phone';
$lang->company->email     = 'Email';
$lang->company->fax       = 'Fax';
$lang->company->qq        = 'QQ';
$lang->company->code     = 'Weibo';
$lang->company->weixin    = 'Weichat';
$lang->company->wangwang  = 'Wangwang';

/* The main menus. */
$lang->menu = new stdclass();

$lang->index   = new stdclass();
$lang->user    = new stdclass();
$lang->file    = new stdclass();
$lang->admin   = new stdclass();
$lang->tree    = new stdclass();
$lang->mail    = new stdclass();
$lang->dept    = new stdclass();
$lang->thread  = new stdclass();
$lang->block   = new stdclass();
$lang->action  = new stdclass();
$lang->effort  = new stdclass();
$lang->setting = new stdclass();
$lang->task    = new stdclass();
$lang->schema  = new stdclass();
$lang->package = new stdclass();

$lang->admin->common = 'Admin';

$lang->menu->sys = new stdclass();
$lang->menu->sys->company   = 'Company|company|setbasic|';
$lang->menu->sys->user      = 'User|user|admin|';
$lang->menu->sys->group     = 'Priviledge|group|browse|';
$lang->menu->sys->entry     = 'App|entry|admin|';
$lang->menu->sys->system    = 'System|mail|admin|';
$lang->menu->sys->package   = 'Extension|package|browse|';

$lang->message = new stdclass(); 
$lang->blog    = new stdclass(); 
$lang->group   = new stdclass(); 

/* Menu entry. */
$lang->entry       = new stdclass();
$lang->entry->menu = new stdclass();
$lang->entry->menu->admin  = array('link' => 'Entries|entry|admin|', 'alias' => 'edit');
$lang->entry->menu->create = array('link' => 'Create|entry|create|');
$lang->entry->menu->webapp = 'WEB Application|webapp|obtain|';

/* Menu system. */
$lang->system       = new stdclass();
$lang->system->menu = new stdclass();
$lang->system->menu->mail   = array('link' => 'Mail|mail|admin|', 'alias' => 'detect,edit,save,test');
$lang->system->menu->trash  = array('link' => 'Trash|action|trash|');
$lang->system->menu->cron   = 'Cron|cron|index|';
$lang->system->menu->backup = 'Backup|backup|index|';

$lang->article = new stdclass();
$lang->article->menu = new stdclass();
$lang->article->menu->admin  = 'Browse|article|admin|';
$lang->article->menu->tree   = 'Category|tree|browse|type=article';
$lang->article->menu->create = array('link' => 'Add|article|create|type=article', 'float' => 'right');

$lang->menuGroups = new stdclass();

$lang->menu->dashboard = new stdclass();
$lang->menu->dashboard->todo     = 'Todo|todo|calendar|';
$lang->menu->dashboard->task     = 'Task|my|task|';
$lang->menu->dashboard->project  = 'Project|my|project|';
$lang->menu->dashboard->order    = 'Order|my|order|';
$lang->menu->dashboard->contract = 'Contract|my|contract|';
$lang->menu->dashboard->review   = 'Review|my|review|';
$lang->menu->dashboard->company  = 'Company|my|company|';
$lang->menu->dashboard->dynamic  = 'Dynamic|my|dynamic|';

$lang->todo = new stdclass();
$lang->todo->menu = new stdclass();
$lang->todo->menu->calendar        = 'Calendar|todo|calendar|';
$lang->todo->menu->assignedToOther = 'Assigned to other|todo|browse|mode=assignedtoother';
$lang->todo->menu->assignedToMe    = 'Assigned to me|todo|browse|mode=assignedtome';
$lang->todo->menu->undone          = 'Undone|todo|browse|mode=undone';
$lang->todo->menu->future          = 'Future|todo|browse|mode=future';
$lang->todo->menu->all             = 'All|todo|browse|mode=all';
 
/* Menu of mail module. */
$lang->mail = new stdclass();
$lang->mail->menu = $lang->system->menu;
$lang->menuGroups->mail = 'system';

/* Menu of action module. */
$lang->action = new stdclass();
$lang->action->menu = $lang->system->menu;
$lang->menuGroups->action = 'system';

/* Menu of cron module. */
$lang->cron = new stdclass();
$lang->cron->menu = $lang->system->menu;
$lang->menuGroups->cron = 'system';

/* Menu of backup module. */
$lang->backup = new stdclass();
$lang->backup->menu = $lang->system->menu;
$lang->menuGroups->backup = 'system';

/* The error messages. */
$lang->error = new stdclass();
$lang->error->length       = array("<strong>%s</strong>length should be<strong>%s</strong>", "<strong>%s</strong>length should between<strong>%s</strong>and <strong>%s</strong>.");
$lang->error->reg          = "<strong>%s</strong>should like<strong>%s</strong>";
$lang->error->unique       = "<strong>%s</strong>has<strong>%s</strong>already. If you are sure this record has been deleted, you can restore it in admin panel, trash page.";
$lang->error->notempty     = "<strong>%s</strong>can not be empty.";
$lang->error->empty        = "<strong>%s</strong> must be empty.";
$lang->error->equal        = "<strong>%s</strong>must be<strong>%s</strong>.";
$lang->error->gt           = "<strong>%s</strong> should be geater than <strong>%s</strong>.";
$lang->error->ge           = "<strong>%s</strong> should be not less than <strong>%s</strong>.";
$lang->error->lt           = "<strong>%s</strong> should be less than <strong>%s</strong>";
$lang->error->le           = "<strong>%s</strong> should be no greater than <strong>%s</strong>.";
$lang->error->in           = '<strong>%s</strong>must in<strong>%s</strong>。';
$lang->error->int          = array("<strong>%s</strong>should be interger", "<strong>%s</strong>should between<strong>%s-%s</strong>.");
$lang->error->float        = "<strong>%s</strong>should be a interger or float.";
$lang->error->email        = "<strong>%s</strong>should be email.";
$lang->error->URL          = "<strong>%s</strong>should be url.";
$lang->error->date         = "<strong>%s</strong>should be date";
$lang->error->code         = '<strong>%s</strong> should be a combination of letters or numbers.';
$lang->error->account      = "<strong>%s</strong>should be a valid account.";
$lang->error->passwordsame = "Two passwords must be the same";
$lang->error->passwordrule = "Password should more than six letters.";
$lang->error->captcha      = 'Captcah wrong.';
$lang->error->noWritable   = '%s maybe not write, please modify permissions!';
$lang->error->noConvertFun = 'Iconv and mb_convert_encoding does not exist, you can not turn the data into the desired coding!';
$lang->error->notInt       = '<strong>%s</strong> should be not a interger.';
$lang->error->pasteImg     = 'Your browser does not support paste pictures.';

/* The pager items. */
$lang->pager = new stdclass();
$lang->pager->noRecord   = "No records yet.";
$lang->pager->digest     = "<strong>%s</strong> records, <strong>%s</strong> per page, <strong>%s/%s</strong> ";
$lang->pager->recPerPage = "<strong>%s</strong> per page";
$lang->pager->first      = " First";
$lang->pager->pre        = " Previous";
$lang->pager->next       = " Next";
$lang->pager->last       = " Last";
$lang->pager->locate     = "GO!";

/* The excel items. */
$lang->excel = new stdClass();
$lang->excel->canNotRead = 'Can not resolve this file.';

$lang->excel->error = new stdclass();
$lang->excel->error->info  = 'The value you entered is not in the drop-down list.';
$lang->excel->error->title = 'Input error';

$lang->excel->title = new stdclass();
$lang->excel->title->contact  = 'Contact';
$lang->excel->title->sysValue = 'System value';

$lang->date = new stdclass();
$lang->date->minute = 'minute';
$lang->date->day    = 'day';

$lang->genderList = new stdclass();
$lang->genderList->m = 'Male';
$lang->genderList->f = 'Female';
$lang->genderList->u = '';

/* datepicker 时间*/
$lang->datepicker = new stdclass();

$lang->datepicker->dpText = new stdclass();
$lang->datepicker->dpText->TEXT_OR          = 'Or ';
$lang->datepicker->dpText->TEXT_PREV_YEAR   = 'Last year';
$lang->datepicker->dpText->TEXT_PREV_MONTH  = 'Last month';
$lang->datepicker->dpText->TEXT_PREV_WEEK   = 'Last week';
$lang->datepicker->dpText->TEXT_YESTERDAY   = 'Yesterday';
$lang->datepicker->dpText->TEXT_THIS_MONTH  = 'This month';
$lang->datepicker->dpText->TEXT_THIS_WEEK   = 'This week';
$lang->datepicker->dpText->TEXT_TODAY       = 'Today';
$lang->datepicker->dpText->TEXT_NEXT_YEAR   = 'Next year';
$lang->datepicker->dpText->TEXT_NEXT_MONTH  = 'Next month';
$lang->datepicker->dpText->TEXT_CLOSE       = 'Close';
$lang->datepicker->dpText->TEXT_DATE        = 'Please select date range';
$lang->datepicker->dpText->TEXT_CHOOSE_DATE = 'Choose date';

$lang->datepicker->dayNames     = array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
$lang->datepicker->abbrDayNames = array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
$lang->datepicker->monthNames   = array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');

/* Set currency items. */
$lang->currencyList['rmb']  = 'Renminbi Yuan';
$lang->currencyList['usd']  = 'U.S.Dollar';
$lang->currencyList['hkd']  = 'HongKong Dollars';
$lang->currencyList['twd']  = 'New Taiwan Dollar';
$lang->currencyList['euro'] = 'Euro';
$lang->currencyList['dem']  = 'Deutsche Mark';
$lang->currencyList['chf']  = 'Swiss Franc';
$lang->currencyList['frf']  = 'French Franc';
$lang->currencyList['gbp']  = 'Pound';
$lang->currencyList['nlg']  = 'Florin';
$lang->currencyList['cad']  = 'Canadian Dollar';
$lang->currencyList['sur']  = 'Rouble';
$lang->currencyList['inr']  = 'Indian Rupee';
$lang->currencyList['aud']  = 'Australian Dollar';
$lang->currencyList['nzd']  = 'New Zealand Dollar';
$lang->currencyList['thb']  = 'Thai Baht';
$lang->currencyList['sgd']  = 'Ssingapore Dollar';

/* Currency symbols setting. */
$lang->currencySymbols['rmb']  = '￥';
$lang->currencySymbols['usd']  = '$';
$lang->currencySymbols['hkd']  = 'HK$';
$lang->currencySymbols['twd']  = 'NT$';
$lang->currencySymbols['euro'] = 'ECU';
$lang->currencySymbols['dem']  = 'DM';
$lang->currencySymbols['chf']  = 'SF';
$lang->currencySymbols['frf']  = 'FF';
$lang->currencySymbols['gbp']  = '￡';
$lang->currencySymbols['nlg']  = 'F';
$lang->currencySymbols['cad']  = 'CAN$';
$lang->currencySymbols['sur']  = 'Rbs';
$lang->currencySymbols['inr']  = 'Rs';
$lang->currencySymbols['aud']  = 'A$';
$lang->currencySymbols['nzd']  = 'NZ$';
$lang->currencySymbols['thb']  = 'B';
$lang->currencySymbols['sgd']  = 'S$';

$lang->currencyTip['w'] = '';
$lang->currencyTip['y'] = '';

/* Date times. */
define('DT_DATETIME1',  'Y-m-d H:i:s');
define('DT_DATETIME2',  'y-m-d H:i');
define('DT_MONTHTIME1', 'n/d H:i');
define('DT_MONTHTIME2', 'F j, H:i');
define('DT_DATE1',      'Y-m-d');
define('DT_DATE2',      'Ymd');
define('DT_DATE3',      'F j, Y ');
define('DT_DATE4',      'M j');
define('DT_TIME1',      'H:i:s');
define('DT_TIME2',      'H:i');
