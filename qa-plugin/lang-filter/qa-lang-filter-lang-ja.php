<?php
/*
	Question2Answer (c) Gideon Greenspan

	http://www.question2answer.org/

	File: qa-plugin/lang-filter/qa-lang-filter-lang-ja.php
	Version: See define()s at top of qa-include/qa-base.php
	Description: Japanese language phrases for lang filter plugin

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

return array(
	'lang_filter_enable_label' => 'プラグインを有効にする',
	'lang_filter_entries_label' => '置換する語句:',
	'lang_filter_entries_note' => 'ルール:<BR/>手動設定の例: 質問==トピック||回答==返信<BR/>プログラム設定の例: @EVAL return \'質問==トピック||回答==返信\';<BR/><SPAN style="font-weight:bold">改行は"||"に置換されます。</SPAN>',
	'lang_filter_entries_error' => '手動設定の例: 質問==トピック||回答==返信<BR/>プログラム設定の例: @EVAL return \'質問==トピック||回答==返信\';<BR/><SPAN style="font-weight:bold">改行は"||"に置換されます。</SPAN>',
	'lang_filter_save_button' => '変更を保存',
	'lang_filter_dfl_button' => '初期値に戻す （設定を破棄）',
	'lang_filter_saved_message' => 'プラグインの設定を保存しました。',
	'lang_filter_reset_message' => 'プラグインの設定を初期値に戻しました。',
);

/*
	Omit PHP closing tag to help avoid accidental output
*/