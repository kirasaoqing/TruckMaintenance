package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.Truck;
import com.cx.truck.service.ITruckService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("truck")
public class TruckController {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController.class);

    @Autowired
    private ITruckService truckService;

    //================================查询===================================

    /**
     * 查询所有车辆信息
     *
     * @param rows
     * @param page
     * @return
     * @throws JsonProcessingException
     */
    @GetMapping
    @ResponseBody
    public JsonResult list(int rows, int page) throws JsonProcessingException {
        //List查询要放到startPage下面
        PageHelper.startPage(page, rows);
        List<Truck> trucks = truckService.findAll();
        PageInfo<Truck> pageInfo = new PageInfo<>(trucks);
        //取出查询结果
        List<Truck> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();
        //封装入JsonResult，返回
        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);
        return result;
    }

    /**
     * 根据车牌号模糊查询
     *
     * @param plateNumber
     * @param rows
     * @param page
     * @return
     */
    @GetMapping("/list/{plateNumber}")
    @ResponseBody
    public JsonResult listByPlatenumber(@PathVariable("plateNumber") String plateNumber,
                                        int rows, int page) {
        PageHelper.startPage(page, rows);
        List<Truck> trucks = truckService.fuzzyByName("%" + plateNumber + "%");
        if (trucks.size() > 0) {
            PageInfo<Truck> pageInfo = new PageInfo<Truck>(trucks);
            List<Truck> rowInfo = pageInfo.getList();
            int total = (int) pageInfo.getTotal();
            JsonResult result = JsonResult.success();
            result.setTotal(total);
            result.setRows(rowInfo);
            return result;
        } else {
            return JsonResult.fail().add("va_msg", "所查询车辆不存在");
        }
    }

    /**
     * 根据车牌号检查车辆信息是否存在
     *
     * @param plateNumber
     * @return
     */
    @RequestMapping(value = "/checkTruckByPN", method = RequestMethod.GET)
    @ResponseBody
    public JsonResult checkTruckByPN(@RequestParam("plateNumber") String plateNumber) {
        //先判断车牌号的合法性
        String regx = "(^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1}$)";
        if (!plateNumber.matches(regx)) {
            return JsonResult.fail().add("va_msg", "请输入正确的车牌号码");
        }
        Truck truck = truckService.findByPlateNumber(plateNumber);
        if (truck == null) {
            return JsonResult.success();
        } else {
            return JsonResult.fail().add("va_msg", "该车辆为老客户");
        }
    }


    /**
     * 根据id查询
     *
     * @param id
     * @return
     */
    @GetMapping("/{id}")
    @ResponseBody
    public JsonResult getTruckById(@PathVariable("id") Integer id) {
        Truck truck = truckService.findById(id);
        return JsonResult.success().add("truck", truck);
    }

    /**
     * 根据车牌号获取车辆
     *
     * @param platenumber
     * @return
     */
    //@GetMapping("/getTruckByPN/{platenumber}")
    @RequestMapping(value = "/getTruckByPN", method = RequestMethod.GET)
    @ResponseBody
    public JsonResult getTruckByPN(@RequestParam(value = "platenumber", defaultValue = "") String platenumber) {
        Truck truck = truckService.findByPlateNumber(platenumber);
        if (truck == null) {
            return JsonResult.fail().add("va_msg", "所查询的车辆不存在");
        }else{
            return JsonResult.success().add("truck", truck);
        }
    }

    /**
     * 根据客户id统计车辆数量
     *
     * @param customerIds
     * @return
     */
    @GetMapping("/check/{customerIds}")
    //@RequestMapping(value = "/countByCustomerId",method = RequestMethod.GET)
    @ResponseBody
    public JsonResult checkByCustomerId(@PathVariable("customerIds") String customerIds) {
        List<Integer> list_ids = new ArrayList<Integer>();
        if (customerIds.contains("-")) {
            String[] arr_ids = customerIds.split("-");
            for (String arr_id : arr_ids) {
                int trucks = truckService.countByCustomer(Integer.parseInt(arr_id));
                if (trucks > 0) {
                    list_ids.add(Integer.parseInt(arr_id));
                }
            }
        } else {
            int trucks = truckService.countByCustomer(Integer.parseInt(customerIds));
            if (trucks > 0) {
                list_ids.add(Integer.parseInt(customerIds));
            }
        }
        if (list_ids.size() > 0) {
            return JsonResult.fail().add("va_msg", list_ids);
        } else {
            return JsonResult.success();
        }
    }

    /**
     * 查询所有车辆json
     * @return
     */
    @GetMapping("/getAllTrucks")
    @ResponseBody
    public JsonResult getAllTrucks() {
        List<Truck> trucks = truckService.findAll();
        return JsonResult.success().add("trucks", trucks);
    }


    //============================新增==============================

    /**
     * 新增车辆
     * 使用JSR303进行后端校验
     * 需导入hibernate-validator
     *
     * @param truck
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult save(@Valid Truck truck, BindingResult result) {
        if (result.hasErrors()) {
            Map<String, Object> map = new HashMap<String, Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return JsonResult.fail().add("failFileds", map);
        } else {
            truckService.insert(truck);
            return JsonResult.success();
        }
    }

    //============================删除=======================

    /**
     * 批量/单一删除方法
     * 批量：1-2-3
     * 单一：1
     *
     * @param truckIds
     * @return
     */
    @DeleteMapping("/{truckIds}")
    @ResponseBody
    public JsonResult delete(@PathVariable("truckIds") String truckIds) {
        if (truckIds.contains("-")) {
            List<Integer> list_truckIds = new ArrayList<Integer>();
            String[] arr_truckIds = truckIds.split("-");
            for (String arr_truckId : arr_truckIds) {
                list_truckIds.add(Integer.parseInt(arr_truckId));
            }
            truckService.deleteBatch(list_truckIds);
        } else {
            truckService.deleteById(Integer.parseInt(truckIds));
        }
        return JsonResult.success();
    }

    //==================================修改===================================

    /**
     * 更新车辆信息
     *
     * @param truck
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult update(Truck truck) {
        truckService.update(truck);
        return JsonResult.success();
    }
}
