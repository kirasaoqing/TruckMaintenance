package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.Msg;
import com.cx.truck.model.VehicleType;
import com.cx.truck.service.IVehicleTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * 车型相关控制器
 */
@RestController
@RequestMapping("vehicleType")
public class VehicleTypeController {

    @Autowired
    private IVehicleTypeService vehicleTypeService;

    //============================查询============================

    /**
     * 返回全部vehicleTypes的json
     *
     * @return
     */
    @GetMapping
    @ResponseBody
    public JsonResult getAllVehicleTypes() {
        List<VehicleType> vehicleTypes = vehicleTypeService.findAll();
        return JsonResult.success().add("vehicleTypes", vehicleTypes);
    }

    //===========================新增=============================
    /**
     *
     * @param vehicleType
     * @return
     */
    @PostMapping
    //@RequestMapping(value = "/vehicleType", method = RequestMethod.POST)
    @ResponseBody
    public JsonResult saveVehicleType(VehicleType vehicleType) {
        vehicleTypeService.insertSelective(vehicleType);
        return JsonResult.success();
    }

    //===========================删除============================
    /**
     *
     * @param ids
     * @return
     */
    @DeleteMapping("/{ids}")
    //@RequestMapping(value = "/{ids}", method = RequestMethod.DELETE)
    @ResponseBody
    public JsonResult deleteVehicleType(@PathVariable("ids") String ids) {
        if (ids.contains("-")) {
            List<Integer> list = new ArrayList<Integer>();
            String[] arr_ids = ids.split("-");
            for (String arr_id : arr_ids) {
                list.add(Integer.parseInt(arr_id));
            }
            vehicleTypeService.deleteBatch(list);
        } else {
            vehicleTypeService.deleteById(Integer.parseInt(ids));
        }
        return JsonResult.success();
    }
}
