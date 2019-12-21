package com.cx.truck.web.controller;

import com.cx.truck.model.MaintenanceItem;
import com.cx.truck.model.Msg;
import com.cx.truck.service.IMaintenanceItemService;
import com.cx.truck.web.controller.base.BaseController;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("maintenanceitem")
public class MaintenanceItemController extends BaseController<MaintenanceItem> {
    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController.class);

    @Autowired
    private IMaintenanceItemService maintenanceItemService;

    //==============================查找=============================

    /**
     * 根据维修单id查找出所有维修项目
     *
     * @param billId
     * @return
     */
    @RequestMapping(value = "/getItemsByBillId", method = RequestMethod.GET)
    @ResponseBody
    public Msg getItemsByBillId(@RequestParam("billId") String billId) {
        List<MaintenanceItem> maintenanceItems = maintenanceItemService.findByBillId(billId);
        return Msg.success().add("maintenanceItems", maintenanceItems);
    }

    //==============================新增==============================

    /**
     * 新增
     *
     * @param maintenanceItem
     * @return
     */
    @RequestMapping(value = "/maintenanceitem", method = RequestMethod.POST)
    @ResponseBody
    public Msg saveBillItems(MaintenanceItem maintenanceItem) {
        maintenanceItemService.insert(maintenanceItem);
        return Msg.success();
    }
}
