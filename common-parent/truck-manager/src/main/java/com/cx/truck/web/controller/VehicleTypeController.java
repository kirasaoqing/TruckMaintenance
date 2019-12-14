package com.cx.truck.web.controller;

import com.cx.truck.model.Msg;
import com.cx.truck.model.VehicleType;
import com.cx.truck.service.IVehicleTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 车型相关控制器
 */
@Controller
@RequestMapping("vehicleType")
public class VehicleTypeController {

    @Autowired
    private IVehicleTypeService vehicleTypeService;

    /**
     * 返回全部vehicleTypes的json
     * @return
     */
    @RequestMapping(value = "/getAllVehicleTypes", method = RequestMethod.GET)
    @ResponseBody
    public Msg getAllVehicleTypes() {
        List<VehicleType> vehicleTypes = vehicleTypeService.findAll();
        return Msg.success().add("vehicleTypes", vehicleTypes);
    }
}
