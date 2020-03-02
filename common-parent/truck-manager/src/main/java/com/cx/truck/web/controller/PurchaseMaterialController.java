package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.PurchaseMaterial;
import com.cx.truck.service.IPurchaseMaterialService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("purchasematerial")
public class PurchaseMaterialController {
    //创建一个日志对象
    private Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    private IPurchaseMaterialService purchaseMaterialService;

    //===============================查找============================
    /**
     * 根据维修单id查找出所有维修项目
     *
     * @param billId
     * @return
     */
    @GetMapping("/bill/{billId}")
    @ResponseBody
    public JsonResult getMaterialsByBillId(@PathVariable("billId") Integer billId) {
        //List查询要放到startPage下面
        PageHelper.startPage(1, 10);
        List<PurchaseMaterial> materials = purchaseMaterialService.findByBillId(billId);
        PageInfo<PurchaseMaterial> pageInfo = new PageInfo<>(materials);
        //取出查询结果
        List<PurchaseMaterial> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;
    }

    //===============================新增=============================

    /**
     * 新增项目
     * @param purchaseMaterial
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult saveBillMaterials(PurchaseMaterial purchaseMaterial) {
        Integer id = purchaseMaterialService.insertSelective(purchaseMaterial);
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
    public JsonResult delete(@PathVariable("materials") String materials) {
        if (materials.contains("-")) {
            List<Integer> list_materials = new ArrayList<Integer>();
            String[] arr_materials = materials.split("-");
            for (String arr_material : arr_materials) {
                list_materials.add(Integer.parseInt(arr_material));
            }
            purchaseMaterialService.deleteBatch(list_materials);
        } else {
            purchaseMaterialService.deleteById(Integer.parseInt(materials));
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
    public JsonResult deletByBillId(@PathVariable("billIds") String billIds) {
        List<Integer> list_billIds = new ArrayList<Integer>();
        String[] arr_billIds = billIds.split("-");
        for (String arr_billId : arr_billIds) {
            list_billIds.add(Integer.parseInt(arr_billId));
        }
        purchaseMaterialService.deleteBatchByBillId(list_billIds);
        return JsonResult.success();
    }

    //===============================更新===============================

    /**
     * 更新项目
     *
     * @param purchaseMaterial
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult updateMaterial(PurchaseMaterial purchaseMaterial) {
        purchaseMaterialService.update(purchaseMaterial);
        return JsonResult.success();
    }
}
