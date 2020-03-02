package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.MaintenanceItem;
import com.cx.truck.service.IMaintenanceItemService;
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
@RequestMapping("maintenanceitem")
public class MaintenanceItemController extends BaseController<MaintenanceItem> {
    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController1.class);

    @Autowired
    private IMaintenanceItemService maintenanceItemService;

    //==============================查找=============================

    /**
     * 根据维修单id查找出所有维修项目
     *
     * @param billId
     * @return
     */
    @GetMapping("/bill/{billId}")
    @ResponseBody
    public JsonResult getItemsByBillId(@PathVariable("billId") Integer billId) {
        //List查询要放到startPage下面
        PageHelper.startPage(1, 10);
        List<MaintenanceItem> items = maintenanceItemService.findByBillId(billId);
        PageInfo<MaintenanceItem> pageInfo = new PageInfo<>(items);
        //取出查询结果
        List<MaintenanceItem> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;


        /*List<MaintenanceItem> maintenanceItems = maintenanceItemService.findByBillId(billId);
        return JsonResult.success().add("maintenanceItems", maintenanceItems);*/
    }

    /**
     * 根据id获取维修项目
     *
     * @return
     */
    @GetMapping("/{id}")
    @ResponseBody
    public JsonResult getItemById(@PathVariable("id") Integer id) {
        MaintenanceItem item = maintenanceItemService.findById(id);
        return JsonResult.success().add("item", item);
    }

    //==============================新增==============================

    /**
     * 新增
     *
     * @param maintenanceItem
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult saveBillItems(MaintenanceItem maintenanceItem) {
        Integer id = maintenanceItemService.insertSelective(maintenanceItem);
        return JsonResult.success().add("itemid",id);
    }

    //==============================删除===============================
    /**
     * 根据项目id单个或批量删除
     *
     * @param items
     * @return
     */
    @DeleteMapping("/{items}")
    @ResponseBody
    public JsonResult deleteItems(@PathVariable("items") String items) {
        if (items.contains("-")) {
            List<Integer> list_items = new ArrayList<Integer>();
            String[] arr_items = items.split("-");
            for (String arr_item : arr_items) {
                list_items.add(Integer.parseInt(arr_item));
            }
            maintenanceItemService.deleteBatch(list_items);
        } else {
            maintenanceItemService.deleteById(Integer.parseInt(items));
        }
        return JsonResult.success();
    }

    /**
     * 根据维修单id删除维修项目
     * @param billIds
     * @return
     */
    @DeleteMapping("/item/{billIds}")
    @ResponseBody
    public JsonResult deleteItemsByBillId(@PathVariable("billIds") String billIds){
        List<Integer> list_billIds = new ArrayList<Integer>();
        String[] arr_billIds = billIds.split("-");
        for (String arr_billId : arr_billIds) {
            list_billIds.add(Integer.parseInt(arr_billId));
        }
        maintenanceItemService.deleteBatchByBillId(list_billIds);
        return JsonResult.success();
    }

    //===============================更新===============================

    /**
     * 维修项目更新
     * @param maintenanceItem
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult updateItem(MaintenanceItem maintenanceItem){
        maintenanceItemService.update(maintenanceItem);
        return JsonResult.success();
    }
}
