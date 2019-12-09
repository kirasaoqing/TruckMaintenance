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
}
