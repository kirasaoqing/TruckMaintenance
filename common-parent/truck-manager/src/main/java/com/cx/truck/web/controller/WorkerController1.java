package com.cx.truck.web.controller;


import com.cx.truck.model.Msg;
import com.cx.truck.model.Worker;
import com.cx.truck.service.IWorkerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//@Controller
//@RequestMapping("worker")
public class WorkerController1 {

    @Autowired
    private IWorkerService workerService;

    //==========================查询==============================
    //分页查询出所有
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public Msg getWorkersWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        PageHelper.startPage(pn, 6);
        List<Worker> workers = workerService.findAll();
        PageInfo page = new PageInfo(workers, 6);
        return Msg.success().add("pageInfo", page);
    }

    //身份证号唯一性校验
    @RequestMapping(value = "/checkWorkerByIdentity", method = RequestMethod.GET)
    @ResponseBody
    public Msg checkWorkerByIdentity(@RequestParam("identity") String identity) {
        //先判断车牌号的合法性
        String regx = "(^[1-9]\\d{5}(18|19|20)\\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$)";
        if (!identity.matches(regx)) {
            return Msg.fail().add("va_msg", "请输入正确的身份证号码");
        }
        Boolean b = workerService.findByIdentity(identity);
        if (b) {
            return Msg.success();
        } else {
            return Msg.fail().add("va_msg", "该员工已经存在");
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
    public Msg getWorkerById(@PathVariable("id") Integer id) {
        Worker worker = workerService.findById(id);
        return Msg.success().add("worker", worker);
    }

    /**
     * 根据姓名模糊搜索员工
     * @param pn
     * @param name
     * @return
     */
    @RequestMapping(value = "/getWorksByName",method = RequestMethod.GET)
    @ResponseBody
    public Msg getWorkersByName(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
                                    @RequestParam("name") String name) {
        PageHelper.startPage(pn, 6);
        List<Worker> workers = workerService.fuzzyByName(name);
        if (workers.size() > 0) {
            PageInfo page = new PageInfo(workers, 6);
            return Msg.success().add("pageInfo", page);
        } else {
            return Msg.fail().add("va_msg", "所查询员工不存在");
        }
    }

    //==========================新增==============================
    @RequestMapping(value = "/worker", method = RequestMethod.POST)
    @ResponseBody
    public Msg saveWorkers(@Valid Worker worker, BindingResult result) {
        if (result.hasErrors()) {
            Map<String, Object> map = new HashMap<String, Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return Msg.fail().add("failFileds", map);
        } else {
            workerService.insert(worker);
            return Msg.success();
        }
    }

    //===========================删除==============================

    /**
     * 批量/单一删除方法
     * 批量：1-2-3
     * 单一：1
     *
     * @param workerIds
     * @return
     */
    @RequestMapping(value = "/{workerIds}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteTruck(@PathVariable("workerIds") String workerIds) {
        if (workerIds.contains("-")) {
            List<Integer> list_workerIds = new ArrayList<Integer>();
            String[] arr_workerIds = workerIds.split("-");
            for (String arr_workerId : arr_workerIds) {
                list_workerIds.add(Integer.parseInt(arr_workerId));
            }
            workerService.deleteBatch(list_workerIds);
        } else {
            workerService.deleteById(Integer.parseInt(workerIds));
        }
        return Msg.success();
    }

    //==========================修改===================================

    /**
     * @param worker
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateWorker(Worker worker) {
        workerService.update(worker);
        return Msg.success();
    }
}
