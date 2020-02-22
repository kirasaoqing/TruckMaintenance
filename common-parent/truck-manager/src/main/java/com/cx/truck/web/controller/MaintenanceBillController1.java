package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.model.Msg;
import com.cx.truck.service.IMaintenanceBillService;
import com.cx.truck.web.controller.base.BaseController;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

//@Controller
//@RequestMapping("maintenancebill")
public class MaintenanceBillController1 extends BaseController<MaintenanceBill> {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController1.class);

    @Autowired
    private IMaintenanceBillService maintenanceBillService;

    //================================查询===================================

    /**
     * list方法返回json
     *
     * @param pn
     * @return
     */
    @RequestMapping(value = "/listAll", method = RequestMethod.GET)
    public @ResponseBody
    Msg getAllBillsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        logger.info("==================list billInfo, page from:" + pn + "====================");
        //这不是一个分页查询
        //List<Customer> customers = customerService.findAll();
        //引入PageHelper分页插件，在查询之前只需要调用
        PageHelper.startPage(pn, 6);
        //startPage后面紧跟的这个查询就是一个分页查询
        List<MaintenanceBill> maintenanceBills = maintenanceBillService.findAll();
        //使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了
        //封装了详细的分页信息，连续显示5页
        PageInfo page = new PageInfo(maintenanceBills, 6);
        return Msg.success().add("pageInfo", page);
    }

    /**
     * 根据id获取维修单
     *
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Msg getBillById(@PathVariable("id") Integer id) {
        MaintenanceBill maintenanceBill = maintenanceBillService.findById(id);
        return Msg.success().add("bill", maintenanceBill);
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public Msg getBillsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
                                @RequestParam(value = "beginDate", defaultValue = "2000年01月01日") String beginDate,
                                @RequestParam(value = "endDate", defaultValue = "2888年01月01日") String endDate,
                                @RequestParam(value = "truckId", defaultValue = "0") Integer truckId) {
        //引入PageHelper分页插件，在查询之前只需要调用
        PageHelper.startPage(pn, 6);
        //startPage后面紧跟的这个查询就是一个分页查询
        List<MaintenanceBill> maintenanceBills = maintenanceBillService.findByCondition(beginDate, endDate, truckId);
        //使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了
        //封装了详细的分页信息，连续显示5页
        PageInfo page = new PageInfo(maintenanceBills, 6);
        return Msg.success().add("pageInfo", page);
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

    //==============================新增==============================

    /**
     * 新增
     *
     * @param maintenanceBill
     * @return
     */
    @RequestMapping(value = "/maintenancebill", method = RequestMethod.POST)
    @ResponseBody
    public Msg saveBills(MaintenanceBill maintenanceBill) {
        //maintenanceBillService.insert(maintenanceBill);
        Integer id = maintenanceBillService.insertSelective(maintenanceBill);
        return Msg.success().add("billid", id);
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
    public Msg deleteBills(@PathVariable("billIds") String billIds) {
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
        return Msg.success();
    }

    //===============================更新===============================
    @RequestMapping(value = "/maintenancebill", method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateBill(MaintenanceBill maintenanceBill) {
        maintenanceBillService.update(maintenanceBill);
        return Msg.success();
    }
}
