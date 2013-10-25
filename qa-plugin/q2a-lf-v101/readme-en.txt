/*******************************************************************/
Lang Filter(Replace) plugin for question2answer
/*******************************************************************/

/*-----------------------------------------------------------------*/
1. Summary
/*-----------------------------------------------------------------*/
This package is plugin for question2answer.

question2answer: http://www.question2answer.org/

/*-----------------------------------------------------------------*/
2. Feature of this plugin
/*-----------------------------------------------------------------*/
1. Replace words in language phrase of Q2A.

/*-----------------------------------------------------------------*/
3. Version compatibility
/*-----------------------------------------------------------------*/
question2answer V1.5 later

/*-----------------------------------------------------------------*/
4. Installation/Settings
/*-----------------------------------------------------------------*/
1.Unzip archive any local folder.
2.Upload lang-filter folder under qa-plugin folder.
3.Log in administrator account.
4.Select admin -> plugins menu.
5.After setting, and save.

/*-----------------------------------------------------------------*/
5. Uninstallation
/*-----------------------------------------------------------------*/
1.Log in administrator account.
2.Select admin -> plugins menu.
3.Click reset button.
4.Delete lang-filter folder under qa-plugin folder.

/*-----------------------------------------------------------------*/
6. Options
/*-----------------------------------------------------------------*/
[Enable plugin]
OFF: Disable plugin
ON:  Enable plugin

[Replace entries]
Specify replaced item.

Example(Rules):
Manual ex: Topic==Topic||Reply==Reply
Program ex: @EVAL return 'Topic==Topic||Reply==Reply';
New line replaced "||".

/*-----------------------------------------------------------------*/
7. How to repeal plug-in compulsorily 
/*-----------------------------------------------------------------*/
When you make mistake in specification of rule and Q2A malfunctions,
turn OFF(0) enable flag of this plugin by phpmyadmin.

Table: qa_options
title : lang_filter_enable
content: 1 -> 0

/*-----------------------------------------------------------------*/
8. License / Disclaimer
/*-----------------------------------------------------------------*/
1.This software obeys license of Question2Answer.
2.The author does not always promise to support.
3.The author does not compensate you for what kind of damage that you used question2answer or this file.

/*-----------------------------------------------------------------*/
9. Author/Creator
/*-----------------------------------------------------------------*/
handle: sama55
site: http://cmsbox.jp/

/*-----------------------------------------------------------------*/
10. Version history
/*-----------------------------------------------------------------*/
Å°[2013/04/20] V1.0	First Release
Å°[2013/05/23] V1.0.1	Change author site.

Have fun !!