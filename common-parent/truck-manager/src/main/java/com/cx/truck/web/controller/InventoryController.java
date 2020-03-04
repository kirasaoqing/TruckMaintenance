package com.cx.truck.web.controller;

import com.cx.truck.model.Inventory;
import com.cx.truck.model.JsonResult;
import com.cx.truck.service.IInventoryService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("inventory")
public class InventoryController {
    @Autowired
    private IInventoryService inventoryService;

    //============================查询============================

    /**
     * 根据物料id查询出库存信息
     *
     * @param materialId
     * @return
     */
    @GetMapping("/list/{materialId}")
    @ResponseBody
    public JsonResult listByName(@PathVariable("materialId") Integer materialId) {
        List<Inventory> inventorys = inventoryService.findByMaterial(materialId);
        if (inventorys.size() > 0) {
            return JsonResult.success().add("inventory", inventorys.get(0));
        } else {
            return JsonResult.fail().add("va_msg", "所查询材料不存在");
        }
    }

    /**
     * 查询库存
     * @param
     * @return
     */
    @GetMapping("/inventory")
    @ResponseBody
    public JsonResult getInventory(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                   @RequestParam(value = "rows", defaultValue = "10") Integer rows,
                                   @RequestParam(value = "materialId",defaultValue = "0")Integer materialId) {
        //List查询要放到startPage下面
        PageHelper.startPage(page, rows);
        List<Map<String,Object>> inventory = inventoryService.getInventory(materialId);
        PageInfo<Map<String,Object>> pageInfo = new PageInfo<>(inventory);
        //取出查询结果
        List<Map<String,Object>> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;
    }


    //===========================新增=============================

    /**
     * @param inventory
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult save(Inventory inventory) {
        inventoryService.insertSelective(inventory);
        return JsonResult.success();
    }

    //================================更新=========================

    /**
     * 更新库存信息
     *
     * @param inventory
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult update(Inventory inventory) {
        inventoryService.update(inventory);
        return JsonResult.success();
    }
}
