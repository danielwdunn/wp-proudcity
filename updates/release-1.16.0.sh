# Updates for the 1.16.0 release
# (no manual updates)

PHP=${1}

# Enable Link Checker
wp --allow-root plugin activate broken-link-checker

# Update menu to include Link checker link https://github.com/proudcity/wp-proudcity/issues/570
wp --allow-root eval-file /root/release-1.16.0.php

# Set up Broken Link Checker options https://github.com/proudcity/wp-proudcity/issues/570
wp option set 'wsblc_options' '{"max_execution_time":420,"check_threshold":336,"recheck_count":3,"recheck_threshold":1800,"run_in_dashboard":true,"run_via_cron":true,"mark_broken_links":false,"broken_link_css":".broken_link, a.broken_link {\r\n\ttext-decoration: line-through;\r\n}","nofollow_broken_links":false,"mark_removed_links":false,"removed_link_css":".removed_link, a.removed_link {\r\n\ttext-decoration: line-through;\r\n}","exclusion_list":[],"send_email_notifications":false,"send_authors_email_notifications":false,"notification_email_address":"","notification_schedule":"daily","last_notification_sent":0,"suggestions_enabled":true,"warnings_enabled":true,"server_load_limit":4,"enable_load_limit":true,"custom_fields":[],"enabled_post_statuses":["publish"],"autoexpand_widget":true,"dashboard_widget_capability":"edit_others_posts","show_link_count_bubble":true,"table_layout":"flexible","table_compact":true,"table_visible_columns":["new-url","status","used-in","new-link-text"],"table_links_per_page":30,"table_color_code_status":true,"need_resynch":true,"current_db_version":9,"timeout":30,"highlight_permanent_failures":false,"failure_duration_threshold":3,"logging_enabled":false,"log_file":"","custom_log_file_enabled":false,"installation_complete":true,"installation_flag_cleared_on":"2016-09-30T18:29:36+00:00 (1475260176.7845)","installation_flag_set_on":"2016-09-30T18:29:36+00:00 (1475260176.914)","user_has_donated":false,"donation_flag_fixed":false,"show_link_actions":{"edit":true,"delete":true,"blc-discard-action":true,"blc-dismiss-action":true,"blc-recheck-action":true,"blc-deredirect-action":false},"first_installation_timestamp":1475260176,"active_modules":{"http":{"ModuleID":"http","ModuleCategory":"checker","ModuleContext":"on-demand","ModuleLazyInit":true,"ModuleClassName":"blcHttpChecker","ModulePriority":-1,"ModuleCheckerUrlPattern":"","ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"Name":"Basic HTTP","PluginURI":"","Version":"1.0","Description":"Check all links that have the HTTP\/HTTPS protocol.","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"Basic HTTP","AuthorName":"Janis Elsts","file":"checkers\/http.php"},"link":{"ModuleID":"link","ModuleCategory":"parser","ModuleContext":"on-demand","ModuleLazyInit":true,"ModuleClassName":"blcHTMLLink","ModulePriority":1000,"ModuleCheckerUrlPattern":"","ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"Name":"HTML links","PluginURI":"","Version":"1.0","Description":"Example : <code>&lt;a href=\"http:\/\/example.com\/\"&gt;link text&lt;\/a&gt;<\/code>","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"HTML links","AuthorName":"Janis Elsts","file":"parsers\/html_link.php"},"image":{"ModuleID":"image","ModuleCategory":"parser","ModuleContext":"on-demand","ModuleLazyInit":true,"ModuleClassName":"blcHTMLImage","ModulePriority":900,"ModuleCheckerUrlPattern":"","ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"Name":"HTML images","PluginURI":"","Version":"1.0","Description":"e.g. <code>&lt;img src=\"http:\/\/example.com\/fluffy.jpg\"&gt;<\/code>","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"HTML images","AuthorName":"Janis Elsts","file":"parsers\/image.php"},"metadata":{"ModuleID":"metadata","ModuleCategory":"parser","ModuleContext":"on-demand","ModuleLazyInit":true,"ModuleClassName":"blcMetadataParser","ModulePriority":0,"ModuleCheckerUrlPattern":"","ModuleHidden":true,"ModuleAlwaysActive":true,"ModuleRequiresPro":false,"Name":"Metadata","PluginURI":"","Version":"1.0","Description":"Parses metadata (AKA custom fields)","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"Metadata","AuthorName":"Janis Elsts","file":"parsers\/metadata.php"},"url_field":{"ModuleID":"url_field","ModuleCategory":"parser","ModuleContext":"on-demand","ModuleLazyInit":true,"ModuleClassName":"blcUrlField","ModulePriority":0,"ModuleCheckerUrlPattern":"","ModuleHidden":true,"ModuleAlwaysActive":true,"ModuleRequiresPro":false,"Name":"URL fields","PluginURI":"","Version":"1.0","Description":"Parses data fields that contain a single, plaintext URL.","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"URL fields","AuthorName":"Janis Elsts","file":"parsers\/url_field.php"},"post":{"Name":"Posts","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"post","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"page":{"Name":"Pages","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"page","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"youtube-checker":{"ModuleID":"youtube-checker","ModuleCategory":"checker","ModuleContext":"on-demand","ModuleLazyInit":true,"ModuleClassName":"blcYouTubeChecker","ModulePriority":100,"ModuleCheckerUrlPattern":"@^https?:\/\/(?:([\\w\\d]+\\.)*youtube\\.[^\/]+\/watch\\?.*v=[^\/#]|youtu\\.be\/[^\/#\\?]+|(?:[\\w\\d]+\\.)*?youtube\\.[^\/]+\/(playlist|view_play_list)\\?[^\/#]{15,}?)@i","ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"Name":"YouTube API","PluginURI":"","Version":"3","Description":"Check links to YouTube videos and playlists using the YouTube API.","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"YouTube API","AuthorName":"Janis Elsts","file":"extras\/youtube.php"},"youtube-iframe":{"ModuleID":"youtube-iframe","ModuleCategory":"parser","ModuleContext":"on-demand","ModuleLazyInit":true,"ModuleClassName":"blcYouTubeIframe","ModulePriority":120,"ModuleCheckerUrlPattern":"","ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"Name":"Embedded YouTube videos","PluginURI":"","Version":"1.0","Description":"Parse embedded videos from YouTube","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"Embedded YouTube videos","AuthorName":"Janis Elsts","file":"extras\/youtube-iframe.php"},"dummy":{"ModuleID":"dummy","ModuleCategory":"container","ModuleContext":"all","ModuleLazyInit":false,"ModuleClassName":"blcDummyManager","ModulePriority":0,"ModuleCheckerUrlPattern":"","ModuleHidden":true,"ModuleAlwaysActive":true,"ModuleRequiresPro":false,"Name":"Dummy","PluginURI":"","Version":"1.0","Description":"","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"Dummy","AuthorName":"Janis Elsts","file":"containers\/dummy.php"},"question":{"Name":"Answers","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"question","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"blogroll":{"ModuleID":"blogroll","ModuleCategory":"container","ModuleContext":"all","ModuleLazyInit":false,"ModuleClassName":"blcBookmarkManager","ModulePriority":0,"ModuleCheckerUrlPattern":"","ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"Name":"Blogroll items","PluginURI":"","Version":"1.0","Description":"","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"Blogroll items","AuthorName":"Janis Elsts","file":"containers\/blogroll.php"},"staff-member":{"Name":"Contacts","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"staff-member","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"custom_field":{"ModuleID":"custom_field","ModuleCategory":"container","ModuleContext":"all","ModuleLazyInit":false,"ModuleClassName":"blcPostMetaManager","ModulePriority":0,"ModuleCheckerUrlPattern":"","ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"Name":"Custom fields","PluginURI":"","Version":"1.0","Description":"Container module for post metadata.","Author":"Janis Elsts","AuthorURI":"","TextDomain":"broken-link-checker","DomainPath":"","Network":false,"Title":"Custom fields","AuthorName":"Janis Elsts","file":"containers\/custom_field.php"},"agency":{"Name":"Departments","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"agency","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"document":{"Name":"Documents","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"document","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"event":{"Name":"Events","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"event","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"issue":{"Name":"Issues","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"issue","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"job_listing":{"Name":"Jobs","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"job_listing","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"location":{"Name":"Locations","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"location","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"proud_location":{"Name":"Locations","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"proud_location","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"payment":{"Name":"Payments","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"payment","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true},"event-recurring":{"Name":"Recurring Events","ModuleCategory":"container","ModuleContext":"all","ModuleClassName":"blcAnyPostContainerManager","ModuleID":"event-recurring","file":"","ModuleLazyInit":false,"ModulePriority":0,"ModuleHidden":false,"ModuleAlwaysActive":false,"ModuleRequiresPro":false,"TextDomain":"broken-link-checker","virtual":true}},"module_deactivated_when":{"custom_field":1475260176,"comment":1475260364},"target_resource_usage":0.25}' --allow-root

# Fix govenment to government
wp search-replace 'govenment' 'government' --allow-root

# Update Google API key for Vote App https://github.com/proudcity/wp-proudcity/issues/550
wp option update google_api_key AIzaSyCwfrA-_2rE-IiNf1z74xe1YeLolSeapnU --allow-root
wp option delete google_places_key --allow-root