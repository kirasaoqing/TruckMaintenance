package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.Material;
import com.cx.truck.service.IMaterialService;
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
 * 材料操作控制器
 */
@RestController
@RequestMapping("material")
public class MaterialController {
    //创建一个日志对象
    private Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    protected IMaterialService materialService;

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
        List<Material> materials = materialService.findAll();
        PageInfo<Material> pageInfo = new PageInfo<>(materials);
        //取出查询结果
        List<Material> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;
    }

    /**
     * 根据车牌号模糊查询
     *
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
        List<Material> trucks = materialService.fuzzyByName("%" + name + "%");
        if (trucks.size() > 0) {
            PageInfo<Material> pageInfo = new PageInfo<Material>(trucks);
            List<Material> rowInfo = pageInfo.getList();
            int total = (int) pageInfo.getTotal();
            JsonResult result = JsonResult.success();
            result.setTotal(total);
            result.setRows(rowInfo);
            return result;
        } else {
            return JsonResult.fail().add("va_msg", "所查询材料不存在");
        }
    }

    /**
     * 根据单位id统计材料数量
     *
     * @param unitIds
     * @return
     */
    @GetMapping("/check/{unitIds}")
    @ResponseBody
    public JsonResult checkByUnitId(@PathVariable("unitIds") String unitIds) {
        List<Integer> list_ids = new ArrayList<Integer>();
        if (unitIds.contains("-")) {
            String[] arr_ids = unitIds.split("-");
            for (String arr_id : arr_ids) {
                int trucks = materialService.countByUnit(Integer.parseInt(arr_id));
                if (trucks > 0) {
                    list_ids.add(Integer.parseInt(arr_id));
                }
            }
        } else {
            int trucks = materialService.countByUnit(Integer.parseInt(unitIds));
            if (trucks > 0) {
                list_ids.add(Integer.parseInt(unitIds));
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
     *
     * @return
     */
    @GetMapping("/getAllMaterials")
    @ResponseBody
    public JsonResult getAllMaterials() {
        List<Material> materials = materialService.findAll();
        return JsonResult.success().add("materials", materials);
    }

    /**
     * 根据id查询
     *
     * @param id
     * @return
     */
    @GetMapping("/{id}")
    @ResponseBody
    public JsonResult getById(@PathVariable("id") Integer id) {
        Material material = materialService.findById(id);
        return JsonResult.success().add("material", material);
    }

    //================================新增===================================

    /**
     * 新增单位
     *
     * @param material
     * @param result
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult save(@Valid Material material, BindingResult result) {
        if (result.hasErrors()) {
            Map<String, Object> map = new HashMap<String, Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return JsonResult.fail().add("failFileds", map);
        } else {
            Integer materialId = materialService.insertSelective(material);
            return JsonResult.success().add("materialId", materialId);
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
            materialService.deleteBatch(list_unitIds);
        } else {
            materialService.deleteById(Integer.parseInt(ids));
        }
        return JsonResult.success();
    }

    //================================更新===================================

    /**
     * 更新单位信息
     *
     * @param material
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult update(Material material) {
        materialService.update(material);
        return JsonResult.success();
    }

}
