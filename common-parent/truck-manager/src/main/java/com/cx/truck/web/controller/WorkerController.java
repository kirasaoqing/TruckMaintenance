package com.cx.truck.web.controller;


import com.cx.truck.model.JsonResult;
import com.cx.truck.model.Msg;
import com.cx.truck.model.Worker;
import com.cx.truck.service.IWorkerService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
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

@Controller
@RequestMapping("worker")
public class WorkerController {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    private IWorkerService workerService;

    //==========================查询==============================

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
    public JsonResult list(int rows, int page) throws JsonProcessingException {
        //List查询要放到startPage下面
        PageHelper.startPage(page, rows);
        List<Worker> customers = workerService.findAll();
        PageInfo<Worker> pageInfo = new PageInfo<>(customers);
        //取出查询结果
        List<Worker> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;
    }

    /**
     * 根据客户名称模糊查询
     * @param name
     * @param rows
     * @param page
     * @return
     */
    @GetMapping("/list/{name}")
    @ResponseBody
    public JsonResult listByName(@PathVariable("name") String name,
                                 int rows, int page) {
        PageHelper.startPage(page, rows);
        List<Worker> workers = workerService.fuzzyByName("%" + name + "%");
        if (workers.size() > 0) {
            PageInfo<Worker> pageInfo = new PageInfo<Worker>(workers);
            List<Worker> rowInfo = pageInfo.getList();
            int total = (int) pageInfo.getTotal();
            JsonResult result = JsonResult.success();
            result.setTotal(total);
            result.setRows(rowInfo);
            return result;
        } else {
            return JsonResult.fail().add("va_msg","所查询员工不存在");
        }
    }

    /**
     * 身份证号唯一性校验
     * @param identity
     * @return
     */
    @RequestMapping(value = "/checkWorkerByIdentity", method = RequestMethod.GET)
    @ResponseBody
    public JsonResult checkWorkerByIdentity(@RequestParam("identity") String identity) {
        //先判断车牌号的合法性
        String regx = "(^[1-9]\\d{5}(18|19|20)\\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\\d{3}[0-9Xx]$)";
        if (!identity.matches(regx)) {
            return JsonResult.fail().add("va_msg", "请输入正确的身份证号码");
        }
        Boolean b = workerService.findByIdentity(identity);
        if (b) {
            return JsonResult.success();
        } else {
            return JsonResult.fail().add("va_msg", "该员工已经存在");
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
    public JsonResult getWorkerById(@PathVariable("id") Integer id) {
        Worker worker = workerService.findById(id);
        return JsonResult.success().add("worker", worker);
    }

    //==========================新增==============================

    /**
     * 新增
     * @param worker
     * @param result
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult save(@Valid Worker worker, BindingResult result) {
        if (result.hasErrors()) {
            Map<String, Object> map = new HashMap<String, Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return JsonResult.fail().add("failFileds", map);
        } else {
            workerService.insert(worker);
            return JsonResult.success();
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
    @DeleteMapping("/{workerIds}")
    @ResponseBody
    public JsonResult delete(@PathVariable("workerIds") String workerIds) {
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
        return JsonResult.success();
    }

    //==========================修改===================================

    /**
     * @param worker
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult update(Worker worker) {
        workerService.update(worker);
        return JsonResult.success();
    }
}
