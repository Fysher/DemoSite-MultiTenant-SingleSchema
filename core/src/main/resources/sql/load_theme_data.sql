-- The two themes provided
INSERT INTO BLC_THEME_DEFINITION (THEME_DEFINITION_ID, THEME_NAME, THEME_DESCRIPITON, THEME_PATH, IS_DEFAULT) VALUES (1, 'Default Theme', 'Default theme used if a site does not specify a theme', 'default-theme/', true);
INSERT INTO BLC_THEME_DEFINITION (THEME_DEFINITION_ID, THEME_NAME, THEME_DESCRIPITON, THEME_PATH, IS_DEFAULT) VALUES (2, 'Custom Theme 1', 'Reversed logo, custom headerColor theme', 'theme2/', false) ;

-- Two default theme configurations
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, THEME_NAME, SITE_DISC, THEME_DEFINITION_ID, ACTIVE_THEME) VALUES (1, 'Default Theme Configuration', 1, 1, true);
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, THEME_NAME, SITE_DISC, THEME_DEFINITION_ID, ACTIVE_THEME) VALUES (2, 'Custom Theme 1 Configuration', 1, 2, false);
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, THEME_NAME, SITE_DISC, THEME_DEFINITION_ID, ACTIVE_THEME) VALUES (3, 'Default Theme Configuration (Site 2)', 2, 1, true);
INSERT INTO BLC_THEME_CONFIGURATION (THEME_CONFIGURATION_ID, THEME_NAME, SITE_DISC, THEME_DEFINITION_ID, ACTIVE_THEME) VALUES (4, 'Custom Theme 1 Configuration (Site 2)', 2, 2, false);

-- Configuration options for custom theme 1
INSERT INTO BLC_FLD_GROUP(FLD_GROUP_ID, NAME, INIT_COLLAPSED_FLAG) VALUES (1110, 'Basic Color Options', FALSE);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, FLD_ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (1110, 'headerColor', 'headerColor', 'STRING', NULL, FALSE, null, null, null, '*', FALSE, NULL, FALSE, 1110, 0);
INSERT INTO BLC_FLD_DEF(FLD_DEF_ID, NAME, FRIENDLY_NAME, FLD_TYPE, SECURITY_LEVEL, HIDDEN_FLAG, VLDTN_REGEX, VLDTN_ERROR_MSSG_KEY, MAX_LENGTH, COLUMN_WIDTH, TEXT_AREA_FLAG, FLD_ENUM_ID, ALLOW_MULTIPLES, FLD_GROUP_ID, FLD_ORDER) VALUES (1111, 'bgColor', 'bgColor', 'STRING', NULL, FALSE, null, null, null, '*', FALSE, NULL, FALSE, 1110, 1);
INSERT INTO BLC_THMDEF_FLDGRP_XREF(THEME_DEFINITION_ID, FLD_GROUP_ID, GROUP_ORDER) VALUES (2, 1110, 0);

-- Default values for custom theme 1
INSERT INTO BLC_THEME_FLD (THEME_FLD_ID, FLD_KEY, LOB_VALUE, VALUE, THEME_CONFIGURATION_ID) VALUES (13, 'headerColor', NULL, 'purple', 2);
INSERT INTO BLC_THEME_FLD (THEME_FLD_ID, FLD_KEY, LOB_VALUE, VALUE, THEME_CONFIGURATION_ID) VALUES (14, 'bgColor', NULL, 'red', 2);
INSERT INTO BLC_THEME_FLD_MAP (THEME_CONFIGURATION_ID, THEME_FLD_ID, MAP_KEY) VALUES (2, 13, 'headerColor');
INSERT INTO BLC_THEME_FLD_MAP (THEME_CONFIGURATION_ID, THEME_FLD_ID, MAP_KEY) VALUES (2, 14, 'bgColor');
