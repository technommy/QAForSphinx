<?php
/*
	Question2Answer (c) Gideon Greenspan

	http://www.question2answer.org/
	
	File: qa-plugin/lang-filter/qa-lang-filter-overrides.php
	Version: See define()s at top of qa-include/qa-base.php
	Description: Override qa_lang() function of qa-base.php

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

if (!defined('QA_VERSION')) { // don't allow this page to be requested directly from browser
	header('Location: ../');
	exit;
}

require_once QA_INCLUDE_DIR.'qa-db.php';

if(!defined('QA_LANGREPLACE_ENABLE')) define('QA_LANGREPLACE_ENABLE', 'lang_filter_enable');
if(!defined('QA_LANGREPLACE_ENTRIES')) define('QA_LANGREPLACE_ENTRIES', 'lang_filter_entries');

$qa_langfilter_loaded = false;
$qa_langfilter_enable = false;
$qa_langfilter_from = array();
$qa_langfilter_to = array();

function qa_lang($identifier)
{
	global $qa_langfilter_loaded, $qa_langfilter_enable, $qa_langfilter_from, $qa_langfilter_to;

	$phrase = qa_lang_base($identifier);

	if(!$qa_langfilter_loaded) {
		$qa_langfilter_enable = qa_db_read_one_value(qa_db_query_sub('SELECT content FROM ^options WHERE `title`="'.QA_LANGREPLACE_ENABLE.'"'), true);
		if($qa_langfilter_enable) {
			$entries = qa_db_read_one_value(qa_db_query_sub('SELECT content FROM ^options WHERE `title`="'.QA_LANGREPLACE_ENTRIES.'"'), true);
			if(stripos($entries, '@EVAL') !== false)
				$entries = eval(str_ireplace('@EVAL', '', $entries));
			if(trim($entries) != '') {
				$entries = str_replace(array("\r\n","\n","\r"), '||', $entries);
				$entries = explode('||',$entries);
				if(is_array($entries)) {
					foreach($entries as $entry) {
						$fromto = explode('==',$entry);
						if(is_array($fromto) && count($fromto) == 2) {
							$qa_langfilter_from[] = $fromto[0];
							$qa_langfilter_to[] = $fromto[1];
						}
					}
				}
			}
		}
		$qa_langfilter_loaded = true;
	}
	if($qa_langfilter_enable) {
		if(strlen($phrase) >= 2 && substr($phrase, 0, 1) != '[' && substr($phrase, strlen($phrase)-1, 1) != ']') {
			$phrase = str_replace($qa_langfilter_from, $qa_langfilter_to, $phrase);
		}
	}
	return $phrase;
}
/*
	Omit PHP closing tag to help avoid accidental output
*/