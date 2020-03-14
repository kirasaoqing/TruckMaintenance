package com.cx.truck.web.controller;

import com.cx.truck.model.JsonResult;
import com.cx.truck.model.MaintenanceBill;
import com.cx.truck.model.MaintenanceItem;
import com.cx.truck.model.MaintenanceMaterial;
import com.cx.truck.service.IMaintenanceBillService;
import com.cx.truck.service.IMaintenanceItemService;
import com.cx.truck.service.IMaintenanceMaterialService;
import com.cx.truck.web.controller.base.BaseController;
import com.cx.truck.web.utils.JxlsUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.web.bind.annotation.*;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.*;

@RestController
@RequestMapping("maintenancebill")
public class MaintenanceBillController extends BaseController<MaintenanceBill> {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(TruckController1.class);

    @Autowired
    private IMaintenanceBillService maintenanceBillService;
    @Autowired
    private IMaintenanceItemService maintenanceItemService;
    @Autowired
    private IMaintenanceMaterialService maintenanceMaterialService;

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
    public JsonResult list(@RequestParam(value = "page", defaultValue = "1") Integer page,
                           @RequestParam(value = "rows", defaultValue = "6") Integer rows) throws JsonProcessingException {
        //List查询要放到startPage下面
        PageHelper.startPage(page, rows);
        List<MaintenanceBill> maintenanceBills = maintenanceBillService.findAll();
        PageInfo<MaintenanceBill> pageInfo = new PageInfo<>(maintenanceBills);
        //取出查询结果
        List<MaintenanceBill> rowInfo = pageInfo.getList();
        int total = (int) pageInfo.getTotal();

        JsonResult result = JsonResult.success();
        result.setTotal(total);
        result.setRows(rowInfo);

        return result;
    }

    /**
     * 根据条件查询
     *
     * @param page
     * @param rows
     * @param beginDate
     * @param endDate
     * @param truckId
     * @return
     */
    @GetMapping("/list")
    @ResponseBody
    public JsonResult listByQueryParams(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                        @RequestParam(value = "rows", defaultValue = "6") Integer rows,
                                        @RequestParam(value = "beginDate", defaultValue = "2000年01月01日") String beginDate,
                                        @RequestParam(value = "endDate", defaultValue = "2888年01月01日") String endDate,
                                        @RequestParam(value = "truckId", defaultValue = "0") Integer truckId) {
        //引入PageHelper分页插件，在查询之前只需要调用
        PageHelper.startPage(page, rows);
        //startPage后面紧跟的这个查询就是一个分页查询
        List<MaintenanceBill> maintenanceBills = maintenanceBillService.findByCondition(beginDate, endDate, truckId);
        if (maintenanceBills.size() > 0) {
            PageInfo<MaintenanceBill> pageInfo = new PageInfo<MaintenanceBill>(maintenanceBills);
            List<MaintenanceBill> rowInfo = pageInfo.getList();
            int total = (int) pageInfo.getTotal();
            JsonResult result = JsonResult.success();
            result.setTotal(total);
            result.setRows(rowInfo);
            return result;
        } else {
            return JsonResult.fail().add("va_msg", "所查询维修单不存在");
        }
    }

    /**
     * 根据id获取维修单
     *
     * @return
     */
    @GetMapping("/{id}")
    @ResponseBody
    public JsonResult getBillById(@PathVariable("id") Integer id) {
        MaintenanceBill maintenanceBill = maintenanceBillService.findById(id);
        return JsonResult.success().add("bill", maintenanceBill);
    }


    /**
     * 根据客户id统计车辆数量
     *
     * @param truckIds
     * @return
     */
    @GetMapping("/check/{truckIds}")
    @ResponseBody
    public JsonResult checkByTruckIds(@PathVariable("truckIds") String truckIds) {
        List<Integer> list_ids = new ArrayList<Integer>();
        if (truckIds.contains("-")) {
            String[] arr_ids = truckIds.split("-");
            for (String arr_id : arr_ids) {
                int trucks = maintenanceBillService.countByTruck(Integer.parseInt(arr_id));
                if (trucks > 0) {
                    list_ids.add(Integer.parseInt(arr_id));
                }
            }
        } else {
            int trucks = maintenanceBillService.countByTruck(Integer.parseInt(truckIds));
            if (trucks > 0) {
                list_ids.add(Integer.parseInt(truckIds));
            }
        }
        if (list_ids.size() > 0) {
            return JsonResult.fail().add("va_msg", list_ids);
        } else {
            return JsonResult.success();
        }
    }

    /**
     * 根据id获取维修单
     *
     * @return
     */
    @GetMapping("/counts/{date}")
    @ResponseBody
    public JsonResult counts(@PathVariable("date") String date) {
        HashMap<String, Integer> truckCounts = maintenanceBillService.getTruckCounts(date);
        return JsonResult.success().add("truckCounts", truckCounts);
    }

    //==============================新增==============================

    /**
     * 新增
     *
     * @param maintenanceBill
     * @return
     */
    @PostMapping
    @ResponseBody
    public JsonResult save(MaintenanceBill maintenanceBill) {
        //maintenanceBillService.insert(maintenanceBill);
        Integer id = maintenanceBillService.insertSelective(maintenanceBill);
        return JsonResult.success().add("billid", id);
    }

    //==============================删除===============================

    /**
     * 根据维修单id单个或批量删除
     *
     * @param billIds
     * @return
     */
    @RequestMapping(value = "/{billIds}", method = RequestMethod.DELETE)
    @ResponseBody
    public JsonResult delete(@PathVariable("billIds") String billIds) {
        if (billIds.contains("-")) {
            List<Integer> list_billIds = new ArrayList<Integer>();
            String[] arr_billIds = billIds.split("-");
            for (String arr_billId : arr_billIds) {
                list_billIds.add(Integer.parseInt(arr_billId));
            }
            maintenanceBillService.deleteBatch(list_billIds);
        } else {
            maintenanceBillService.deleteById(Integer.parseInt(billIds));
        }
        return JsonResult.success();
    }

    //===============================更新===============================

    /**
     * 更新维修单
     *
     * @param maintenanceBill
     * @return
     */
    @PutMapping
    @ResponseBody
    public JsonResult update(MaintenanceBill maintenanceBill) {
        maintenanceBillService.update(maintenanceBill);
        return JsonResult.success();
    }


    //==============================EXCEL导出============================
    @GetMapping("/exportBillXls/{id}")
    public JsonResult exportBillXls(@PathVariable("id") Integer id) throws Exception {
        //通过Spring中的PropertiesLoaderUtils工具类进行获取xls.properties中的属性
        Properties properties = new Properties();
        properties = PropertiesLoaderUtils.loadAllProperties("xls.properties");
        //System.out.println(new String(properties.getProperty("warshipType.2").getBytes("iso-8859-1"), "gbk"));
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        // 模板路径和输出流
        //String templatePath = "/Users/kira/Desktop/template.xls";
        String templatePath = properties.getProperty("templatePath");
        OutputStream os = new FileOutputStream(properties.getProperty("outPath"));
        // 定义一个Map，往里面放入要在模板中显示数据
        Map<String, Object> model = new HashMap<String, Object>();
        MaintenanceBill bill = maintenanceBillService.findById(id);
        model.put("id", bill.getId());
        model.put("platenumber", bill.getTruck().getPlatenumber());
        model.put("customer", bill.getTruck().getCustomer().getName());
        model.put("enterdate", dateFormat.format(bill.getEnterdate()));
        model.put("vehicleType", bill.getTruck().getVehicleType().getName());


        List<Map> imList = new ArrayList<Map>();

        List<MaintenanceItem> items = maintenanceItemService.findByBillId(id);
        List<MaintenanceMaterial> materials = maintenanceMaterialService.findByBillId(id);
        int size = items.size() > materials.size() ? items.size() : materials.size();
        for (int i = 1; i < size + 1; i++) {
            Map<String, Object> itemsAndMates = new HashMap<String, Object>();
            if (items.size() >= i) {
                MaintenanceItem item = items.get(i - 1);
                itemsAndMates.put("item", item.getItem());
                itemsAndMates.put("itemfees", item.getItemfees());
            } else if (items.size() < i) {
                itemsAndMates.put("item", "-");
                itemsAndMates.put("itemfees", "-");
            }
            if (materials.size() >= i) {
                MaintenanceMaterial material = materials.get(i - 1);
                itemsAndMates.put("material", material.getMaterial().getName());
                itemsAndMates.put("unit", material.getMaterial().getUnit().getName());
                itemsAndMates.put("quantity", material.getQuantity());
                itemsAndMates.put("price", material.getPrice());
                itemsAndMates.put("amount", material.getAmount());
            } else if (materials.size() < i) {
                itemsAndMates.put("material", "-");
                itemsAndMates.put("unit", "-");
                itemsAndMates.put("quantity", "-");
                itemsAndMates.put("price", "-");
                itemsAndMates.put("amount", "-");
            }
            imList.add(itemsAndMates);
        }

        /*model.put("items", items);
        model.put("materials", materials);*/
        model.put("im", imList);

        //调用之前写的工具类，传入模板路径，输出流，和装有数据Map
        JxlsUtils.exportExcel(templatePath, os, model);
        os.close();
        return JsonResult.success();
    }
}
