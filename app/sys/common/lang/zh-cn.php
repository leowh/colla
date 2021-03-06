<?php
/**
 * The zh-cn file of common module of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     common 
 * @version     $Id: zh-cn.php 3401 2015-12-21 08:15:12Z daitingting $
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
$lang->at         = ' 于 ';
$lang->by         = ' 由 ';
$lang->ditto      = '同上';
$lang->etc        = '等';
$lang->importIcon = "<i class='icon-download-alt'> </i>";
$lang->exportIcon = "<i class='icon-upload-alt'> </i>";

/* Apps lang items.*/
$lang->apps = new stdclass();
$lang->apps->crm  = '客户';
$lang->apps->cash = '财务';
$lang->apps->oa   = '办公';
$lang->apps->sys  = '通用';
$lang->apps->team = '团队';

/* Lang items for ranzhi. */
$lang->ranzhi    = '量子云';
$lang->agreement = "";
$lang->poweredBy = "";

/* IE6 alert.  */
$lang->IE6Alert = <<<EOT
    <div class='alert alert-danger' style='margin-top:100px;'>
      <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
      <h2>请使用其他浏览器访问本站。</h2>
      <p>珍爱上网，远离IE！</p>
      <p>我们检测到您正在使用Internet Explorer 6 ——  IE6 浏览器, IE6 于2001年8月27日推出，而现在它已十分脱节。速度慢、不安全、不能很好的展示新一代网站。<br/></p>
      <a href='https://www.google.com/intl/zh-hk/chrome/browser/' class='btn btn-primary btn-lg' target='_blank'>谷歌浏览器</a>
      <a href='http://www.firefox.com/' class='btn btn-primary btn-lg' target='_blank'>火狐浏览器</a>
      <a href='http://www.opera.com/download' class='btn btn-primary btn-lg' target='_blank'>Opera浏览器</a>
      <p></p>
    </div>
EOT;

/* Themes. */
$lang->theme             = '主题';
$lang->themes['default'] = '默认';
$lang->themes['clear']   = '清晰';

/* Global lang items. */
$lang->home           = '首页';
$lang->welcome        = "%s系统";
$lang->messages       = "<strong><i class='icon-comment-alt'></i> %s</strong>";
$lang->todayIs        = '今天是%s，';
$lang->today          = '今天';
$lang->aboutUs        = '关于我们';
$lang->about          = '关于';
$lang->link           = '友情链接';
$lang->frontHome      = '前台';
$lang->forumHome      = '论坛';
$lang->bookHome       = '手册';
$lang->dashboard      = '成员中心';
$lang->register       = '注册';
$lang->logout         = '退出';
$lang->login          = '登录';
$lang->account        = '帐号';
$lang->password       = '密码';
$lang->all            = '全部';
$lang->changePassword = '修改密码';
$lang->currentPos     = '当前位置';
$lang->categoryMenu   = '分类导航';
$lang->basicInfo      = '基本信息';

/* Global action items. */
$lang->reset          = '重填';
$lang->add            = '添加';
$lang->edit           = '编辑';
$lang->copy           = '复制';
$lang->and            = '并且';
$lang->or             = '或者';
$lang->hide           = '隐藏';
$lang->delete         = '删除';
$lang->close          = '关闭';
$lang->finish         = '完成';
$lang->cancel         = '取消';
$lang->import         = '导入';
$lang->export         = '导出';
$lang->setFileName    = '文件名：';
$lang->setFileNum     = '记录数';
$lang->setFileType    = '文件类型';
$lang->save           = '保存';
$lang->saved          = '已保存';
$lang->confirm        = '确认';
$lang->preview        = '预览';
$lang->goback         = '返回';
$lang->assign         = '指派';
$lang->start          = '开始';
$lang->create         = '新建';
$lang->forbid         = '禁用';
$lang->activate       = '激活';
$lang->ignore         = '忽略';
$lang->view           = '查看';
$lang->more           = '更多';
$lang->actions        = '操作';
$lang->history        = '历史记录';
$lang->reverse        = '切换顺序';
$lang->switchDisplay  = '切换显示';
$lang->feature        = '未来';
$lang->year           = '年';
$lang->month          = '月';
$lang->loading        = '稍候...';
$lang->saveSuccess    = '保存成功';
$lang->setSuccess     = '设置成功';
$lang->sendSuccess    = '发送成功';
$lang->fail           = '失败';
$lang->noResultsMatch = '没有匹配的选项';
$lang->alias          = '搜索引擎优化使用，可使用英文、数字';
$lang->unfold         = '+';
$lang->fold           = '-';
$lang->files          = '附件';
$lang->addFiles       = '上传了附件 ';
$lang->comment        = '备注';
$lang->selectAll      = '全选';
$lang->selectReverse  = '反选';
$lang->continueSave   = '继续保存';
$lang->submitting     = '稍候...';
$lang->yes            = '是';
$lang->no             = '否';
$lang->signIn         = '签到';
$lang->signOut        = '签退';

$lang->exportAll      = '导出全部记录';
$lang->exportThisPage = '导出本页记录';
$lang->exportTemplate = '导出模板';
$lang->importFile     = '导入文件';
$lang->importSuccess  = '导入成功';
$lang->importFail     = '导入失败';

/* Items for lifetime. */
$lang->lifetime = new stdclass();
$lang->lifetime->createdBy    = '由谁创建';
$lang->lifetime->assignedTo   = '指派给';
$lang->lifetime->signedBy     = '由谁签约';
$lang->lifetime->closedBy     = '由谁关闭';
$lang->lifetime->closedReason = '关闭原因';
$lang->lifetime->lastEdited   = '最后修改';

$lang->setOkFile = <<<EOT
<h5>请按照下面的步骤操作以确认您的管理员身份。</h5>
<p>创建 %s 文件。如果存在该文件，使用编辑软件打开，重新保存一遍。</p>
EOT;

/* Items for javascript. */
$lang->js = new stdclass();
$lang->js->confirmDelete         = '您确定要执行删除操作吗？';
$lang->js->deleteing             = '删除中';
$lang->js->doing                 = '处理中';
$lang->js->timeout               = '网络超时,请重试';
$lang->js->confirmDiscardChanges = '表单已更改，确定关闭？';
$lang->js->yes                   = '是';
$lang->js->no                    = '否';

/* Contact fields*/
$lang->company = new stdclass();
$lang->company->contactUs = '联系我们';
$lang->company->address   = '地址';
$lang->company->phone     = '电话';
$lang->company->email     = 'Email';
$lang->company->fax       = '传真';
$lang->company->qq        = 'QQ';
$lang->company->code     = '微博';
$lang->company->weixin    = '微信';
$lang->company->wangwang  = '旺旺';

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

$lang->admin->common = '后台管理';

$lang->menu->sys = new stdclass();
$lang->menu->sys->company   = '公司|company|setbasic|';
$lang->menu->sys->user      = '组织|user|admin|';
$lang->menu->sys->group     = '权限|group|browse|';
$lang->menu->sys->entry     = '应用|entry|admin|';
$lang->menu->sys->system    = '系统|mail|admin|';
$lang->menu->sys->package   = '扩展|package|browse|';

$lang->message = new stdclass(); 
$lang->blog    = new stdclass(); 
$lang->group   = new stdclass(); 

/* Menu entry. */
$lang->entry       = new stdclass();
$lang->entry->menu = new stdclass();
$lang->entry->menu->admin  = array('link' => '应用列表|entry|admin|', 'alias' => 'edit');
$lang->entry->menu->create = '添加应用|entry|create|';
$lang->entry->menu->webapp = 'WEB应用|webapp|obtain|';

/* Menu system. */
$lang->system       = new stdclass();
$lang->system->menu = new stdclass();
$lang->system->menu->mail   = array('link' => '发信|mail|admin|', 'alias' => 'detect,edit,save,test');
$lang->system->menu->trash  = array('link' => '回收站|action|trash|');
$lang->system->menu->cron   = '计划任务|cron|index|';
$lang->system->menu->backup = '备份|backup|index|';

$lang->article = new stdclass();
$lang->article->menu = new stdclass();
$lang->article->menu->admin  = '浏览|article|admin|';
$lang->article->menu->tree   = '模块|tree|browse|type=article';
$lang->article->menu->create = array('link' => '添加文章|article|create|type=article', 'alias' => 'edit');

$lang->menuGroups = new stdclass();

$lang->menu->dashboard = new stdclass();
$lang->menu->dashboard->todo     = '待办|todo|calendar|';
$lang->menu->dashboard->task     = '任务|my|task|';
$lang->menu->dashboard->project  = '项目|my|project|';
$lang->menu->dashboard->order    = '商机|my|order|';
$lang->menu->dashboard->contract = '合同|my|contract|';
$lang->menu->dashboard->review   = '审批|my|review|';
$lang->menu->dashboard->company  = '组织|my|company|';
$lang->menu->dashboard->dynamic  = '动态|my|dynamic|';

$lang->todo = new stdclass();
$lang->todo->menu = new stdclass();
$lang->todo->menu->calendar        = '日历|todo|calendar|';
$lang->todo->menu->assignedToOther = '指派他人|todo|browse|mode=assignedtoother';
$lang->todo->menu->assignedToMe    = '指派给我|todo|browse|mode=assignedtome';
$lang->todo->menu->undone          = '未完成|todo|browse|mode=undone';
$lang->todo->menu->future          = '待定|todo|browse|mode=future';
$lang->todo->menu->all             = '所有|todo|browse|mode=all';
 
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
$lang->error->length       = array('<strong>%s</strong>长度错误，应当为<strong>%s</strong>', '<strong>%s</strong>长度应当不超过<strong>%s</strong>，且不小于<strong>%s</strong>。');
$lang->error->reg          = '<strong>%s</strong>不符合格式，应当为:<strong>%s</strong>。';
$lang->error->unique       = '<strong>%s</strong>已经有<strong>%s</strong>这条记录了。';
$lang->error->notempty     = '<strong>%s</strong>不能为空。';
$lang->error->empty        = "<strong>%s</strong>必须为空。";
$lang->error->equal        = '<strong>%s</strong>必须为<strong>%s</strong>。';
$lang->error->gt           = "<strong>%s</strong>应当大于<strong>%s</strong>。";
$lang->error->ge           = "<strong>%s</strong>应当不小于<strong>%s</strong>。";
$lang->error->lt           = "<strong>%s</strong>应当小于<strong>%s</strong>。";
$lang->error->le           = "<strong>%s</strong>应当不大于<strong>%s</strong>。";
$lang->error->in           = '<strong>%s</strong>必须为<strong>%s</strong>。';
$lang->error->int          = array('<strong>%s</strong>应当是数字。', '<strong>%s</strong>最小值为%s',  '<strong>%s</strong>应当介于<strong>%s-%s</strong>之间。');
$lang->error->float        = '<strong>%s</strong>应当是数字，可以是小数。';
$lang->error->email        = '<strong>%s</strong>应当为合法的EMAIL。';
$lang->error->URL          = '<strong>%s</strong>应当为合法的URL。';
$lang->error->date         = '<strong>%s</strong>应当为合法的日期。';
$lang->error->code         = '<strong>%s</strong>应当为字母或数字的组合。';
$lang->error->account      = '<strong>%s</strong>应当为字母或数字的组合，至少三位';
$lang->error->passwordsame = '两次密码应当相等。';
$lang->error->passwordrule = '密码应该符合规则，长度至少为六位。';
$lang->error->captcha      = '请输入正确的验证码。';
$lang->error->noWritable   = '%s 可能不可写，请修改权限！';
$lang->error->noConvertFun = '不存在iconv和mb_convert_encoding转码方法，不能将数据转成想要的编码！';
$lang->error->notInt       = '<strong>%s</strong>不能为纯数字组合。';
$lang->error->pasteImg     = '您的浏览器不支持粘贴图片！';

/* The pager items. */
$lang->pager = new stdclass();
$lang->pager->noRecord   = '暂时没有记录。';
$lang->pager->digest     = "共 <strong>%s</strong> 条记录，%s <strong>%s/%s</strong> &nbsp; ";
$lang->pager->recPerPage = "每页 <strong>%s</strong> 条";
$lang->pager->first      = '首页';
$lang->pager->pre        = '上页';
$lang->pager->next       = '下页';
$lang->pager->last       = '末页';
$lang->pager->locate     = 'Go!';

/* The excel items. */
$lang->excel = new stdClass();
$lang->excel->canNotRead = '不能解析该文件';

$lang->excel->error = new stdclass();
$lang->excel->error->info  = '您输入的值不在下拉框列表内。';
$lang->excel->error->title = '输入有误';

$lang->excel->title = new stdclass();
$lang->excel->title->contact  = '联系人';
$lang->excel->title->sysValue = '系统数据';

$lang->date = new stdclass();
$lang->date->minute = '分钟';
$lang->date->day    = '天';

$lang->genderList = new stdclass();
$lang->genderList->m = '男';
$lang->genderList->f = '女';
$lang->genderList->u = '';

/* datepicker 时间*/
$lang->datepicker = new stdclass();

$lang->datepicker->dpText = new stdclass();
$lang->datepicker->dpText->TEXT_OR          = '或 ';
$lang->datepicker->dpText->TEXT_PREV_YEAR   = '去年';
$lang->datepicker->dpText->TEXT_PREV_MONTH  = '上月';
$lang->datepicker->dpText->TEXT_PREV_WEEK   = '上周';
$lang->datepicker->dpText->TEXT_YESTERDAY   = '昨天';
$lang->datepicker->dpText->TEXT_THIS_MONTH  = '本月';
$lang->datepicker->dpText->TEXT_THIS_WEEK   = '本周';
$lang->datepicker->dpText->TEXT_TODAY       = '今天';
$lang->datepicker->dpText->TEXT_NEXT_YEAR   = '明年';
$lang->datepicker->dpText->TEXT_NEXT_MONTH  = '下月';
$lang->datepicker->dpText->TEXT_CLOSE       = '关闭';
$lang->datepicker->dpText->TEXT_DATE        = '选择时间段';
$lang->datepicker->dpText->TEXT_CHOOSE_DATE = '选择日期';

$lang->datepicker->dayNames     = array('星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六');
$lang->datepicker->abbrDayNames = array('日', '一', '二', '三', '四', '五', '六');
$lang->datepicker->monthNames   = array('一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月');

/* Set currency items. */
$lang->currencyList['rmb']  = '人民币';
$lang->currencyList['usd']  = '美元';
$lang->currencyList['hkd']  = '港元';
$lang->currencyList['twd']  = '台元';
$lang->currencyList['euro'] = '欧元';
$lang->currencyList['dem']  = '马克';
$lang->currencyList['chf']  = '瑞士法郎';
$lang->currencyList['frf']  = '法国法郎';
$lang->currencyList['gbp']  = '英镑';
$lang->currencyList['nlg']  = '荷兰盾';
$lang->currencyList['cad']  = '加拿大元';
$lang->currencyList['sur']  = '卢布';
$lang->currencyList['inr']  = '卢比';
$lang->currencyList['aud']  = '澳大利亚元';
$lang->currencyList['nzd']  = '新西兰元';
$lang->currencyList['thb']  = '泰国铢';
$lang->currencyList['sgd']  = '新加坡元';

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

$lang->currencyTip['w'] = '万';
$lang->currencyTip['y'] = '亿';

/* The datetime settings. */
define('DT_DATETIME1',  'Y-m-d H:i:s');
define('DT_DATETIME2',  'y-m-d H:i');
define('DT_MONTHTIME1', 'n/d H:i');
define('DT_MONTHTIME2', 'n月d日 H:i');
define('DT_DATE1',      'Y-m-d');
define('DT_DATE2',      'Ymd');
define('DT_DATE3',      'Y年m月d日');
define('DT_DATE4',      'n月j日');
define('DT_TIME1',      'H:i:s');
define('DT_TIME2',      'H:i');
