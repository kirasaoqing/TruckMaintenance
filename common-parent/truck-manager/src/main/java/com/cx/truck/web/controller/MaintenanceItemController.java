package com.cx.truck.web.controller;

import com.cx.truck.model.MaintenanceItem;
import com.cx.truck.model.Msg;
import com.cx.truck.service.IMaintenanceItemService;
import com.cx.truck.web.controller.base.BaseController;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
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
    public Msg getItemsByBillId(@RequestParam("billId") Integer billId) {
        List<MaintenanceItem> maintenanceItems = maintenanceItemService.findByBillId(billId);
        return Msg.success().add("maintenanceItems", maintenanceItems);
    }

    /**
     * 根据id获取维修项目
     *
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Msg getItemById(@PathVariable("id") Integer id) {
        MaintenanceItem item = maintenanceItemService.findById(id);
        return Msg.success().add("item", item);
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
        Integer id = maintenanceItemService.insertSelective(maintenanceItem);
        return Msg.success().add("itemid",id);
    }

    //==============================删除===============================
    /**
     * 根据项目id单个或批量删除
     *
     * @param items
     * @return
     */
    @RequestMapping(value = "/{items}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteItems(@PathVariable("items") String items) {
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
        return Msg.success();
    }

    /**
     * 根据维修单id删除维修项目
     * @param billIds
     * @return
     */
    @RequestMapping(value = "item/{billIds}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteItemsByBillId(@PathVariable("billIds") String billIds){
        List<Integer> list_billIds = new ArrayList<Integer>();
        String[] arr_billIds = billIds.split("-");
        for (String arr_billId : arr_billIds) {
            list_billIds.add(Integer.parseInt(arr_billId));
        }
        maintenanceItemService.deleteBatchByBillId(list_billIds);
        return Msg.success();
    }

    //===============================更新===============================
    @RequestMapping(value = "/maintenanceitem", method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateItem(MaintenanceItem maintenanceItem){
        maintenanceItemService.update(maintenanceItem);
        return Msg.success();
    }
}
