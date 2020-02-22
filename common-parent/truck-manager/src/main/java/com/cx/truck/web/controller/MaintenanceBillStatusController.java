package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.MaintenanceBillStatus;
import com.cx.truck.model.Msg;
import com.cx.truck.service.IMaintenanceBillStatusService;
import com.cx.truck.web.controller.base.BaseController;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("billStatus")
public class MaintenanceBillStatusController extends BaseController<MaintenanceBillStatus> {
    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController1.class);

    @Autowired
    private IMaintenanceBillStatusService maintenanceBillStatusService;

    //================================查询===================================

    /**
     * 获取所有单据状态
     * @return
     */
    @GetMapping("/getAllBillStatus")
    @ResponseBody
    public JsonResult getAllBillStatus(){
        List<MaintenanceBillStatus> billStatuses = maintenanceBillStatusService.findAll();
        return JsonResult.success().add("billStatuses",billStatuses);
    }

}
