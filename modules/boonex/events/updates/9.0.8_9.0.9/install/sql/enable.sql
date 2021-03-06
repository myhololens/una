-- PAGES
UPDATE `sys_pages_blocks` SET `active`='0' WHERE `object`='bx_events_view_profile' AND `title`='_bx_events_page_block_title_entry_social_sharing' AND `active`='1';

DELETE FROM `sys_pages_blocks` WHERE `object`='bx_events_view_profile' AND `title`='_bx_events_page_block_title_entry_all_actions';
INSERT INTO `sys_pages_blocks`(`object`, `cell_id`, `module`, `title_system`, `title`, `designbox_id`, `hidden_on`, `visible_for_levels`, `type`, `content`, `deletable`, `copyable`, `active`, `order`) VALUES
('bx_events_view_profile', 1, 'bx_events', '', '_bx_events_page_block_title_entry_all_actions', 13, '', 2147483647, 'service', 'a:2:{s:6:"module";s:9:"bx_events";s:6:"method";s:18:"entity_all_actions";}', 0, 0, 0, 0);


-- MENUS
UPDATE `sys_menu_items` SET `icon`='sign-in-alt' WHERE `set_name`='bx_events_view_actions' AND `name`='profile-fan-add' AND `icon`='user-plus';

UPDATE `sys_menu_items` SET `icon`='sign-out-alt' WHERE `set_name`='bx_events_view_actions_more' AND `name`='profile-fan-remove' AND `icon`='user-times';
UPDATE `sys_menu_items` SET `icon`='edit' WHERE `set_name`='bx_events_view_actions_more' AND `name`='edit-event-cover' AND `icon`='pencil-alt';
UPDATE `sys_menu_items` SET `icon`='user-friends' WHERE `set_name`='bx_events_view_actions_more' AND `name`='invite-to-event' AND `icon`='user-plus';

DELETE FROM `sys_objects_menu` WHERE `object`='bx_events_view_actions_all';
INSERT INTO `sys_objects_menu`(`object`, `title`, `set_name`, `module`, `template_id`, `deletable`, `active`, `override_class_name`, `override_class_file`) VALUES 
('bx_events_view_actions_all', '_sys_menu_title_view_actions', 'bx_events_view_actions_all', 'bx_events', 15, 0, 1, 'BxEventsMenuViewActionsAll', 'modules/boonex/events/classes/BxEventsMenuViewActionsAll.php');

DELETE FROM `sys_menu_sets` WHERE `set_name`='bx_events_view_actions_all';
INSERT INTO `sys_menu_sets`(`set_name`, `module`, `title`, `deletable`) VALUES 
('bx_events_view_actions_all', 'bx_events', '_sys_menu_set_title_view_actions', 0);

DELETE FROM `sys_menu_items` WHERE `set_name`='bx_events_view_actions_all';
INSERT INTO `sys_menu_items`(`set_name`, `module`, `name`, `title_system`, `title`, `link`, `onclick`, `target`, `icon`, `addon`, `submenu_object`, `submenu_popup`, `visible_for_levels`, `active`, `copyable`, `order`) VALUES 
('bx_events_view_actions_all', 'bx_events', 'profile-fan-add', '_bx_events_menu_item_title_system_become_fan', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 10),
('bx_events_view_actions_all', 'bx_events', 'profile-fan-remove', '_bx_events_menu_item_title_system_leave_group', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 20),
('bx_events_view_actions_all', 'bx_events', 'profile-subscribe-add', '_bx_events_menu_item_title_system_subscribe', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 30),
('bx_events_view_actions_all', 'bx_events', 'profile-subscribe-remove', '_bx_events_menu_item_title_system_unsubscribe', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 40),
('bx_events_view_actions_all', 'bx_events', 'comment', '_sys_menu_item_title_system_va_comment', '', '', '', '', '', '', '', 0, 2147483647, 0, 0, 200),
('bx_events_view_actions_all', 'bx_events', 'view', '_sys_menu_item_title_system_va_view', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 210),
('bx_events_view_actions_all', 'bx_events', 'vote', '_sys_menu_item_title_system_va_vote', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 220),
('bx_events_view_actions_all', 'bx_events', 'score', '_sys_menu_item_title_system_va_score', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 230),
('bx_events_view_actions_all', 'bx_events', 'favorite', '_sys_menu_item_title_system_va_favorite', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 240),
('bx_events_view_actions_all', 'bx_events', 'feature', '_sys_menu_item_title_system_va_feature', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 250),
('bx_events_view_actions_all', 'bx_events', 'repost', '_sys_menu_item_title_system_va_repost', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 260),
('bx_events_view_actions_all', 'bx_events', 'report', '_sys_menu_item_title_system_va_report', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 270),
('bx_events_view_actions_all', 'bx_events', 'social-sharing-facebook', '_sys_menu_item_title_system_social_sharing_facebook', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 300),
('bx_events_view_actions_all', 'bx_events', 'social-sharing-googleplus', '_sys_menu_item_title_system_social_sharing_googleplus', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 310),
('bx_events_view_actions_all', 'bx_events', 'social-sharing-twitter', '_sys_menu_item_title_system_social_sharing_twitter', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 320),
('bx_events_view_actions_all', 'bx_events', 'social-sharing-pinterest', '_sys_menu_item_title_system_social_sharing_pinterest', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 330),
('bx_events_view_actions_all', 'bx_events', 'edit-event-cover', '_bx_events_menu_item_title_system_edit_cover', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 400),
('bx_events_view_actions_all', 'bx_events', 'edit-event-profile', '_bx_events_menu_item_title_system_edit_profile', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 410),
('bx_events_view_actions_all', 'bx_events', 'invite-to-event', '_bx_events_menu_item_title_system_invite', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 420),
('bx_events_view_actions_all', 'bx_events', 'delete-event-profile', '_bx_events_menu_item_title_system_delete_profile', '', '', '', '', '', '', '', 0, 2147483647, 1, 0, 430),
('bx_events_view_actions_all', 'bx_events', 'more-auto', '_sys_menu_item_title_system_va_more_auto', '_sys_menu_item_title_va_more_auto', 'javascript:void(0)', '', '', 'ellipsis-v', '', '', 0, 2147483647, 1, 0, 9999);
