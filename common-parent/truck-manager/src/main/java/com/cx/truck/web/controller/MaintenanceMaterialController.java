package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.MaintenanceMaterial;
import com.cx.truck.service.IMaintenanceMaterialService;
import com.cx.truck.web.controller.base.BaseController;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("maintenancematerial")
public class MaintenanceMaterialController extends BaseController<MaintenanceMaterial> {
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
    @GetMapping("/bill/{billId}")
    @ResponseBody
    public JsonResult getMaterialsByBillId(@PathVariable("billId") Integer billId) {
        //List查询要放到startPage下面
        PageHelper.startPage(1, 20);
        List<MaintenanceMaterial> materials = maintenanceMaterialService.findByBillId(billId);
        PageInfo<MaintenanceMaterial> pageInfo = new PageInfo<>(materials);
        //取出查询结果
        List<MaintenanceMaterial> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;


        /*List<MaintenanceMaterial> maintenanceMaterials = maintenanceMaterialService.findByBillId(billId);
        return JsonResult.success().add("maintenanceMaterials", maintenanceMaterials);*/
    }

    /**
     * 根据id获取维修材料
     *
     * @return
     */
    @GetMapping("/{id}")
    @ResponseBody
    public JsonResult getMaterialById(@PathVariable("id") Integer id) {
        MaintenanceMaterial material = maintenanceMaterialService.findById(id);
        return JsonResult.success().add("material", material);
    }

    //===============================新增=============================

    /**
     * 新增项目
     * @param maintenanceMaterial
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult saveBillMaterials(MaintenanceMaterial maintenanceMaterial) {
        Integer id = maintenanceMaterialService.insertSelective(maintenanceMaterial);
        return JsonResult.success().add("materialid", id);
    }

    //==============================删除===============================

    /**
     * 根据项目id单个或批量删除
     *
     * @param materials
     * @return
     */
    @DeleteMapping("/{materials}")
    @ResponseBody
    public JsonResult deleteMaterials(@PathVariable("materials") String materials) {
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
        return JsonResult.success();
    }

    /**
     * 根据维修单id删除维修项目
     *
     * @param billIds
     * @return
     */
    @DeleteMapping("/material/{billIds}")
    @ResponseBody
    public JsonResult deleteMaterialsByBillId(@PathVariable("billIds") String billIds) {
        List<Integer> list_billIds = new ArrayList<Integer>();
        String[] arr_billIds = billIds.split("-");
        for (String arr_billId : arr_billIds) {
            list_billIds.add(Integer.parseInt(arr_billId));
        }
        maintenanceMaterialService.deleteBatchByBillId(list_billIds);
        return JsonResult.success();
    }

    //===============================更新===============================

    /**
     * 更新项目
     *
     * @param maintenanceMaterial
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult updateMaterial(MaintenanceMaterial maintenanceMaterial) {
        maintenanceMaterialService.update(maintenanceMaterial);
        return JsonResult.success();
    }

}
