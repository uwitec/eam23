DROP SEQUENCE SEQ_P_T_DEPT;


CREATE SEQUENCE SEQ_P_T_DEPT
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_EXCEPTION_LOG;


CREATE SEQUENCE SEQ_P_T_EXCEPTION_LOG
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_FUNCTION_GROUP;


CREATE SEQUENCE SEQ_P_T_FUNCTION_GROUP
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_FUNCTION_RES;


CREATE SEQUENCE SEQ_P_T_FUNCTION_RES
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_LOGON_INFO;


CREATE SEQUENCE SEQ_P_T_LOGON_INFO
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_REFERENCE;


CREATE SEQUENCE SEQ_P_T_REFERENCE
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_ROLE;


CREATE SEQUENCE SEQ_P_T_ROLE
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_ROLE_L_FUNC_GROUP;


CREATE SEQUENCE SEQ_P_T_ROLE_L_FUNC_GROUP
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_USER;


CREATE SEQUENCE SEQ_P_T_USER
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_USER_L_DEPT;


CREATE SEQUENCE SEQ_P_T_USER_L_DEPT
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP SEQUENCE SEQ_P_T_USER_L_ROLE;


CREATE SEQUENCE SEQ_P_T_USER_L_ROLE
	INCREMENT BY 1
	START WITH 1
	MAXVALUE 999999999999999999
	MINVALUE 1
	NOCYCLE
	CACHE 10
	ORDER;


DROP INDEX PK1_P_T_REFERENCE;


DROP TABLE P_T_REFERENCE CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_USER_L_DEPT;


DROP INDEX XAK1_P_T_USER_L_DEPT;


DROP TABLE P_T_USER_L_DEPT CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_DEPT;


DROP TABLE P_T_DEPT CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_EXCEPTION_LOG;


DROP TABLE P_T_EXCEPTION_LOG CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_ROLE_L_FUNC_GROUP;


DROP INDEX XAK1_P_T_ROLE_L_FUNC_GROUP;


DROP TABLE P_T_ROLE_L_FUNC_GROUP CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_FUNCTION_GROUP;


DROP TABLE P_T_FUNCTION_GROUP CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_FUNCTION_RES;


DROP TABLE P_T_FUNCTION_RES CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_USER_L_ROLE;


DROP INDEX XAK1_P_T_USER_L_ROLE;


DROP TABLE P_T_USER_L_ROLE CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_ROLE;


DROP TABLE P_T_ROLE CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_LOGON_INFO;


DROP TABLE P_T_LOGON_INFO CASCADE CONSTRAINTS;


DROP INDEX PK1_P_T_USER;


DROP TABLE P_T_USER CASCADE CONSTRAINTS;


CREATE TABLE P_T_DEPT
(
	TID  NUMBER(22)  NOT NULL ,
	PAR_ID  NUMBER(22)  NULL ,
	DEPT_CODE  VARCHAR2(40)  NULL ,
	DEPT_NAME  VARCHAR2(200)  NULL ,
	DEPT_DESC  VARCHAR2(2000)  NULL ,
	DEPT_TYPE_CD  VARCHAR2(20)  NULL ,
	DEL_FLAG_CD  VARCHAR2(20)  NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP(6)  NOT NULL 
);


COMMENT ON COLUMN P_T_DEPT.TID IS '主键ID';


COMMENT ON COLUMN P_T_DEPT.PAR_ID IS '父节点编号';


COMMENT ON COLUMN P_T_DEPT.DEPT_CODE IS '部门/机构编号';


COMMENT ON COLUMN P_T_DEPT.DEPT_NAME IS '部门/机构名称';


COMMENT ON COLUMN P_T_DEPT.DEPT_DESC IS '部门/机构描述';


COMMENT ON COLUMN P_T_DEPT.DEPT_TYPE_CD IS '部门/机构类别';


COMMENT ON COLUMN P_T_DEPT.DEL_FLAG_CD IS '是否删除';


COMMENT ON COLUMN P_T_DEPT.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_DEPT.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_DEPT ON P_T_DEPT
(
	TID  ASC
);


ALTER TABLE P_T_DEPT
	ADD CONSTRAINT  PK_DEPT PRIMARY KEY (TID);


CREATE TABLE P_T_EXCEPTION_LOG
(
	TID  NUMBER(22)  NOT NULL ,
	EXCEPTION_CLASS  VARCHAR2(200)  NULL ,
	EXCEPTION_MSG  VARCHAR2(2000)  NULL ,
	MODULE_NAME  VARCHAR2(40)  NULL ,
	ACTION_NAME  VARCHAR2(40)  NULL ,
	METHOD_NAME  VARCHAR2(40)  NULL ,
	CLASS_NAME  VARCHAR2(200)  NULL ,
	LINE_NUM  NUMBER(10)  NULL ,
	PARAMETERS  VARCHAR2(2000)  NULL ,
	MACHINE_NAME  VARCHAR2(200)  NULL ,
	MACHINE_IP  VARCHAR2(40)  NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP(6)  NOT NULL 
);


COMMENT ON COLUMN P_T_EXCEPTION_LOG.TID IS '主键ID';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.EXCEPTION_CLASS IS '异常类';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.EXCEPTION_MSG IS '异常信息';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.MODULE_NAME IS 'MODULE名称';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.ACTION_NAME IS 'ACTION名称';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.METHOD_NAME IS 'METHOD名称';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.CLASS_NAME IS 'CLASS名称？？';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.LINE_NUM IS '行号';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.PARAMETERS IS '参数';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.MACHINE_NAME IS '设备名称';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.MACHINE_IP IS '设备IP地址';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_EXCEPTION_LOG.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_EXCEPTION_LOG ON P_T_EXCEPTION_LOG
(
	TID  ASC
);


ALTER TABLE P_T_EXCEPTION_LOG
	ADD CONSTRAINT  PK_EXCEPTION_LOG PRIMARY KEY (TID);


CREATE TABLE P_T_FUNCTION_GROUP
(
	TID  NUMBER(22)  NOT NULL ,
	PAR_ID  NUMBER(22)  NULL ,
	FUNCTION_ID  NUMBER(22)  NOT NULL ,
	FUNC_GROUP_TYPE_CD  VARCHAR2(20)  NULL ,
	FUNC_GROUP_NAME  VARCHAR2(40)  NULL ,
	SORT_ORDER  NUMBER(10)  NULL ,
	IS_LEAF  NUMBER(2)  NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP(6)  NOT NULL 
);


COMMENT ON COLUMN P_T_FUNCTION_GROUP.TID IS '主键ID';


COMMENT ON COLUMN P_T_FUNCTION_GROUP.PAR_ID IS '父节点编号';


COMMENT ON COLUMN P_T_FUNCTION_GROUP.FUNCTION_ID IS '功能资源编号';


COMMENT ON COLUMN P_T_FUNCTION_GROUP.FUNC_GROUP_TYPE_CD IS '功能组类别';


COMMENT ON COLUMN P_T_FUNCTION_GROUP.FUNC_GROUP_NAME IS '功能组名称';


COMMENT ON COLUMN P_T_FUNCTION_GROUP.SORT_ORDER IS '顺序号';


COMMENT ON COLUMN P_T_FUNCTION_GROUP.IS_LEAF IS '是否为叶子节点';


COMMENT ON COLUMN P_T_FUNCTION_GROUP.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_FUNCTION_GROUP.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_FUNCTION_GROUP ON P_T_FUNCTION_GROUP
(
	TID  ASC
);


ALTER TABLE P_T_FUNCTION_GROUP
	ADD CONSTRAINT  PK_FUNCTION_GROUP PRIMARY KEY (TID);


CREATE TABLE P_T_FUNCTION_RES
(
	TID  NUMBER(22)  NOT NULL ,
	FUNCTION_NAME  VARCHAR2(40)  NULL ,
	MODULE_NAME  VARCHAR2(40)  NULL ,
	ACTION_NAME  VARCHAR2(40)  NULL ,
	METHOD_NAME  VARCHAR2(40)  NULL ,
	CLASS_NAME  VARCHAR2(40)  NULL ,
	IS_LOGIN_NEEDED  NUMBER(2)  NULL ,
	IS_TOKEN_NEEDED  NUMBER(2)  NULL ,
	IS_CHECK_MID  NUMBER(2)  NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP(6)  NOT NULL 
);


COMMENT ON COLUMN P_T_FUNCTION_RES.TID IS '主键ID';


COMMENT ON COLUMN P_T_FUNCTION_RES.FUNCTION_NAME IS 'FUNCTION名称';


COMMENT ON COLUMN P_T_FUNCTION_RES.MODULE_NAME IS 'MODULE名称';


COMMENT ON COLUMN P_T_FUNCTION_RES.ACTION_NAME IS 'ACTION名称';


COMMENT ON COLUMN P_T_FUNCTION_RES.METHOD_NAME IS 'METHOD名称';


COMMENT ON COLUMN P_T_FUNCTION_RES.CLASS_NAME IS 'CLASS名称';


COMMENT ON COLUMN P_T_FUNCTION_RES.IS_LOGIN_NEEDED IS '是否需要登录';


COMMENT ON COLUMN P_T_FUNCTION_RES.IS_TOKEN_NEEDED IS '是否需要令牌';


COMMENT ON COLUMN P_T_FUNCTION_RES.IS_CHECK_MID IS '是否检查MID';


COMMENT ON COLUMN P_T_FUNCTION_RES.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_FUNCTION_RES.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_FUNCTION_RES ON P_T_FUNCTION_RES
(
	TID  ASC
);


ALTER TABLE P_T_FUNCTION_RES
	ADD CONSTRAINT  PK_FUNCTION_RES PRIMARY KEY (TID);


CREATE TABLE P_T_LOGON_INFO
(
	TID  NUMBER(22)  NOT NULL ,
	USER_ID  NUMBER(22)  NULL ,
	LOGIN_TYPE_CD  VARCHAR2(20)  NULL ,
	LOGIN_TIME  TIMESTAMP  NULL ,
	LOGOUT_TYPE_CD  VARCHAR2(20)  NULL ,
	LOGOUT_TIME  TIMESTAMP  NULL ,
	MACHINE_NAME  VARCHAR2(40)  NULL ,
	MACHINE_IP  VARCHAR2(40)  NULL 
);


COMMENT ON COLUMN P_T_LOGON_INFO.TID IS '主键ID';


COMMENT ON COLUMN P_T_LOGON_INFO.USER_ID IS '用户编号';


COMMENT ON COLUMN P_T_LOGON_INFO.LOGIN_TYPE_CD IS '登录类别';


COMMENT ON COLUMN P_T_LOGON_INFO.LOGIN_TIME IS '登录时间';


COMMENT ON COLUMN P_T_LOGON_INFO.LOGOUT_TYPE_CD IS '退出类别';


COMMENT ON COLUMN P_T_LOGON_INFO.LOGOUT_TIME IS '退出时间';


COMMENT ON COLUMN P_T_LOGON_INFO.MACHINE_NAME IS '设备名称';


COMMENT ON COLUMN P_T_LOGON_INFO.MACHINE_IP IS '设备IP地址';


CREATE  UNIQUE INDEX PK1_P_T_LOGON_INFO ON P_T_LOGON_INFO
(
	TID  ASC
);


ALTER TABLE P_T_LOGON_INFO
	ADD CONSTRAINT  PK1_P_T_LOGON_INFO PRIMARY KEY (TID);


CREATE TABLE P_T_REFERENCE
(
	TID  NUMBER(22)  NOT NULL ,
	REF_CODE  VARCHAR2(20)  NOT NULL ,
	PAR_REF_CODE  VARCHAR2(20)  NULL ,
	REF_NAME  VARCHAR2(40)  NULL ,
	SORT_ORDER  NUMBER(10)  NULL ,
	STATUS_CD  VARCHAR2(20)  NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP  NOT NULL 
);


COMMENT ON COLUMN P_T_REFERENCE.TID IS '主键ID';


COMMENT ON COLUMN P_T_REFERENCE.REF_CODE IS '字典编码';


COMMENT ON COLUMN P_T_REFERENCE.PAR_REF_CODE IS '父节点编号';


COMMENT ON COLUMN P_T_REFERENCE.REF_NAME IS '字典名称';


COMMENT ON COLUMN P_T_REFERENCE.SORT_ORDER IS '顺序号';


COMMENT ON COLUMN P_T_REFERENCE.STATUS_CD IS '字典状态';


COMMENT ON COLUMN P_T_REFERENCE.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_REFERENCE.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_REFERENCE ON P_T_REFERENCE
(
	TID  ASC,
	REF_CODE  ASC
);


ALTER TABLE P_T_REFERENCE
	ADD CONSTRAINT  PK1_P_T_REFERENCE PRIMARY KEY (TID,REF_CODE);


CREATE TABLE P_T_ROLE
(
	TID  NUMBER(22)  NOT NULL ,
	ROLE_NAME  VARCHAR2(40)  NULL ,
	ROLE_DESC  VARCHAR2(500)  NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP(6)  NOT NULL 
);


COMMENT ON COLUMN P_T_ROLE.TID IS '主键ID';


COMMENT ON COLUMN P_T_ROLE.ROLE_NAME IS '角色名称';


COMMENT ON COLUMN P_T_ROLE.ROLE_DESC IS '角色描述';


COMMENT ON COLUMN P_T_ROLE.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_ROLE.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_ROLE ON P_T_ROLE
(
	TID  ASC
);


ALTER TABLE P_T_ROLE
	ADD CONSTRAINT  PK_ROLE PRIMARY KEY (TID);


CREATE TABLE P_T_ROLE_L_FUNC_GROUP
(
	TID  NUMBER(22)  NOT NULL ,
	ROLE_ID  NUMBER(22)  NOT NULL ,
	FUNC_GROUP_ID  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP  NOT NULL 
);


COMMENT ON COLUMN P_T_ROLE_L_FUNC_GROUP.TID IS '主键ID';


COMMENT ON COLUMN P_T_ROLE_L_FUNC_GROUP.ROLE_ID IS '角色编号';


COMMENT ON COLUMN P_T_ROLE_L_FUNC_GROUP.FUNC_GROUP_ID IS '功能组编号';


COMMENT ON COLUMN P_T_ROLE_L_FUNC_GROUP.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_ROLE_L_FUNC_GROUP.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_ROLE_L_FUNC_GROUP ON P_T_ROLE_L_FUNC_GROUP
(
	TID  ASC
);


ALTER TABLE P_T_ROLE_L_FUNC_GROUP
	ADD CONSTRAINT  PK_ROLE_L_ROLEFUN PRIMARY KEY (TID);


CREATE  UNIQUE INDEX XAK1_P_T_ROLE_L_FUNC_GROUP ON P_T_ROLE_L_FUNC_GROUP
(
	ROLE_ID  ASC,
	FUNC_GROUP_ID  ASC
);


CREATE TABLE P_T_USER
(
	TID  NUMBER(22)  NOT NULL ,
	LOGIN_ID  VARCHAR2(40)  NULL ,
	USERNAME  VARCHAR2(40)  NULL ,
	PASSWORD  VARCHAR2(40)  NULL ,
	GENDER_CD  VARCHAR2(20)  NULL ,
	BIRTH_DATE  DATE  NULL ,
	ID_NUMBER  VARCHAR2(40)  NULL ,
	EMAIL  VARCHAR2(40)  NULL ,
	CELLPHONE  VARCHAR2(40)  NULL ,
	HOME_PHONE  VARCHAR2(40)  NULL ,
	BUSINESS_PHONE  VARCHAR2(40)  NULL ,
	ADDRESS  VARCHAR2(200)  NULL ,
	POSTCODE  VARCHAR2(40)  NULL ,
	DESCRIPTION  VARCHAR2(500)  NULL ,
	STATUS_CD  VARCHAR2(20)  NULL ,
	DEL_FLAG_CD  VARCHAR2(20)  NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP(6)  NOT NULL 
);


COMMENT ON COLUMN P_T_USER.TID IS '主键ID';


COMMENT ON COLUMN P_T_USER.LOGIN_ID IS '登录帐号';


COMMENT ON COLUMN P_T_USER.USERNAME IS '用户名称';


COMMENT ON COLUMN P_T_USER.PASSWORD IS '登录密码';


COMMENT ON COLUMN P_T_USER.GENDER_CD IS '性别';


COMMENT ON COLUMN P_T_USER.BIRTH_DATE IS '出生日期';


COMMENT ON COLUMN P_T_USER.ID_NUMBER IS '证件号码';


COMMENT ON COLUMN P_T_USER.EMAIL IS '电子邮件';


COMMENT ON COLUMN P_T_USER.CELLPHONE IS '移动电话';


COMMENT ON COLUMN P_T_USER.HOME_PHONE IS '家庭电话';


COMMENT ON COLUMN P_T_USER.BUSINESS_PHONE IS '办公电话';


COMMENT ON COLUMN P_T_USER.ADDRESS IS '地址';


COMMENT ON COLUMN P_T_USER.POSTCODE IS '邮编';


COMMENT ON COLUMN P_T_USER.DESCRIPTION IS '描述信息';


COMMENT ON COLUMN P_T_USER.STATUS_CD IS '状态';


COMMENT ON COLUMN P_T_USER.DEL_FLAG_CD IS '是否删除';


COMMENT ON COLUMN P_T_USER.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_USER.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_USER ON P_T_USER
(
	TID  ASC
);


ALTER TABLE P_T_USER
	ADD CONSTRAINT  PK_USER PRIMARY KEY (TID);


CREATE TABLE P_T_USER_L_DEPT
(
	TID  NUMBER(22)  NOT NULL ,
	USER_ID  NUMBER(22)  NOT NULL ,
	DEPT_ID  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP(6)  NOT NULL 
);


COMMENT ON COLUMN P_T_USER_L_DEPT.TID IS '主键ID';


COMMENT ON COLUMN P_T_USER_L_DEPT.USER_ID IS '用户编号';


COMMENT ON COLUMN P_T_USER_L_DEPT.DEPT_ID IS '部门编号';


COMMENT ON COLUMN P_T_USER_L_DEPT.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_USER_L_DEPT.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_USER_L_DEPT ON P_T_USER_L_DEPT
(
	TID  ASC
);


ALTER TABLE P_T_USER_L_DEPT
	ADD CONSTRAINT  PK_DEP_L_USER PRIMARY KEY (TID);


CREATE  UNIQUE INDEX XAK1_P_T_USER_L_DEPT ON P_T_USER_L_DEPT
(
	USER_ID  ASC,
	DEPT_ID  ASC
);


CREATE TABLE P_T_USER_L_ROLE
(
	TID  NUMBER(22)  NOT NULL ,
	USER_ID  NUMBER(22)  NOT NULL ,
	ROLE_ID  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_USER  NUMBER(22)  NOT NULL ,
	SYS_UPDATE_TIME  TIMESTAMP(6)  NOT NULL 
);


COMMENT ON COLUMN P_T_USER_L_ROLE.TID IS '主键ID';


COMMENT ON COLUMN P_T_USER_L_ROLE.USER_ID IS '用户编号';


COMMENT ON COLUMN P_T_USER_L_ROLE.ROLE_ID IS '角色编号';


COMMENT ON COLUMN P_T_USER_L_ROLE.SYS_UPDATE_USER IS '更新用户编号';


COMMENT ON COLUMN P_T_USER_L_ROLE.SYS_UPDATE_TIME IS '更新时间';


CREATE  UNIQUE INDEX PK1_P_T_USER_L_ROLE ON P_T_USER_L_ROLE
(
	TID  ASC
);


ALTER TABLE P_T_USER_L_ROLE
	ADD CONSTRAINT  PK_USER_L_ROLE PRIMARY KEY (TID);


CREATE  UNIQUE INDEX XAK1_P_T_USER_L_ROLE ON P_T_USER_L_ROLE
(
	USER_ID  ASC,
	ROLE_ID  ASC
);


