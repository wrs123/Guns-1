/*
Navicat MySQL Data Transfer

Source Server         : 数据库
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : guns

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-06-03 22:36:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `simplename` varchar(45) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('24', '1', '0', '总公司', '总公司', '', null);
INSERT INTO `dept` VALUES ('25', '2', '24', '开发部', '开发部', '', null);
INSERT INTO `dept` VALUES ('26', '3', '24', '运营部', '运营部', '', null);
INSERT INTO `dept` VALUES ('27', '4', '24', '战略部', '战略部', '', null);

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict
-- ----------------------------
INSERT INTO `dict` VALUES ('16', '0', '0', '状态', null);
INSERT INTO `dict` VALUES ('17', '1', '16', '启用', null);
INSERT INTO `dict` VALUES ('18', '2', '16', '禁用', null);
INSERT INTO `dict` VALUES ('29', '0', '0', '性别', null);
INSERT INTO `dict` VALUES ('30', '1', '29', '男', null);
INSERT INTO `dict` VALUES ('31', '2', '29', '女', null);
INSERT INTO `dict` VALUES ('35', '0', '0', '账号状态', null);
INSERT INTO `dict` VALUES ('36', '1', '35', '启用', null);
INSERT INTO `dict` VALUES ('37', '2', '35', '冻结', null);
INSERT INTO `dict` VALUES ('38', '3', '35', '已删除', null);

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(65) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `succeed` varchar(255) DEFAULT NULL,
  `message` text,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('115', '登录日志', '1', '2017-06-03 22:04:53', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('116', '退出日志', '1', '2017-06-03 22:25:15', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('117', '登录日志', '1', '2017-06-03 22:25:19', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('118', '退出日志', '1', '2017-06-03 22:35:09', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('119', '登录日志', '1', '2017-06-03 22:35:13', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('120', '退出日志', '1', '2017-06-03 22:35:51', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('121', '登录日志', '1', '2017-06-03 22:35:57', '成功', null, '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `num` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int(11) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int(11) DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('105', 'system', '0', '系统管理', 'fa-user', '', '3', '1', '1', null, '1', '1');
INSERT INTO `menu` VALUES ('106', 'mgr', 'system', '用户管理', '', '/mgr', '1', '2', '1', null, '1', '0');
INSERT INTO `menu` VALUES ('107', 'mgr_add', 'mgr', '添加用户', null, '/mgr/add', '1', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('108', 'mgr_edit', 'mgr', '修改用户', null, '/mgr/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('109', 'mgr_delete', 'mgr', '删除用户', null, '/mgr/delete', '3', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('110', 'mgr_reset', 'mgr', '重置密码', null, '/mgr/reset', '4', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('111', 'mgr_freeze', 'mgr', '冻结用户', null, '/mgr/freeze', '5', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('112', 'mgr_unfreeze', 'mgr', '解除冻结用户', null, '/mgr/unfreeze', '6', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('113', 'mgr_setRole', 'mgr', '分配角色', null, '/mgr/setRole', '7', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('114', 'role', 'system', '角色管理', null, '/role', '2', '2', '1', null, '1', '0');
INSERT INTO `menu` VALUES ('115', 'role_add', 'role', '添加角色', null, '/role/add', '1', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('116', 'role_edit', 'role', '修改角色', null, '/role/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('117', 'role_remove', 'role', '删除角色', null, '/role/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('118', 'role_setAuthority', 'role', '配置权限', null, '/role/setAuthority', '4', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('119', 'menu', 'system', '菜单管理', null, '/menu', '4', '2', '1', null, '1', '0');
INSERT INTO `menu` VALUES ('120', 'menu_add', 'menu', '添加菜单', null, '/menu/add', '1', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('121', 'menu_edit', 'menu', '修改菜单', null, '/menu/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('122', 'menu_remove', 'menu', '删除菜单', null, '/menu/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `menu` VALUES ('128', 'log', 'system', '业务日志', null, '/log', '6', '2', '1', null, '1', '0');
INSERT INTO `menu` VALUES ('130', 'druid', 'system', '监控管理', null, '/druid', '7', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('131', 'dept', 'system', '部门管理', null, '/dept', '3', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('132', 'dict', 'system', '字典管理', null, '/dict', '4', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('133', 'loginLog', 'system', '登录日志', null, '/loginLog', '6', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('134', 'log_clean', 'log', '清空日志', null, '/log/delLog', '3', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('135', 'dept_add', 'dept', '添加部门', null, '/dept/add', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('136', 'dept_update', 'dept', '修改部门', null, '/dept/update', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('137', 'dept_delete', 'dept', '删除部门', null, '/dept/delete', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('138', 'dict_add', 'dict', '添加字典', null, '/dict/add', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('139', 'dict_update', 'dict', '修改字典', null, '/dict/update', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('140', 'dict_delete', 'dict', '删除字典', null, '/dict/delete', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('141', 'notice', 'system', '通知管理', null, '/notice', '9', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('142', 'notice_add', 'notice', '添加通知', null, '/notice/add', '1', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('143', 'notice_update', 'notice', '修改通知', null, '/notice/update', '2', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('144', 'notice_delete', 'notice', '删除通知', null, '/notice/delete', '3', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('145', 'hello', '0', '通知', 'fa-rocket', '/notice/hello', '1', '1', '1', null, '1', null);
INSERT INTO `menu` VALUES ('148', 'code', 'system', '代码生成', 'fa-user', '/code', '10', '2', '1', null, '1', null);
INSERT INTO `menu` VALUES ('149', 'api_mgr', '0', '接口文档', 'fa-leaf', '/swagger-ui.html', '2', '1', '1', null, '1', null);
INSERT INTO `menu` VALUES ('150', 'to_menu_edit', 'menu', '菜单编辑跳转', '', '/menu/menu_edit', '4', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('151', 'menu_list', 'menu', '菜单列表', '', '/menu/list', '5', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('152', 'to_dept_update', 'dept', '修改部门跳转', '', '/dept/dept_update', '4', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('153', 'dept_list', 'dept', '部门列表', '', '/dept/list', '5', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('154', 'dept_detail', 'dept', '部门详情', '', '/dept/detail', '6', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('155', 'to_dict_edit', 'dict', '修改菜单跳转', '', '/dict/dict_edit', '4', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('156', 'dict_list', 'dict', '字典列表', '', '/dict/list', '5', '3', '0', null, '1', null);
INSERT INTO `menu` VALUES ('157', 'dict_detail', 'dict', '字典详情', '', '/dict/detail', '6', '3', '0', null, '1', null);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('6', '世界', '10', '欢迎使用Guns管理系统', '2017-01-11 08:53:20', '1');
INSERT INTO `notice` VALUES ('8', '你好', null, '你好', '2017-05-10 19:28:57', '1');

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `logtype` varchar(255) DEFAULT NULL,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(65) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `method` text,
  `createtime` datetime DEFAULT NULL,
  `succeed` varchar(255) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('446', '业务日志', '清空业务日志', '1', 'com.stylefeng.guns.modular.system.controller.LogController', 'delLog', '2017-06-01 21:42:13', '成功', '主键id=null');
INSERT INTO `operation_log` VALUES ('447', '业务日志', '清空登录日志', '1', 'com.stylefeng.guns.modular.system.controller.LoginLogController', 'delLog', '2017-06-01 21:42:15', '成功', '主键id=null');
INSERT INTO `operation_log` VALUES ('448', '业务日志', '菜单新增', '1', 'com.stylefeng.guns.modular.system.controller.MenuController', 'add', '2017-06-03 21:59:37', '成功', '菜单名称=菜单编辑跳转');
INSERT INTO `operation_log` VALUES ('449', '业务日志', '配置权限', '1', 'com.stylefeng.guns.modular.system.controller.RoleController', 'setAuthority', '2017-06-03 21:59:52', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,角色管理,添加角色,修改角色,删除角色,配置权限,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,业务日志,清空日志,监控管理,部门管理,添加部门,修改部门,删除部门,字典管理,添加字典,修改字典,删除字典,登录日志,通知管理,添加通知,修改通知,删除通知,代码生成,通知,接口文档');
INSERT INTO `operation_log` VALUES ('450', '业务日志', '菜单新增', '1', 'com.stylefeng.guns.modular.system.controller.MenuController', 'add', '2017-06-03 22:00:32', '成功', '菜单名称=菜单列表');
INSERT INTO `operation_log` VALUES ('451', '业务日志', '配置权限', '1', 'com.stylefeng.guns.modular.system.controller.RoleController', 'setAuthority', '2017-06-03 22:00:39', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,角色管理,添加角色,修改角色,删除角色,配置权限,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,监控管理,部门管理,添加部门,修改部门,删除部门,字典管理,添加字典,修改字典,删除字典,登录日志,通知管理,添加通知,修改通知,删除通知,代码生成,通知,接口文档');
INSERT INTO `operation_log` VALUES ('452', '异常日志', '', '45', null, null, '2017-06-03 22:04:36', '失败', 'java.lang.NullPointerException\r\n	at com.stylefeng.guns.modular.system.controller.LoginController.index(LoginController.java:56)\r\n	at com.stylefeng.guns.modular.system.controller.LoginControllerTTFastClassBySpringCGLIBTTffd23625.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:31)\r\n	at sun.reflect.GeneratedMethodAccessor86.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n	at com.stylefeng.guns.modular.system.controller.LoginControllerTTEnhancerBySpringCGLIBTT11d60386.index(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:861)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:635)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.stylefeng.guns.core.util.xss.XssFilter.doFilter(XssFilter.java:22)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:105)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:799)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:861)\r\n	at org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1455)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\n');
INSERT INTO `operation_log` VALUES ('453', '业务日志', '添加角色', '1', 'com.stylefeng.guns.modular.system.controller.RoleController', 'add', '2017-06-03 22:06:41', '成功', '角色名称=临时');
INSERT INTO `operation_log` VALUES ('454', '业务日志', '配置权限', '1', 'com.stylefeng.guns.modular.system.controller.RoleController', 'setAuthority', '2017-06-03 22:06:48', '成功', '角色名称=临时,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,角色管理,添加角色,修改角色,删除角色,配置权限,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表');
INSERT INTO `operation_log` VALUES ('455', '业务日志', '分配角色', '1', 'com.stylefeng.guns.modular.system.controller.UserMgrController', 'setRole', '2017-06-03 22:06:53', '成功', '账号= test,角色名称集合=临时');
INSERT INTO `operation_log` VALUES ('456', '业务日志', '重置管理员密码', '1', 'com.stylefeng.guns.modular.system.controller.UserMgrController', 'reset', '2017-06-03 22:07:01', '成功', '账号= test');
INSERT INTO `operation_log` VALUES ('457', '业务日志', '菜单新增', '1', 'com.stylefeng.guns.modular.system.controller.MenuController', 'add', '2017-06-03 22:22:56', '成功', '菜单名称=修改部门跳转');
INSERT INTO `operation_log` VALUES ('458', '业务日志', '菜单新增', '1', 'com.stylefeng.guns.modular.system.controller.MenuController', 'add', '2017-06-03 22:23:41', '成功', '菜单名称=部门列表');
INSERT INTO `operation_log` VALUES ('459', '业务日志', '配置权限', '1', 'com.stylefeng.guns.modular.system.controller.RoleController', 'setAuthority', '2017-06-03 22:25:10', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,角色管理,添加角色,修改角色,删除角色,配置权限,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,字典管理,添加字典,修改字典,删除字典,登录日志,通知管理,添加通知,修改通知,删除通知,代码生成,通知,接口文档');
INSERT INTO `operation_log` VALUES ('460', '业务日志', '菜单新增', '1', 'com.stylefeng.guns.modular.system.controller.MenuController', 'add', '2017-06-03 22:30:08', '成功', '菜单名称=部门详情');
INSERT INTO `operation_log` VALUES ('461', '业务日志', '配置权限', '1', 'com.stylefeng.guns.modular.system.controller.RoleController', 'setAuthority', '2017-06-03 22:30:48', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,角色管理,添加角色,修改角色,删除角色,配置权限,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,字典管理,添加字典,修改字典,删除字典,登录日志,通知管理,添加通知,修改通知,删除通知,代码生成,通知,接口文档');
INSERT INTO `operation_log` VALUES ('462', '业务日志', '菜单新增', '1', 'com.stylefeng.guns.modular.system.controller.MenuController', 'add', '2017-06-03 22:33:30', '成功', '菜单名称=修改菜单跳转');
INSERT INTO `operation_log` VALUES ('463', '业务日志', '菜单新增', '1', 'com.stylefeng.guns.modular.system.controller.MenuController', 'add', '2017-06-03 22:33:54', '成功', '菜单名称=字典列表');
INSERT INTO `operation_log` VALUES ('464', '业务日志', '菜单新增', '1', 'com.stylefeng.guns.modular.system.controller.MenuController', 'add', '2017-06-03 22:34:38', '成功', '菜单名称=字典详情');
INSERT INTO `operation_log` VALUES ('465', '业务日志', '配置权限', '1', 'com.stylefeng.guns.modular.system.controller.RoleController', 'setAuthority', '2017-06-03 22:36:31', '成功', '角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,角色管理,添加角色,修改角色,删除角色,配置权限,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,通知管理,添加通知,修改通知,删除通知,代码生成,通知,接口文档');
INSERT INTO `operation_log` VALUES ('466', '业务日志', '修改字典', '1', 'com.stylefeng.guns.modular.system.controller.DictController', 'update', '2017-06-03 22:36:40', '成功', '字典名称=账号状态,字典内容=1:启用;2:冻结;3:已删除;;;;');

-- ----------------------------
-- Table structure for relation
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3525 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation
-- ----------------------------
INSERT INTO `relation` VALUES ('3377', '105', '5');
INSERT INTO `relation` VALUES ('3378', '106', '5');
INSERT INTO `relation` VALUES ('3379', '107', '5');
INSERT INTO `relation` VALUES ('3380', '108', '5');
INSERT INTO `relation` VALUES ('3381', '109', '5');
INSERT INTO `relation` VALUES ('3382', '110', '5');
INSERT INTO `relation` VALUES ('3383', '111', '5');
INSERT INTO `relation` VALUES ('3384', '112', '5');
INSERT INTO `relation` VALUES ('3385', '113', '5');
INSERT INTO `relation` VALUES ('3386', '114', '5');
INSERT INTO `relation` VALUES ('3387', '115', '5');
INSERT INTO `relation` VALUES ('3388', '116', '5');
INSERT INTO `relation` VALUES ('3389', '117', '5');
INSERT INTO `relation` VALUES ('3390', '118', '5');
INSERT INTO `relation` VALUES ('3391', '119', '5');
INSERT INTO `relation` VALUES ('3392', '120', '5');
INSERT INTO `relation` VALUES ('3393', '121', '5');
INSERT INTO `relation` VALUES ('3394', '122', '5');
INSERT INTO `relation` VALUES ('3395', '150', '5');
INSERT INTO `relation` VALUES ('3396', '151', '5');
INSERT INTO `relation` VALUES ('3480', '105', '1');
INSERT INTO `relation` VALUES ('3481', '106', '1');
INSERT INTO `relation` VALUES ('3482', '107', '1');
INSERT INTO `relation` VALUES ('3483', '108', '1');
INSERT INTO `relation` VALUES ('3484', '109', '1');
INSERT INTO `relation` VALUES ('3485', '110', '1');
INSERT INTO `relation` VALUES ('3486', '111', '1');
INSERT INTO `relation` VALUES ('3487', '112', '1');
INSERT INTO `relation` VALUES ('3488', '113', '1');
INSERT INTO `relation` VALUES ('3489', '114', '1');
INSERT INTO `relation` VALUES ('3490', '115', '1');
INSERT INTO `relation` VALUES ('3491', '116', '1');
INSERT INTO `relation` VALUES ('3492', '117', '1');
INSERT INTO `relation` VALUES ('3493', '118', '1');
INSERT INTO `relation` VALUES ('3494', '119', '1');
INSERT INTO `relation` VALUES ('3495', '120', '1');
INSERT INTO `relation` VALUES ('3496', '121', '1');
INSERT INTO `relation` VALUES ('3497', '122', '1');
INSERT INTO `relation` VALUES ('3498', '150', '1');
INSERT INTO `relation` VALUES ('3499', '151', '1');
INSERT INTO `relation` VALUES ('3500', '128', '1');
INSERT INTO `relation` VALUES ('3501', '134', '1');
INSERT INTO `relation` VALUES ('3502', '130', '1');
INSERT INTO `relation` VALUES ('3503', '131', '1');
INSERT INTO `relation` VALUES ('3504', '135', '1');
INSERT INTO `relation` VALUES ('3505', '136', '1');
INSERT INTO `relation` VALUES ('3506', '137', '1');
INSERT INTO `relation` VALUES ('3507', '152', '1');
INSERT INTO `relation` VALUES ('3508', '153', '1');
INSERT INTO `relation` VALUES ('3509', '154', '1');
INSERT INTO `relation` VALUES ('3510', '132', '1');
INSERT INTO `relation` VALUES ('3511', '138', '1');
INSERT INTO `relation` VALUES ('3512', '139', '1');
INSERT INTO `relation` VALUES ('3513', '140', '1');
INSERT INTO `relation` VALUES ('3514', '155', '1');
INSERT INTO `relation` VALUES ('3515', '156', '1');
INSERT INTO `relation` VALUES ('3516', '157', '1');
INSERT INTO `relation` VALUES ('3517', '133', '1');
INSERT INTO `relation` VALUES ('3518', '141', '1');
INSERT INTO `relation` VALUES ('3519', '142', '1');
INSERT INTO `relation` VALUES ('3520', '143', '1');
INSERT INTO `relation` VALUES ('3521', '144', '1');
INSERT INTO `relation` VALUES ('3522', '148', '1');
INSERT INTO `relation` VALUES ('3523', '145', '1');
INSERT INTO `relation` VALUES ('3524', '149', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '1', '0', '超级管理员', '24', 'administrator', '1');
INSERT INTO `role` VALUES ('5', '2', '1', '临时', '26', 'temp', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `salt` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `roleid` varchar(255) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'girl.gif', 'admin', 'ecfadcde9305f8891bcfe5a1e28c253e', '8pgby', '张三', '2017-05-05 00:00:00', '2', 'sn93@qq.com', '18200000000', '1', '27', '1', '2016-01-29 08:49:53', '25');
INSERT INTO `user` VALUES ('44', null, ' test', '45abb7879f6a8268f1ef600e6038ac73', 'ssts3', 'test', '2017-05-01 00:00:00', '1', 'abc@123.com', '', '5', '26', '1', '2017-05-16 20:33:37', null);
