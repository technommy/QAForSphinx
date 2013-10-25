<?php
/*
	Question2Answer (c) Gideon Greenspan

	http://www.question2answer.org/

	File: qa-plugin/lang-filter/qa-lang-filter-admin.php
	Version: See define()s at top of qa-include/qa-base.php
	Description: Initiates lang filter settings

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

class qa_lang_filter_admin {

	const PLUGIN			= 'lang_filter';
	const ENABLE			= 'lang_filter_enable';
	const ENABLE_DFL		= false;
	const ENTRIES			= 'lang_filter_entries';
	const ENTRIES_DFL		= '';
	const ENTRIES_ROWS		= 10;
	const SAVE_BUTTON		= 'lang_filter_save_button';
	const DFL_BUTTON		= 'lang_filter_dfl_button';
	const SAVED_MESSAGE		= 'lang_filter_saved_message';
	const RESET_MESSAGE		= 'lang_filter_reset_message';
	
	var $directory;
	var $urltoroot;

	function load_module($directory, $urltoroot) {
		$this->directory=$directory;
		$this->urltoroot=$urltoroot;
	}
	function option_default($option) {
		if ($option==self::ENABLE) return self::ENABLE_DFL;
		if ($option==self::ENTRIES) return self::ENTRIES_DFL;
	}
	function admin_form(&$qa_content) {
		$saved = '';
		$error = false;
		$error_entries = '';
		if (qa_clicked(self::SAVE_BUTTON)) {
			// check error
			qa_opt(self::ENABLE, (int)qa_post_text(self::ENABLE.'_field'));
			qa_opt(self::ENTRIES, qa_post_text(self::ENTRIES.'_field'));
			$saved = qa_lang_html(self::PLUGIN.'/'.self::SAVED_MESSAGE);
		}
		if (qa_clicked(self::DFL_BUTTON)) {
			qa_opt(self::ENABLE, (int)self::ENABLE_DFL);
			qa_opt(self::ENTRIES, self::ENTRIES_DFL);
			$saved = qa_lang_html(self::PLUGIN.'/'.self::RESET_MESSAGE);
		}
		$rules = array(self::ENTRIES => self::ENABLE.'_field');
		qa_set_display_rules($qa_content, $rules);

		$form = array();
		if($saved != '' && !$error)
			$form['ok'] = $saved;

		$form['fields'][] = array(
			'id' => self::ENABLE,
			'label' => qa_lang_html(self::PLUGIN.'/'.self::ENABLE.'_label'),
			'type' => 'checkbox',
			'value' => (int)qa_opt(self::ENABLE),
			'tags' => 'NAME="'.self::ENABLE.'_field" ID="'.self::ENABLE.'_field"',
		);
		$form['fields'][] = array(
			'id' => self::ENTRIES,
			'label' => qa_lang_html(self::PLUGIN.'/'.self::ENTRIES.'_label'),
			'type' => 'textarea',
			'value' => qa_opt(self::ENTRIES),
			'tags' => 'NAME="'.self::ENTRIES.'_field" ID="'.self::ENTRIES.'_field"',
			'rows' => self::ENTRIES_ROWS,
			'note' => qa_lang(self::PLUGIN.'/'.self::ENTRIES.'_note'),
			'error' => $error_entries,
		);
		$form['buttons'][] = array(
			'label' => qa_lang_html(self::PLUGIN.'/'.self::SAVE_BUTTON),
			'tags' => 'NAME="'.self::SAVE_BUTTON.'" ID="'.self::SAVE_BUTTON.'"',
		);
		$form['buttons'][] = array(
			'label' => qa_lang_html(self::PLUGIN.'/'.self::DFL_BUTTON),
			'tags' => 'NAME="'.self::DFL_BUTTON.'" ID="'.self::DFL_BUTTON.'"',
		);

		return $form;
	}
	
};

/*
	Omit PHP closing tag to help avoid accidental output
*/