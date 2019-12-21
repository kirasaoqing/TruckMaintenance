package com.cx.truck.web.controller;

import com.cx.truck.model.MaintenanceMaterial;
import com.cx.truck.model.Msg;
import com.cx.truck.service.IMaintenanceMaterialService;
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
@RequestMapping("maintenancematerial")
public class MaintenanceMaterialController extends BaseController<MaintenanceMaterial> {
    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController.class);

    @Autowired
    private IMaintenanceMaterialService maintenanceMaterialService;

    //===============================查找============================
    @RequestMapping(value = "/getMaterialsByBillId", method = RequestMethod.GET)
    @ResponseBody
    public Msg getMaterialsByBillId(@RequestParam("billId") String billId) {
        List<MaintenanceMaterial> maintenanceMaterials = maintenanceMaterialService.findByBillId(billId);
        return Msg.success().add("maintenanceMaterials", maintenanceMaterials);
    }

    //===============================新增=============================
    @RequestMapping(value = "maintenancematerial", method = RequestMethod.POST)
    @ResponseBody
    public Msg saveBillMaterials(MaintenanceMaterial maintenanceMaterial) {
        maintenanceMaterialService.insert(maintenanceMaterial);
        return Msg.success();
    }
}
