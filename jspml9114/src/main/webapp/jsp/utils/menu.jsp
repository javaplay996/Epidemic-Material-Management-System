<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","出库","入库"],"menu":"物资信息","menuJump":"列表","tableName":"wuzixinxi"}],"menu":"物资信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"物资分类","menuJump":"列表","tableName":"wuzifenlei"}],"menu":"物资分类管理"},{"child":[{"buttons":["新增","查看","修改","删除","报表"],"menu":"出库信息","menuJump":"列表","tableName":"chukuxinxi"}],"menu":"出库信息管理"},{"child":[{"buttons":["新增","查看","修改","删除","报表"],"menu":"入库信息","menuJump":"列表","tableName":"rukuxinxi"}],"menu":"入库信息管理"},{"child":[{"buttons":["查看","修改","删除","审核","报表"],"menu":"申领物资","menuJump":"列表","tableName":"shenlingwuzi"}],"menu":"申领物资管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"部门","menuJump":"列表","tableName":"bumen"}],"menu":"部门管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"职务","menuJump":"列表","tableName":"zhiwu"}],"menu":"职务管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"物资采购","menuJump":"列表","tableName":"wuzicaigou"}],"menu":"物资采购管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核"],"menu":"财务报销","menuJump":"列表","tableName":"caiwubaoxiao"}],"menu":"财务报销管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"采购员","menuJump":"列表","tableName":"caigouyuan"}],"menu":"采购员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"后勤人员","menuJump":"列表","tableName":"houqinrenyuan"}],"menu":"后勤人员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"财务人员","menuJump":"列表","tableName":"caiwurenyuan"}],"menu":"财务人员管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"物资信息","menuJump":"列表","tableName":"wuzixinxi"}],"menu":"物资信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"物资采购","menuJump":"列表","tableName":"wuzicaigou"}],"menu":"物资采购管理"},{"child":[{"buttons":["查看"],"menu":"财务报销","menuJump":"列表","tableName":"caiwubaoxiao"}],"menu":"财务报销管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"采购员","tableName":"caigouyuan"},{"backMenu":[{"child":[{"buttons":["查看","出库","入库"],"menu":"物资信息","menuJump":"列表","tableName":"wuzixinxi"}],"menu":"物资信息管理"},{"child":[{"buttons":["新增","查看","修改","删除","报表"],"menu":"出库信息","menuJump":"列表","tableName":"chukuxinxi"}],"menu":"出库信息管理"},{"child":[{"buttons":["新增","查看","修改","删除","报表"],"menu":"入库信息","menuJump":"列表","tableName":"rukuxinxi"}],"menu":"入库信息管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核","报表"],"menu":"申领物资","menuJump":"列表","tableName":"shenlingwuzi"}],"menu":"申领物资管理"},{"child":[{"buttons":["查看"],"menu":"物资采购","menuJump":"列表","tableName":"wuzicaigou"}],"menu":"物资采购管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"后勤人员","tableName":"houqinrenyuan"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"物资采购","menuJump":"列表","tableName":"wuzicaigou"}],"menu":"物资采购管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核"],"menu":"财务报销","menuJump":"列表","tableName":"caiwubaoxiao"}],"menu":"财务报销管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"财务人员","tableName":"caiwurenyuan"}];

var hasMessage = '';
