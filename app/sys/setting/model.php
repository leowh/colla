<?php
/**
 * The model file of mail module of RanZhi.
 *
 * @copyright   Copyright 2009-2015 青岛易软天创网络科技有限公司(QingDao Nature Easy Soft Network Technology Co,LTD, www.cnezsoft.com)
 * @license     ZPL (http://zpl.pub/page/zplv12.html)
 * @author      Chunsheng Wang <chunsheng@cnezsoft.com>
 * @package     setting
 * @version     $Id: model.php 3138 2015-11-09 07:32:18Z chujilu $
 * @link        http://www.ranzhico.com
 */
?>
<?php
class settingModel extends model
{
    //-------------------------------- methods for get, set and delete setting items. ----------------------------//
    
    /**
     * Get value of an item.
     * 
     * @param  string   $paramString    see parseItemParam();
     * @param  string   $type
     * @access public
     * @return misc
     */
    public function getItem($paramString, $type = 'config')
    {
        return $this->createDAO($this->parseItemParam($paramString, $type), 'select', $type)->fetch('value');
    }

    /**
     * Get some items.
     * 
     * @param  string   $paramString    see parseItemParam();
     * @param  string   $type
     * @access public
     * @return array
     */
    public function getItems($paramString, $type = 'config')
    {
        return $this->createDAO($this->parseItemParam($paramString, $type), 'select', $type)->fetchAll('id');
    }

    /**
     * Set value of an item. 
     * 
     * @param  string      $path     system.sys.common.global.sn or system.sys.common.sn 
     * @param  string      $value 
     * @param  string      $type
     * @access public
     * @return void
     */
    public function setItem($path, $value = '', $type = 'config')
    {
        $level   = substr_count($path, '.');
        $section = '';
        if($level <= 2) return false;
        if($type == 'config')
        {
        if($level == 3) list($owner, $app, $module, $key) = explode('.', $path);
        if($level == 4) list($owner, $app, $module, $section, $key) = explode('.', $path);
        }
        elseif($type == 'lang')
        {
            if($level == 3) return false;
            if($level == 4) list($lang, $app, $module, $key, $system) = explode('.', $path);
            if($level == 5) list($lang, $app, $module, $section, $key, $system) = explode('.', $path);
        }

        $item = new stdclass();

        if($type == 'config')
        {
            $item->owner = $owner;
        }
        elseif($type == 'lang')
        {
            $item->lang   = $lang;
            $item->system = $system;
        }
        $item->app     = $app;
        $item->module  = $module;
        $item->section = $section;
        $item->key     = $key;
        $item->value   = $value;

        $table = $type == 'config' ? TABLE_CONFIG : TABLE_LANG;
        $this->dao->replace($table)->data($item)->exec();
    }

    /**
     * Batch set items, the example:
     * 
     * $path = 'system.mail';
     * $items->turnon = true;
     * $items->smtp->host = 'localhost';
     *
     * @param  string         $path   like system.sys.mail 
     * @param  array|object   $items  the items array or object, can be mixed by one level or two levels.
     * @param  string         $type
     * @access public
     * @return bool
     */
    public function setItems($path, $items, $type = 'config')
    {
        foreach($items as $key => $item)
        {
            if(is_array($item) or is_object($item))
            {
                $section = $key;
                foreach($item as $subKey => $subItem)
                {
                    $this->setItem($path . '.' . $section . '.' . $subKey, $subItem, $type);
                }
            }
            else
            {
                $this->setItem($path . '.' . $key, $item);
            }
        }

        if(!dao::isError()) return true;
        return false;
    }

    /**
     * Delete items.
     * 
     * @param  string   $paramString    see parseItemParam();
     * @param  string   $type
     * @access public
     * @return void
     */
    public function deleteItems($paramString, $type = 'config')
    {
        $this->createDAO($this->parseItemParam($paramString, $type), 'delete', $type)->exec();
    }

    /**
     * Parse the param string for select or delete items.
     * 
     * @param  string    $paramString     owner=xxx&app=sys&module=common&key=sn and so on.
     * @param  string    $type
     * @access public
     * @return array
     */
    public function parseItemParam($paramString, $type = 'config')
    {
        /* Parse the param string into array. */
        parse_str($paramString, $params); 

        /* Init fields not set in the param string. */
        $fields = 'owner,lang,app,module,section,key,system';
        $fields = explode(',', $fields);
        foreach($fields as $field) if(!isset($params[$field])) $params[$field] = '';

        return $params;
    }

    /**
     * Create a DAO object to select or delete one or more records.
     * 
     * @param  array  $params     the params parsed by parseItemParam() method.
     * @param  string $method     select|delete.
     * @param  string $type
     * @access public
     * @return object
     */
    public function createDAO($params, $method = 'select', $type = 'config')
    {
        $table = $type == 'config' ? TABLE_CONFIG : TABLE_LANG;
        return $this->dao->$method('*')->from($table)->where('1 = 1')
            ->beginIF($type == 'config' and $params['owner'])->andWhere('owner')->in($params['owner'])->fi()
            ->beginIF($type == 'lang' and $params['lang'])->andWhere('lang')->in($params['lang'])->fi()
            ->beginIF($params['app'])->andWhere('app')->in($params['app'])->fi()
            ->beginIF($params['module'])->andWhere('module')->in($params['module'])->fi()
            ->beginIF($params['section'])->andWhere('section')->in($params['section'])->fi()
            ->beginIF($params['key'])->andWhere('`key`')->in($params['key'])->fi()
            ->beginIF($type == 'lang' and $params['system'])->andWhere('`system`')->in($params['system'])->fi();
    }

    /**
     * Get config of system and one user.
     *
     * @param  string $account 
     * @access public
     * @return array
     */
    public function getSysAndPersonalConfig($account = '')
    {
        $owner = 'system,' . ($account ? $account : '');
        $app   = $this->app->getAppName();

        $records = $this->dao->select('*')->from(TABLE_CONFIG)
            ->where('owner')->in($owner)
            ->orderBy('id')
            ->fetchAll('id');

        if(!$records) return array();

        /* Group records by owner and module. */
        $config = array();
        foreach($records as $record)
        {
            if(!isset($record->module)) return array();    // If no module field, return directly.
            if(empty($record->module)) continue;

            if(!isset($config[$record->owner])) $config[$record->owner] = new stdclass();
            if(!isset($config[$record->owner]->{$record->module})) $config[$record->owner]->{$record->module} = new stdclass();
            if($record->section)
            {
                if(!isset($config[$record->owner]->{$record->module}->{$record->section})) $config[$record->owner]->{$record->module}->{$record->section} = new stdclass();
                $config[$record->owner]->{$record->module}->{$record->section}->{$record->key} = $record;
            }
            else
            {
                $config[$record->owner]->{$record->module}->{$record->key} = $record;
            }
        }
        return $config;
    }

    //-------------------------------- methods for version and sn. ----------------------------//
   
    /**
     * Get the version of current ranzhi.
     * 
     * Since the version field not saved in db. So if empty, return 1.1.
     *
     * @access public
     * @return void
     */
    public function getVersion()
    {
        $version = isset($this->config->global->version) ? $this->config->global->version : '1.1';    // No version, set as 1.0.
        return $version;
    }

    /**
     * Update version 
     * 
     * @param  string    $version 
     * @access public
     * @return void
     */
    public function updateVersion($version)
    {
        return $this->setItem('system.sys.common.global.version', $version);
    }

    /**
     * Get all lang.
     * 
     * @access public
     * @return array
     */
    public function getAllLang()
    {
        $allCustomLang = $this->dao->select('*')->from(TABLE_LANG)->orderBy('app,lang,id')->fetchGroup('app', 'id');

        $currentLang   = $this->app->getClientLang();
        $processedLang = array();
        foreach($allCustomLang as $app => $customLang)
        {
            foreach($customLang as $id => $lang)
            {
                if($lang->lang != $lang and $lang->lang != 'all') continue;
                $processedLang[$app][$lang->module][$lang->section][$lang->key] = $lang->value;
            }
        }

        return $processedLang;
    }

    /**
     * Set the sn of current ranzhi.
     * 
     * @access public
     * @return void
     */
    public function setSN()
    {
        $sn = $this->getItem('owner=system&module=common&section=global&key=sn');
        if($this->snNeededUpdate($sn)) $this->setItem('system.common.global.sn', $this->computeSN());
    }

    /**
     * Compute a SN. Use the server ip, and server software string as seed, and an rand number, two micro time
     * 
     * Note: this sn just to unique this ranzhi. No any private info. 
     *
     * @access public
     * @return string
     */
    public function computeSN()
    {
        $seed = $this->server->SERVER_ADDR . $this->server->SERVER_SOFTWARE;
        $sn   = md5(str_shuffle(md5($seed . mt_rand(0, 99999999) . microtime())) . microtime());
        return $sn;
    }
}
