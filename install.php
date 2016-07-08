<?php
function plugin_version_checkFiles()
{
return array('name' => 'Check files',
'version' => '1.0',
'author'=> 'Valentin DEVILLE',
'license' => 'GPLv2',
'verMinOcs' => '2.2');
}

function plugin_init_checkFiles()
{
$object = new plugins;
$object -> add_cd_entry("checkFiles","other");

$object -> sql_query("CREATE TABLE IF NOT EXISTS `checkfiles` (
                      `ID` INT(11) NOT NULL AUTO_INCREMENT,
                      `HARDWARE_ID` INT(11) NOT NULL,
                      `PATH` TEXT DEFAULT NULL,
                      `EXIST` VARCHAR(255) DEFAULT NULL,
                      PRIMARY KEY  (`ID`,`HARDWARE_ID`)
                      ) ENGINE=INNODB;");

}

function plugin_delete_checkFiles()
{
$object = new plugins;
$object -> del_cd_entry("checkFiles");
$object -> sql_query("DROP TABLE `checkfiles`");

}