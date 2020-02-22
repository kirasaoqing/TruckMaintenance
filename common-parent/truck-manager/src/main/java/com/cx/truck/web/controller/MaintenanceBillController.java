package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.service.IMaintenanceBillService;
import com.cx.truck.web.controller.base.BaseController;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("maintenancebill")
public class MaintenanceBillController extends BaseController<MaintenanceBill> {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController1.class);

    @Autowired
    private IMaintenanceBillService maintenanceBillService;

    //================================查询===================================

    /**
     * 查询全部
     *
     * @param rows
     * @param page
     * @return
     * @throws JsonProcessingException
     */
    @GetMapping
    @ResponseBody
    public JsonResult list(@RequestParam(value = "page", defaultValue = "1") Integer page,
                           @RequestParam(value = "rows", defaultValue = "6") Integer rows) throws JsonProcessingException {
        //List查询要放到startPage下面
        PageHelper.startPage(page, rows);
        List<MaintenanceBill> maintenanceBills = maintenanceBillService.findAll();
        PageInfo<MaintenanceBill> pageInfo = new PageInfo<>(maintenanceBills);
        //取出查询结果
        List<MaintenanceBill> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;
    }

    /**
     * 根据条件查询
     *
     * @param page
     * @param rows
     * @param beginDate
     * @param endDate
     * @param truckId
     * @return
     */
    @GetMapping("/list")
    @ResponseBody
    public JsonResult listByQueryParams(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                        @RequestParam(value = "rows", defaultValue = "6") Integer rows,
                                        @RequestParam(value = "beginDate", defaultValue = "2000年01月01日") String beginDate,
                                        @RequestParam(value = "endDate", defaultValue = "2888年01月01日") String endDate,
                                        @RequestParam(value = "truckId", defaultValue = "0") Integer truckId) {
        //引入PageHelper分页插件，在查询之前只需要调用
        PageHelper.startPage(page, rows);
        //startPage后面紧跟的这个查询就是一个分页查询
        List<MaintenanceBill> maintenanceBills = maintenanceBillService.findByCondition(beginDate, endDate, truckId);
        if (maintenanceBills.size() > 0) {
            PageInfo<MaintenanceBill> pageInfo = new PageInfo<MaintenanceBill>(maintenanceBills);
            List<MaintenanceBill> rowInfo = pageInfo.getList();
            int total = (int) pageInfo.getTotal();
            JsonResult result = JsonResult.success();
            result.setTotal(total);
            result.setRows(rowInfo);
            return result;
        } else {
            return JsonResult.fail().add("va_msg", "所查询维修单不存在");
        }
    }

    /**
     * 根据id获取维修单
     *
     * @return
     */
    @GetMapping("/{id}")
    @ResponseBody
    public JsonResult getBillById(@PathVariable("id") Integer id) {
        MaintenanceBill maintenanceBill = maintenanceBillService.findById(id);
        return JsonResult.success().add("bill", maintenanceBill);
    }


    /**
     * 根据客户id统计车辆数量
     *
     * @param truckIds
     * @return
     */
    @GetMapping("/check/{truckIds}")
    @ResponseBody
    public JsonResult checkByTruckIds(@PathVariable("truckIds") String truckIds) {
        List<Integer> list_ids = new ArrayList<Integer>();
        if (truckIds.contains("-")) {
            String[] arr_ids = truckIds.split("-");
            for (String arr_id : arr_ids) {
                int trucks = maintenanceBillService.countByTruck(Integer.parseInt(arr_id));
                if (trucks > 0) {
                    list_ids.add(Integer.parseInt(arr_id));
                }
            }
        } else {
            int trucks = maintenanceBillService.countByTruck(Integer.parseInt(truckIds));
            if (trucks > 0) {
                list_ids.add(Integer.parseInt(truckIds));
            }
        }
        if (list_ids.size() > 0) {
            return JsonResult.fail().add("va_msg", list_ids);
        } else {
            return JsonResult.success();
        }
    }

    /**
     * 根据id获取维修单
     *
     * @return
     */
    @GetMapping("/counts/{date}")
    @ResponseBody
    public JsonResult counts(@PathVariable("date") String date) {
        HashMap<String, Integer> truckCounts = maintenanceBillService.getTruckCounts(date);
        return JsonResult.success().add("truckCounts", truckCounts);
    }

    //==============================新增==============================

    /**
     * 新增
     *
     * @param maintenanceBill
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult saveBills(MaintenanceBill maintenanceBill) {
        //maintenanceBillService.insert(maintenanceBill);
        Integer id = maintenanceBillService.insertSelective(maintenanceBill);
        return JsonResult.success().add("billid", id);
    }

    //==============================删除===============================

    /**
     * 根据维修单id单个或批量删除
     *
     * @param billIds
     * @return
     */
    @RequestMapping(value = "/{billIds}", method = RequestMethod.DELETE)
    @ResponseBody
    public JsonResult deleteBills(@PathVariable("billIds") String billIds) {
        if (billIds.contains("-")) {
            List<Integer> list_billIds = new ArrayList<Integer>();
            String[] arr_billIds = billIds.split("-");
            for (String arr_billId : arr_billIds) {
                list_billIds.add(Integer.parseInt(arr_billId));
            }
            maintenanceBillService.deleteBatch(list_billIds);
        } else {
            maintenanceBillService.deleteById(Integer.parseInt(billIds));
        }
        return JsonResult.success();
    }

    //===============================更新===============================

    /**
     * 更新维修单
     * @param maintenanceBill
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult updateBill(MaintenanceBill maintenanceBill) {
        maintenanceBillService.update(maintenanceBill);
        return JsonResult.success();
    }
}
