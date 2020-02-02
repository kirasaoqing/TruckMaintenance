package com.cx.truck.web.controller;

import com.cx.truck.model.Customer;
import com.cx.truck.model.JsonResult;
import com.cx.truck.service.ICustomerService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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

/**
 * 客户操作控制器
 */
@RestController
@RequestMapping("customer")
public class CustomerController {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    protected ICustomerService customerService;

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
    public JsonResult list(int rows, int page) throws JsonProcessingException {
        //userList查询要放到startPage下面
        PageHelper.startPage(page, rows);
        List<Customer> customers = customerService.findAll();
        PageInfo<Customer> pageInfo = new PageInfo<>(customers);
        //取出查询结果
        List<Customer> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        //fastjson转换为json数据
        /*JSONObject result = new JSONObject();
        result.put("rows",rows);
        result.put("total",total);
        System.out.println(result.toJSONString());
        //map形式
        ObjectMapper mapper = new ObjectMapper();
        Map<String, Object> map = new HashMap<>();
        map.put("total", total);
        map.put("rows", rowInfo);*/

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;
        //return mapper.writeValueAsString(map);
    }

    /**
     * 根据客户名称模糊查询
     * @param name
     * @param rows
     * @param page
     * @return
     */
    @GetMapping("/{name}")
    @ResponseBody
    public JsonResult listByName(@PathVariable("name") String name,
                                 int rows, int page) {
        PageHelper.startPage(page, rows);
        List<Customer> customers = customerService.fuzzyByName("%" + name + "%");
        if (customers.size() > 0) {
            PageInfo<Customer> pageInfo = new PageInfo<Customer>(customers);
            List<Customer> rowInfo = pageInfo.getList();
            int total = (int) pageInfo.getTotal();
            JsonResult result = JsonResult.success();
            result.setTotal(total);
            result.setRows(rowInfo);
            return result;
        } else {
            return JsonResult.fail().add("va_msg","所查询客户不存在");
        }
    }

    //================================新增===================================
    /**
     * 使用JSR303进行后端校验，校验通过保存
     * @param customer
     * @param result
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult save(@Valid Customer customer, BindingResult result){
        if (result.hasErrors()) {
            logger.info("==================add new customer fail:" + result.getFieldErrors() + "====================");
            Map<String, Object> map = new HashMap<String, Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return JsonResult.fail().add("failFileds", map);
        } else {
            logger.info("==================add new customer:" + customer + "====================");
            customerService.insert(customer);
            return JsonResult.success();
        }
    }

    //================================更新===================================

    /**
     * 更新
     * @param customer
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult update(Customer customer) {
        customerService.update(customer);
        return JsonResult.success();
    }

    //================================删除===================================
    /**
     * 批量/单一删除方法
     * 批量：1-2-3
     * 单一：1
     *
     * @param ids
     * @return
     */
    @DeleteMapping("/{ids}")
    //@RequestMapping(value = "/{ids}", method = RequestMethod.DELETE)
    @ResponseBody
    public JsonResult delete(@PathVariable("ids") String ids) {
        int isSuccess = 0;
        if (ids.contains("-")) {
            List<Integer> list_ids = new ArrayList<Integer>();
            String[] arr_ids = ids.split("-");
            for (String arr_id : arr_ids) {
                list_ids.add(Integer.parseInt(arr_id));
            }
            isSuccess = customerService.deleteBatch(list_ids);
        } else {
            isSuccess = customerService.deleteById(Integer.parseInt(ids));
        }
        if(isSuccess == 1){
            return JsonResult.success();
        }else{
            return JsonResult.fail();
        }
    }

    //================================查询===================================


}
