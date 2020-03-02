package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.PurchaseBill;
import com.cx.truck.service.IPurchaseBillService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("purchasebill")
public class PurchaseBillController {
    //创建一个日志对象
    private Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    private IPurchaseBillService purchaseBillService;

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
        List<PurchaseBill> purchaseBills = purchaseBillService.findAll();
        PageInfo<PurchaseBill> pageInfo = new PageInfo<>(purchaseBills);
        //取出查询结果
        List<PurchaseBill> rowInfo = pageInfo.getList();
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
     * @param supplier
     * @return
     */
    @GetMapping("/list")
    @ResponseBody
    public JsonResult listByQueryParams(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                        @RequestParam(value = "rows", defaultValue = "6") Integer rows,
                                        @RequestParam(value = "beginDate", defaultValue = "2000年01月01日") String beginDate,
                                        @RequestParam(value = "endDate", defaultValue = "2888年01月01日") String endDate,
                                        @RequestParam(value = "supplier", defaultValue = "") String supplier) {
        //引入PageHelper分页插件，在查询之前只需要调用
        PageHelper.startPage(page, rows);
        //startPage后面紧跟的这个查询就是一个分页查询
        List<PurchaseBill> purchaseBills = purchaseBillService.findByCondition(beginDate, endDate, supplier);
        if (purchaseBills.size() > 0) {
            PageInfo<PurchaseBill> pageInfo = new PageInfo<PurchaseBill>(purchaseBills);
            List<PurchaseBill> rowInfo = pageInfo.getList();
            int total = (int) pageInfo.getTotal();
            JsonResult result = JsonResult.success();
            result.setTotal(total);
            result.setRows(rowInfo);
            return result;
        } else {
            return JsonResult.fail().add("va_msg", "所查询采购单不存在");
        }
    }

    //==============================新增==============================

    /**
     * 新增
     *
     * @param purchaseBill
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult save(PurchaseBill purchaseBill) {
        Integer id = purchaseBillService.insertSelective(purchaseBill);
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
    public JsonResult delete(@PathVariable("billIds") String billIds) {
        if (billIds.contains("-")) {
            List<Integer> list_billIds = new ArrayList<Integer>();
            String[] arr_billIds = billIds.split("-");
            for (String arr_billId : arr_billIds) {
                list_billIds.add(Integer.parseInt(arr_billId));
            }
            purchaseBillService.deleteBatch(list_billIds);
        } else {
            purchaseBillService.deleteById(Integer.parseInt(billIds));
        }
        return JsonResult.success();
    }

    //===============================更新===============================

    /**
     * 更新维修单
     * @param purchaseBill
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult update(PurchaseBill purchaseBill) {
        purchaseBillService.update(purchaseBill);
        return JsonResult.success();
    }
}
