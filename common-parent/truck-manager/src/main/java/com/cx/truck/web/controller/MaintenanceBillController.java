package com.cx.truck.web.controller;

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

import java.util.List;

@Controller
@RequestMapping("maintenancebill")
public class MaintenanceBillController extends BaseController<MaintenanceBill> {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController.class);

    @Autowired
    private IMaintenanceBillService maintenanceBillService;

    //================================查询===================================

    /**
     * list方法返回json
     *
     * @param pn
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public @ResponseBody
    Msg getMTBillsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
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

    //==============================新增==============================

    /**
     * 新增
     * @param maintenanceBill
     * @return
     */
    @RequestMapping(value = "/maintenancebill",method = RequestMethod.POST)
    @ResponseBody
    public Msg saveBills(MaintenanceBill maintenanceBill){
        //maintenanceBillService.insert(maintenanceBill);
        Integer id = maintenanceBillService.insertSelective(maintenanceBill);
        return Msg.success().add("billid",id);
    }
}
