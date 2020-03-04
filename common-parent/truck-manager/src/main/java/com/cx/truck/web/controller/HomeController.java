package com.cx.truck.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static com.cx.truck.web.controller.base.BaseController.*;

/**
 * 主页控制器
 */
@Controller
@RequestMapping(HOME)
public class HomeController {

    /**
     * 跳转到主页
     *
     * @return
     */
    @RequestMapping(HOME)
    public String goHome() {
        return HOME;
    }

    /**
     * 跳转到员工列表
     *
     * @return
     */
    @RequestMapping(WORKER)
    public String goWorkerList() {
        return WORKER_PAGE + LIST;
    }

    /**
     * 跳转到车辆列表
     *
     * @return
     */
    @RequestMapping(TRUCK)
    public String goTruckList() {
        return TRUCK_PAGE + LIST;
    }

    /**
     * 跳转到客户列表
     *
     * @return
     */
    @RequestMapping(CUSTOMER)
    public String goCustomerList() {
        return CUSTOMER_PAGE + LIST;
    }

    /**
     * 跳转到材料列表
     *
     * @return
     */
    @RequestMapping(MATERIAL)
    public String goMaterialList() {
        return MATERIAL_PAGE + LIST;
    }

    /**
     * 跳转到单位列表
     *
     * @return
     */
    @RequestMapping(UNIT)
    public String goUnitList() {
        return UNIT_PAGE + LIST;
    }

    /**
     * 跳转到库存查询
     *
     * @return
     */
    @RequestMapping(INVENTORY)
    public String goInventory() {
        return INVENTORY_PAGE;
    }


    /**
     * 跳转到维修单列表
     *
     * @return
     */
    @RequestMapping(MAINTENANCE + BILL)
    public String goMaintenanceList() {
        return MAINTENANCEBILL_PAGE + LIST;
    }

    /**
     * 跳转到维修单列表
     *
     * @return
     */
    @RequestMapping(PURCHASE + BILL)
    public String goPurchaseList() {
        return PURCHASEBILL_PAGE + LIST;
    }
}
