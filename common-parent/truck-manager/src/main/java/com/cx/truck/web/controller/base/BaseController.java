package com.cx.truck.web.controller.base;

import java.lang.reflect.ParameterizedType;

public abstract class BaseController<T> {

    public static final String HOME = "home";

    public static final String BASICS = "basics";
    public static final String USER = "user";
    public static final String CUSTOMER = "customer";
    public static final String TRUCK = "truck";
    public static final String WORKER = "worker";
    public static final String MATERIAL = "material";
    public static final String UNIT = "unit";

    public static final String SERVICES = "services";
    public static final String BILL = "bill";
    public static final String MAINTENANCE = "maintenance";

    public static final String PURCHASE = "purchase";

    public static final String LIST = "list";

    public static final String LOGIN = "login";
    public static final String LOGOUT = "logout";

    public static final String ADD = "add";

    //public static final String MANAGE = "manage";
    //public static final String INFO = "info";
    //public static final String EDIT = "edit";

    public static String LIST_PAGE;//列表展示
    public static String ADD_PAGE;//新增页面

    //public static String MANAGE_PAGE;//管理页面
    //public static String INFO_PAGE;//列表页面
    //public static String EDIT_PAGE;//编辑页面

    public static final String WORKER_PAGE = BASICS + "/" + WORKER;//员工页面
    public static final String TRUCK_PAGE = BASICS + "/" + TRUCK;//车辆页面
    public static final String CUSTOMER_PAGE = BASICS + "/" + CUSTOMER;//客户页面
    public static final String MATERIAL_PAGE = BASICS + "/" + MATERIAL;//材料页面
    public static final String UNIT_PAGE = BASICS + "/" + UNIT;//单位页面


    //public static final String BILL_PAGE = SERVICES + "/" + BILL;

    public static final String MAINTENANCEBILL_PAGE = SERVICES + "/" + MAINTENANCE + BILL;
    public static final String PURCHASEBILL_PAGE = SERVICES + "/" + PURCHASE + BILL;

    public BaseController() {
        //1.获取范型的真实类型
        ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
        //模块全类名
        Class<?> moduleClass = (Class<?>) type.getActualTypeArguments()[0];
        //模块名
        String moduleName = moduleClass.getSimpleName().toLowerCase();

        //2.给静态页面赋值
        //MANAGE_PAGE = moduleName + "/" + MANAGE;
        //INFO_PAGE = moduleName + "/" + INFO;
        //EDIT_PAGE = moduleName + "/" + EDIT;

        ADD_PAGE = moduleName + "/" + ADD;
        LIST_PAGE = moduleName + "/" + LIST;

    }
}
