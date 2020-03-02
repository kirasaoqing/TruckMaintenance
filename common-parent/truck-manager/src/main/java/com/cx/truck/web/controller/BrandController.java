package com.cx.truck.web.controller;

import com.cx.truck.model.Brand;
import com.cx.truck.model.JsonResult;
import com.cx.truck.service.IBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * 品牌控制器
 */
@RestController
@RequestMapping("brand")
public class BrandController {

    @Autowired
    private IBrandService brandService;

    //============================查询============================

    /**
     * 返回全部brand的json
     *
     * @return
     */
    @GetMapping
    @ResponseBody
    public JsonResult getAllVehicleTypes() {
        List<Brand> brands = brandService.findAll();
        return JsonResult.success().add("brands", brands);
    }

    //===========================新增=============================
    /**
     *
     * @param brand
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult save(Brand brand) {
        brandService.insertSelective(brand);
        return JsonResult.success();
    }

    //===========================删除============================
    /**
     *
     * @param ids
     * @return
     */
    @DeleteMapping("/{ids}")
    @ResponseBody
    public JsonResult delete(@PathVariable("ids") String ids) {
        if (ids.contains("-")) {
            List<Integer> list = new ArrayList<Integer>();
            String[] arr_ids = ids.split("-");
            for (String arr_id : arr_ids) {
                list.add(Integer.parseInt(arr_id));
            }
            brandService.deleteBatch(list);
        } else {
            brandService.deleteById(Integer.parseInt(ids));
        }
        return JsonResult.success();
    }
}
