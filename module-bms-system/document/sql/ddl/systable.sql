drop table if exists ts_dep;

drop table if exists ts_dict;

drop table if exists ts_dict_type;

drop table if exists ts_file;

drop table if exists ts_file_use;

drop table if exists ts_login_log;

drop table if exists ts_menu;

drop table if exists ts_menu_permit;

drop table if exists ts_msg_templet;

drop table if exists ts_my_shortcut;

drop table if exists ts_notification;

drop table if exists ts_notification_receive;

drop table if exists ts_organ;

drop table if exists ts_permit;

drop table if exists ts_role;

drop table if exists ts_role_permit;

drop table if exists ts_tenant;

drop table if exists ts_user;

drop table if exists ts_user_role;

/*==============================================================*/
/* Table: ts_dep                                                */
/*==============================================================*/
create table ts_dep
(
   id                   char(32) not null comment 'ID',
   dep_name             varchar(100) not null comment '��������',
   dep_code             varchar(20) not null comment '���Ŵ���',
   dep_addr             varchar(200) comment '���ŵ�ַ',
   pid                  char(32) comment '�ϼ�����',
   dep_status           char(1) not null default '1' comment '����״̬
            0:��ɢ  1: ����   ',
   lead_user_id         char(32) comment '������',
   organ_id             char(32) not null comment '����',
   remark               varchar(200) comment '��ע',
   delete_flag          char(1) not null comment 'ɾ����־',
   create_user_id       char(32) not null comment '������',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   tenant_id            char(32) not null comment '�⻧',
   primary key (id),
   UNIQUE key AK_Identifier_3 (dep_code, organ_id),
   UNIQUE key AK_Identifier_2 (dep_name, organ_id)
);

alter table ts_dep comment '����';

/*==============================================================*/
/* Table: ts_dict                                               */
/*==============================================================*/
create table ts_dict
(
   id                   char(32) not null comment 'ID',
   dict_type_id         char(32) not null comment '�ֵ�����',
   dict_val             varchar(2) not null comment '�ֵ�ֵ',
   dict_name            varchar(50) not null comment '�ֵ���',
   dict_i18n            varchar(100) comment '���ƹ��ʻ�',
   dict_reg             varchar(100) comment '�ֵ���������',
   orderby              int not null default 0 comment '˳��',
   organ_id             char(32) not null comment '����',
   create_user_id       char(32) not null comment '������',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   delete_flag          char(1) not null comment 'ɾ����־',
   tenant_id            char(32) not null comment '�⻧',
   primary key (id),
   UNIQUE key AK_Identifier_2 (dict_type_id, dict_val, tenant_id)
);

alter table ts_dict comment '�ֵ���Ϣ';

/*==============================================================*/
/* Table: ts_dict_type                                          */
/*==============================================================*/
create table ts_dict_type
(
   id                   char(32) not null comment 'ID',
   pid                  char(32) comment '�ϼ�����',
   dict_type_code       varchar(60) not null comment '���ʹ���',
   dict_type_name       varchar(60) not null comment '��������',
   dict_type_showable   char(1) not null comment '�����Ƿ���ʾ
            yes_no',
   dict_addable         char(1) not null comment '�ֵ��Ƿ��������
            yes_no',
   dict_update          char(1) not null comment '�ֵ��Ƿ�����޸�
            yes_no',
   dict_delete          char(1) not null comment '�ֵ��Ƿ����ɾ��
            yes_no',
   orderby              int not null default 0 comment '˳��',
   primary key (id),
   UNIQUE key AK_Identifier_3 (dict_type_name),
   UNIQUE key AK_Identifier_2 (dict_type_code)
);

alter table ts_dict_type comment '�ֵ�����';

/*==============================================================*/
/* Table: ts_file                                               */
/*==============================================================*/
create table ts_file
(
   id                   char(32) not null comment 'ID',
   access_url_prefix    varchar(50) comment '����·��ǰ׺',
   access_url           varchar(200) not null comment '����·��
            ������ǰ׺',
   file_host            varchar(27) comment '�ļ���������',
   file_base_path       varchar(100),
   file_path            varchar(200) comment '�ļ�·��',
   file_name            varchar(100) not null comment '�ļ���',
   file_size            bigint not null comment '�ļ���С',
   file_suffix          varchar(30) comment '�ļ���׺',
   file_engine          char(1) not null comment '�ļ�����
            �ļ�ϵͳ ��ţ  ������  ��Ѷ FastNFS MongoDB',
   md5                  varchar(128) comment 'MD5��',
   content_type         varchar(256) comment '�ļ�����',
   use_frequency        int comment 'ʹ�ô���',
   primary key (id)
);

alter table ts_file comment '�ļ�';

/*==============================================================*/
/* Table: ts_file_use                                           */
/*==============================================================*/
create table ts_file_use
(
   id                   char(32) not null comment 'ID',
   file_id              char(32) not null comment '�ļ�ID',
   show_name            varchar(256) not null comment '��ʾ����',
   business_type        varchar(256) comment 'ҵ������',
   business_id          char(32) comment 'ҵ��ID',
   business_file_type   varchar(100) not null comment 'ҵ���ļ�����',
   business_temp_id     char(32) not null comment 'ҵ����ʱID',
   file_order           int not null comment '˳��',
   organ_id             char(32) not null comment '����',
   remark               varchar(200) comment '��ע',
   delete_flag          char(1) not null comment 'ɾ����־',
   create_user_id       char(32) not null comment '������',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   tenant_id            char(32) not null comment '�⻧',
   primary key (id)
);

alter table ts_file_use comment '�ļ�ʹ��';

/*==============================================================*/
/* Table: ts_login_log                                          */
/*==============================================================*/
create table ts_login_log
(
   id                   char(32) not null comment 'ID',
   operation_type       varchar(2) not null comment '��������
            1: ��½   2:�˳�  3:ǿ���˳�  4:�߳�',
   operation_remark     varchar(100) comment '����˵��',
   dep_id               char(32) comment '����',
   organ_id             char(32) not null comment '����',
   operation_user_id    char(32) not null comment '������',
   operation_ip         varchar(30) comment '������IP',
   operation_user_name  varchar(50) not null comment '����������',
   operation_time       timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   tenant_id            char(32) not null comment '�⻧',
   primary key (id)
);

alter table ts_login_log comment '��½��־';

/*==============================================================*/
/* Table: ts_menu                                               */
/*==============================================================*/
create table ts_menu
(
   id                   char(32) not null comment 'ID',
   menu_name            varchar(30) not null comment '�˵�����',
   menu_code            varchar(50) not null comment '�˵����',
   pid                  char(32) comment '�ϼ��˵�',
   menu_sort            int not null comment '�˵�˳��',
   menu_url             varchar(200) comment '�˵���ַ',
   menu_msg             varchar(50) comment '�˵���ʾ��Ϣ',
   menu_icon            varchar(20) comment '�˵�ͼ��',
   menu_redirect        varchar(50) comment '��תĿ��',
   shortcut             char(1) not null comment '��ݲ˵�
            yes_no',
   level                int not null comment '�㼶',
   leaf                 char(1) not null comment '�Ƿ�Ҷ�ڵ�
            yes_no',
   hidden               char(1) not null default '0' comment ' �Ƿ�����',
   target               varchar(20) comment '����Ŀ��',
   remark               varchar(200) comment '��ע',
   delete_flag          char(1) not null comment 'ɾ����־',
   create_user_id       char(32) not null comment '������ID',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���ID',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   primary key (id),
   UNIQUE key AK_Identifier_2 (menu_code)
);

alter table ts_menu comment '�˵�

path                       menu_url
co';

/*==============================================================*/
/* Table: ts_menu_permit                                        */
/*==============================================================*/
create table ts_menu_permit
(
   id                   char(32) not null comment 'ID',
   menu_id              char(32) not null comment '�˵�',
   permit_id            char(32) not null comment '���',
   primary key (id),
   UNIQUE key AK_Identifier_2 (menu_id, permit_id)
);

alter table ts_menu_permit comment '�˵���ɹ���';

/*==============================================================*/
/* Table: ts_msg_templet                                        */
/*==============================================================*/
create table ts_msg_templet
(
   id                   char(32) not null comment 'ID',
   msg_templet_name     varchar(50) not null comment '��Ϣģ������',
   msg_templet_type     char(1) not null comment '��Ϣģ������
            ����: �ʼ� ���� ΢��',
   msg_title            varchar(200) comment '��Ϣ����',
   msg_content          varchar(5000) not null comment '��Ϣ����',
   msg_language         char(1) comment '����
            ���� 1����  2Ӣ�� ',
   templet_effective    char(1) not null comment 'ģ���Ƿ���Ч
            yes_no',
   dep_id               char(32) comment '����',
   organ_id             char(32) not null comment '����',
   create_user_id       char(32) not null comment '������',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   tenant_id            char(32) not null comment '�⻧',
   primary key (id),
   UNIQUE key AK_Identifier_2 (msg_templet_name, tenant_id)
);

alter table ts_msg_templet comment '��Ϣģ��';

/*==============================================================*/
/* Table: ts_my_shortcut                                        */
/*==============================================================*/
create table ts_my_shortcut
(
   id                   char(32) not null comment 'ID',
   menu_id              char(32) not null comment '�˵�',
   user_id              char(32) not null comment '�û�',
   orderby              int not null comment '˳��',
   primary key (id),
   UNIQUE key AK_Identifier_2 (menu_id, user_id)
);

alter table ts_my_shortcut comment '�ö���ݲ˵�';

/*==============================================================*/
/* Table: ts_notification                                       */
/*==============================================================*/
create table ts_notification
(
   id                   char(32) not null comment 'ID',
   notify_module        varchar(100) comment 'ģ��',
   title                varchar(100) comment '֪ͨ����',
   content              text not null comment '֪ͨ����',
   notify_time          timestamp not null comment '֪ͨʱ��',
   notify_files         char(32) comment '֪ͨ�ļ�',
   create_user_id       char(32) not null comment '������',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   tenant_id            char(32) not null comment '�⻧',
   primary key (id)
);

alter table ts_notification comment 'ϵͳ֪ͨ';

/*==============================================================*/
/* Table: ts_notification_receive                               */
/*==============================================================*/
create table ts_notification_receive
(
   id                   char(32) not null comment 'ID',
   notify_id            char(32) not null comment '֪ͨ',
   receive_user_id      char(32) not null comment '������',
   is_read              char(1) not null comment '�Ѷ�
            yes_no',
   read_time            timestamp comment '��ȡʱ��',
   primary key (id)
);

alter table ts_notification_receive comment '֪ͨ������';

/*==============================================================*/
/* Table: ts_organ                                              */
/*==============================================================*/
create table ts_organ
(
   id                   char(32) not null comment 'ID',
   organ_name           varchar(100) not null comment '��������',
   organ_code           varchar(20) not null comment '��������',
   organ_type           char(1) comment '��������
            ����Ĳο�ҵ��Ҫ��',
   organ_addr           varchar(200) comment '������ַ',
   pid                  char(32) comment '�ϼ�����',
   organ_status         char(1) not null comment '����״̬
            1:���� 0:��ɢ',
   lead_user_id         char(32) comment '������',
   remark               varchar(200) comment '��ע',
   delete_flag          char(1) not null comment 'ɾ����־',
   create_user_id       char(32) not null comment '������',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   tenant_id            char(32) not null comment '�⻧',
   primary key (id),
   UNIQUE key AK_Identifier_3 (organ_code, tenant_id),
   UNIQUE key AK_Identifier_2 (organ_name, tenant_id)
);

alter table ts_organ comment '����';

/*==============================================================*/
/* Table: ts_permit                                             */
/*==============================================================*/
create table ts_permit
(
   id                   char(32) not null comment 'ID',
   permit_name          varchar(20) not null comment '�������',
   permit_code          varchar(50) not null comment '��ɱ��',
   remark               varchar(200) comment '��ע',
   delete_flag          char(1) not null comment 'ɾ����־',
   primary key (id),
   UNIQUE key AK_Identifier_2 (permit_code)
);

alter table ts_permit comment '���';

/*==============================================================*/
/* Table: ts_role                                               */
/*==============================================================*/
create table ts_role
(
   id                   char(32) not null comment 'ID',
   role_name            varchar(50) not null comment '��ɫ����',
   role_code            varchar(20) not null comment '��ɫ���',
   role_type            char(1) not null comment '��ɫ����',
   dep_id               char(32) comment '����',
   organ_id             char(32) not null comment '����',
   role_status          char(1) not null comment '��ɫ״̬
            0: ����   1:����',
   remark               varchar(200) comment '��ע',
   create_user_id       char(32) not null comment '������',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   tenant_id            char(32) not null comment '�⻧',
   primary key (id),
   UNIQUE key AK_Identifier_3 (role_code, tenant_id),
   UNIQUE key AK_Identifier_2 (role_name, tenant_id)
);

alter table ts_role comment '��ɫ';

/*==============================================================*/
/* Table: ts_role_permit                                        */
/*==============================================================*/
create table ts_role_permit
(
   id                   char(32) not null comment 'ID',
   role_id              char(32) not null comment '��ɫ',
   permit_id            char(32) not null comment '���',
   primary key (id),
   UNIQUE key AK_Identifier_2 (role_id, permit_id)
);

alter table ts_role_permit comment '��ɫ��ɹ���';

/*==============================================================*/
/* Table: ts_tenant                                             */
/*==============================================================*/
create table ts_tenant
(
   id                   char(32) not null comment 'ID',
   tenant_name          varchar(150) not null comment '��ҵ����',
   tenant_code          char(4) not null comment '��ҵ���',
   tenant_addr          varchar(200) comment '��ҵ��ַ',
   link_tel             varchar(20) comment '��ϵ�绰',
   lead_user_name       varchar(50) comment '��������',
   logo_file            char(32) comment 'LOGO',
   website              varchar(200) comment '����',
   remark               varchar(2000) comment '˵��',
   delete_flag          char(1) not null comment 'ɾ����־',
   create_user_id       char(32) not null comment '������',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   primary key (id, tenant_name, tenant_code),
   UNIQUE key AK_Identifier_3 (tenant_code),
   UNIQUE key AK_Identifier_2 (tenant_name)
);

alter table ts_tenant comment '��ҵ
Ҳ����ҵ�ĸ���';

/*==============================================================*/
/* Table: ts_user                                               */
/*==============================================================*/
create table ts_user
(
   id                   char(32) not null comment 'ID',
   user_name            varchar(50) not null comment '�û�����',
   login_name           varchar(20) not null comment '��¼��',
   login_password       varchar(128) comment '��¼����',
   salt                 varchar(64) comment '������',
   user_status          char(1) not null comment '�û�״̬',
   lead_user_id         char(32) comment '�ϼ��쵼',
   phone                varchar(20) not null comment '�绰',
   email                varchar(60) not null comment '����',
   avatar_image         char(32) comment 'ͷ��',
   open_id              varchar(64) comment '΢��ID',
   union_id             varchar(64) comment '΢��ΨһID',
   system_admin         char(1) not null comment 'ϵͳ������Ա
            yes_no',
   dep_id               char(32) comment '����',
   organ_id             char(32) not null comment '����',
   page_limit           int not null default 20 comment 'ÿҳ��¼��',
   remark               varchar(500) comment '��ע',
   delete_flag          char(1) not null comment 'ɾ����־',
   create_user_id       char(32) not null comment '������',
   create_user_name     varchar(50) not null comment '����������',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '����ʱ��',
   update_user_id       char(32) comment '�޸���',
   update_user_name     varchar(50) comment '�޸�������',
   update_time          timestamp null default null  comment '�޸�ʱ��',
   version_no           int not null comment '�汾',
   tenant_id            char(32) not null comment '�⻧',
   primary key (id),
   UNIQUE key AK_Identifier_2 (login_name),
   UNIQUE key AK_Identifier_3 (email),
   UNIQUE key AK_Identifier_4 (phone)
);

alter table ts_user comment '�û�';

/*==============================================================*/
/* Table: ts_user_role                                          */
/*==============================================================*/
create table ts_user_role
(
   id                   char(32) not null comment 'ID',
   user_id              char(32) not null comment '�û�',
   role_id              char(32) not null comment '��ɫ',
   primary key (id),
   UNIQUE key AK_Identifier_2 (user_id, role_id)
);

alter table ts_user_role comment '�û���ɫ����';
