<?php
/*
	Question2Answer (c) Gideon Greenspan

	http://www.question2answer.org/

	File: qa-plugin/lang-filter/qa-lang-filter-lang-default.php
	Version: See define()s at top of qa-include/qa-base.php
	Description: US English language phrases for lang filter plugin

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
	'lang_filter_enable_label' => 'Enable plugin',
	'lang_filter_entries_label' => 'Replace entries:',
	'lang_filter_entries_note' => 'Rules:<BR/>Manual ex: Question==Topic||Answer==Reply<BR/>Program ex: @EVAL return \'Question==Topic||Answer==Reply\';<BR/><SPAN style="font-weight:bold">New line replaced "||".</SPAN>',
	'lang_filter_entries_error' => 'Manual ex: Question==Topic||Answer==Reply<BR/>Program ex: @EVAL return \'Question==Topic||Answer==Reply\';<BR/><SPAN style="font-weight:bold">New line replaced "||".</SPAN>',
	'lang_filter_save_button' => 'Save Changes',
	'lang_filter_dfl_button' => 'Reset Defaults (Discard Settings)',
	'lang_filter_saved_message' => 'Plugin settings saved',
	'lang_filter_reset_message' => 'Plugin settings reset',
);

/*
	Omit PHP closing tag to help avoid accidental output
*/