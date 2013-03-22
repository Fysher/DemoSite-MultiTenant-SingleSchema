INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE, CONTEXT_TYPE) VALUES (1111,'Create Theme Configuration','PERMISSION_CREATE_THEME', 'CREATE', 'SITE');
INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE, CONTEXT_TYPE) VALUES (1112,'Update Theme Configuration','PERMISSION_UPDATE_THEME', 'UPDATE', 'SITE');
INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE, CONTEXT_TYPE) VALUES (1113,'Delete Theme Configuration','PERMISSION_DELETE_THEME', 'DELETE', 'SITE');
INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE, CONTEXT_TYPE) VALUES (1114,'Read Theme Configuration','PERMISSION_READ_THEME', 'READ', 'SITE');
INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE, CONTEXT_TYPE) VALUES (1115,'All Theme Configuration','PERMISSION_ALL_THEME', 'ALL', 'SITE');

INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (1111, 'com.broadleafcommerce.theme.domain.ThemeConfiguration', 1111);
INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (1112, 'com.broadleafcommerce.theme.domain.ThemeConfiguration', 1112);
INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (1113, 'com.broadleafcommerce.theme.domain.ThemeConfiguration', 1113);
INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (1114, 'com.broadleafcommerce.theme.domain.ThemeConfiguration', 1114);
INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (1115, 'com.broadleafcommerce.theme.domain.ThemeConfiguration', 1115);

INSERT INTO BLC_ADMIN_ROLE_PERMISSION_XREF (ADMIN_ROLE_ID, ADMIN_PERMISSION_ID) VALUES (1,1115);

INSERT INTO BLC_ADMIN_SECTION (ADMIN_SECTION_ID, ADMIN_MODULE_ID, NAME, SECTION_KEY, URL, USE_DEFAULT_HANDLER, CEILING_ENTITY) VALUES (1110, 2, 'Theme Configuration', 'ThemeConfiguration', '/theme', FALSE, 'com.broadleafcommerce.theme.domain.ThemeConfiguration');

INSERT INTO BLC_ADMIN_SEC_PERM_XREF (ADMIN_SECTION_ID, ADMIN_PERMISSION_ID) VALUES (1110,1111);
INSERT INTO BLC_ADMIN_SEC_PERM_XREF (ADMIN_SECTION_ID, ADMIN_PERMISSION_ID) VALUES (1110,1112);
INSERT INTO BLC_ADMIN_SEC_PERM_XREF (ADMIN_SECTION_ID, ADMIN_PERMISSION_ID) VALUES (1110,1113);
INSERT INTO BLC_ADMIN_SEC_PERM_XREF (ADMIN_SECTION_ID, ADMIN_PERMISSION_ID) VALUES (1110,1114);
INSERT INTO BLC_ADMIN_SEC_PERM_XREF (ADMIN_SECTION_ID, ADMIN_PERMISSION_ID) VALUES (1110,1115);