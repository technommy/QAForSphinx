<?php
/*
	Question2Answer (c) Gideon Greenspan

	http://www.question2answer.org/

	File: qa-plugin/lang-filter/qa-plugin.php
	Version: See define()s at top of qa-include/qa-base.php
	Description: Initiates lang filter plugin

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	More about this license: http://www.question2answer.org/license.php
*/

/*
	Plugin Name: Lang Filter
	Plugin URI: 
	Plugin Description: Replace word in lang string to another word.
	Plugin Version: 1.0
	Plugin Date: 2013-04-19
	Plugin Author: sama55@CMSBOX
	Plugin Author URI: http://www.question2answer.org/
	Plugin License: GPLv2
	Plugin Minimum Question2Answer Version: 1.5
	Plugin Update Check URI: 
*/

if (!defined('QA_VERSION')) { // don't allow this page to be requested directly from browser
	header('Location: ../../');
	exit;
}

qa_register_plugin_phrases('qa-lang-filter-lang-*.php', 'lang_filter');
qa_register_plugin_module('module', 'qa-lang-filter-admin.php', 'qa_lang_filter_admin', 'Lang Filter');
qa_register_plugin_overrides('qa-lang-filter-overrides.php');

/*
	Omit PHP closing tag to help avoid accidental output
*/