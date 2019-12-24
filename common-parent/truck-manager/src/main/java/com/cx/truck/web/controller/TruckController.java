package com.cx.truck.web.controller;

import com.cx.truck.model.Customer;
import com.cx.truck.model.Msg;
import com.cx.truck.model.Truck;
import com.cx.truck.service.ITruckService;
import com.cx.truck.service.impl.TruckServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequestMapping("truck")
public class TruckController {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController.class);

    @Autowired
    private ITruckService truckService;

    //================================查询===================================

    @RequestMapping(value = "/getAllTrucks", method = RequestMethod.GET)
    @ResponseBody
    public Msg getAllTrucks() {
        List<Truck> trucks = truckService.findAll();
        return Msg.success().add("trucks",trucks);
    }

    /**
     * list方法返回json
     *
     * @param pn
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public @ResponseBody
    Msg getCustomersWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        logger.info("==================list truckInfo, page from:" + pn + "====================");
        //这不是一个分页查询
        //List<Customer> customers = customerService.findAll();
        //引入PageHelper分页插件，在查询之前只需要调用
        PageHelper.startPage(pn, 6);
        //startPage后面紧跟的这个查询就是一个分页查询
        List<Truck> trucks = truckService.findAll();
        //使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了
        //封装了详细的分页信息，连续显示5页
        PageInfo page = new PageInfo(trucks, 6);
        return Msg.success().add("pageInfo", page);
    }

    /**
     * 根据车牌号检查车辆信息是否存在
     *
     * @param plateNumber
     * @return
     */
    @RequestMapping(value = "/checkTruckByPN", method = RequestMethod.GET)
    @ResponseBody
    public Msg checkTruckByPN(@RequestParam("plateNumber") String plateNumber) {
        //先判断车牌号的合法性
        String regx = "(^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1}$)";
        if (!plateNumber.matches(regx)) {
            return Msg.fail().add("va_msg", "请输入正确的车牌号码");
        }
        Truck truck = truckService.findByPlateNumber(plateNumber);
        if (truck == null) {
            return Msg.success();
        } else {
            return Msg.fail().add("va_msg", "该车辆为老客户");
        }
    }

    /**
     * 根据车牌号模糊查询
     *
     * @param plateNumber
     * @param pn
     * @return
     */
    @RequestMapping(value = "/getTrucksByPN", method = RequestMethod.GET)
    @ResponseBody
    public Msg getTrucksByPN(@RequestParam("plateNumber") String plateNumber,
                             @RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        PageHelper.startPage(pn, 6);
        List<Truck> trucks = truckService.fuzzyByName(plateNumber);
        if (trucks.size() > 0) {
            PageInfo page = new PageInfo(trucks, 6);
            return Msg.success().add("pageInfo", page);
        } else {
            return Msg.fail().add("va_msg", "所查询车辆不存在");
        }
    }

    /**
     * 根据id查询
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Msg getTruckById(@PathVariable("id") Integer id) {
        Truck truck = truckService.findById(id);
        return Msg.success().add("truck", truck);
    }

    @RequestMapping(value = "/getTruckByPN",method = RequestMethod.GET)
    @ResponseBody
    public Msg getTruckByPN(@RequestParam("platenumber")String platenumber){
        Truck truck = truckService.findByPlateNumber(platenumber);
        return Msg.success().add("truck",truck);
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
    @RequestMapping(value = "/truck", method = RequestMethod.POST)
    @ResponseBody
    //@RequestMapping(ADD)
    public Msg saveTrucks(@Valid Truck truck, BindingResult result) {
        if (result.hasErrors()) {
            Map<String, Object> map = new HashMap<String, Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return Msg.fail().add("failFileds", map);
        } else {
            truckService.insert(truck);
            return Msg.success();
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
    @RequestMapping(value = "/{truckIds}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteTruck(@PathVariable("truckIds") String truckIds) {
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
        return Msg.success();
    }

    //==================================修改===================================

    /**
     * 更新车辆信息
     *
     * @param truck
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateCustomer(Truck truck) {
        truckService.update(truck);
        return Msg.success();
    }

}
