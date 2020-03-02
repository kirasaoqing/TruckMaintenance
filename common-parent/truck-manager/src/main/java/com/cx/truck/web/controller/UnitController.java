package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.Unit;
import com.cx.truck.service.IUnitService;
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

/**
 * 单位操作控制器
 */
@RestController
@RequestMapping("unit")
public class UnitController {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    protected IUnitService unitService;

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
        //List查询要放到startPage下面
        PageHelper.startPage(page, rows);
        List<Unit> units = unitService.findAll();
        PageInfo<Unit> pageInfo = new PageInfo<>(units);
        //取出查询结果
        List<Unit> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;
    }

    //================================新增===================================
    /**
     * 新增单位
     * @param unit
     * @param result
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult save(@Valid Unit unit, BindingResult result) {
        if (result.hasErrors()) {
            Map<String, Object> map = new HashMap<String, Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return JsonResult.fail().add("failFileds", map);
        } else {
            unitService.insert(unit);
            return JsonResult.success();
        }
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
    @ResponseBody
    public JsonResult delete(@PathVariable("ids") String ids) {
        if (ids.contains("-")) {
            List<Integer> list_unitIds = new ArrayList<Integer>();
            String[] arr_unitIds = ids.split("-");
            for (String arr_unitId : arr_unitIds) {
                list_unitIds.add(Integer.parseInt(arr_unitId));
            }
            unitService.deleteBatch(list_unitIds);
        } else {
            unitService.deleteById(Integer.parseInt(ids));
        }
        return JsonResult.success();
    }

    /**
     * 查询所有单位
     * @return
     */
    @GetMapping("/getAllUnits")
    @ResponseBody
    public JsonResult getAllUnits() {
        List<Unit> units = unitService.findAll();
        return JsonResult.success().add("units", units);
    }

    //================================更新===================================
    /**
     * 更新单位信息
     *
     * @param unit
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult update(Unit unit) {
        unitService.update(unit);
        return JsonResult.success();
    }
}
