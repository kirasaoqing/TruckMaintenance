package com.cx.truck.web.controller;

import com.cx.truck.model.MaintenanceMaterial;
import com.cx.truck.model.Msg;
import com.cx.truck.service.IMaintenanceMaterialService;
import com.cx.truck.web.controller.base.BaseController;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

//@Controller
//@RequestMapping("maintenancematerial")
public class MaintenanceMaterialController1 extends BaseController<MaintenanceMaterial> {
    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController1.class);

    @Autowired
    private IMaintenanceMaterialService maintenanceMaterialService;

    //===============================查找============================

    /**
     * 根据维修单id查询项目
     * @param billId
     * @return
     */
    @RequestMapping(value = "/getMaterialsByBillId", method = RequestMethod.GET)
    @ResponseBody
    public Msg getMaterialsByBillId(@RequestParam("billId") Integer billId) {
        List<MaintenanceMaterial> maintenanceMaterials = maintenanceMaterialService.findByBillId(billId);
        return Msg.success().add("maintenanceMaterials", maintenanceMaterials);
    }

    /**
     * 根据id获取维修材料
     *
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Msg getMaterialById(@PathVariable("id") Integer id) {
        MaintenanceMaterial material = maintenanceMaterialService.findById(id);
        return Msg.success().add("material", material);
    }

    //===============================新增=============================

    /**
     * 新增项目
     * @param maintenanceMaterial
     * @return
     */
    @RequestMapping(value = "maintenancematerial", method = RequestMethod.POST)
    @ResponseBody
    public Msg saveBillMaterials(MaintenanceMaterial maintenanceMaterial) {
        Integer id = maintenanceMaterialService.insertSelective(maintenanceMaterial);
        return Msg.success().add("materialid", id);
    }

    //==============================删除===============================

    /**
     * 根据项目id单个或批量删除
     *
     * @param materials
     * @return
     */
    @RequestMapping(value = "/{materials}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteMaterials(@PathVariable("materials") String materials) {
        if (materials.contains("-")) {
            List<Integer> list_materials = new ArrayList<Integer>();
            String[] arr_materials = materials.split("-");
            for (String arr_material : arr_materials) {
                list_materials.add(Integer.parseInt(arr_material));
            }
            maintenanceMaterialService.deleteBatch(list_materials);
        } else {
            maintenanceMaterialService.deleteById(Integer.parseInt(materials));
        }
        return Msg.success();
    }

    /**
     * 根据维修单id删除维修项目
     *
     * @param billIds
     * @return
     */
    @RequestMapping(value = "material/{billIds}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteMaterialsByBillId(@PathVariable("billIds") String billIds) {
        List<Integer> list_billIds = new ArrayList<Integer>();
        String[] arr_billIds = billIds.split("-");
        for (String arr_billId : arr_billIds) {
            list_billIds.add(Integer.parseInt(arr_billId));
        }
        maintenanceMaterialService.deleteBatchByBillId(list_billIds);
        return Msg.success();
    }

    //===============================更新===============================

    /**
     * 更新项目
     *
     * @param maintenanceMaterial
     * @return
     */
    @RequestMapping(value = "/maintenancematerial", method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateMaterial(MaintenanceMaterial maintenanceMaterial) {
        maintenanceMaterialService.update(maintenanceMaterial);
        return Msg.success();
    }

}
