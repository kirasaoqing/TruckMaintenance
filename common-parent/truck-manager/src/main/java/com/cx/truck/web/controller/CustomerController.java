package com.cx.truck.web.controller;

import com.cx.truck.model.Customer;
import com.cx.truck.model.Msg;
import com.cx.truck.service.ICustomerService;
import com.cx.truck.web.controller.base.BaseController;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.cx.truck.web.controller.base.BaseController.CUSTOMER;

/**
 * 客户操作控制器
 */
@Controller
@RequestMapping(CUSTOMER)
public class CustomerController extends BaseController<Customer> {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    protected ICustomerService customerService;

    /**
     * list方法返回json
     *
     * @param pn
     * @return
     */
    @RequestMapping(LIST)
    public @ResponseBody
    Msg getCustomersWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        logger.info("==================list customers, page from:" + pn + "====================");
        //这不是一个分页查询
        //List<Customer> customers = customerService.findAll();
        //引入PageHelper分页插件，在查询之前只需要调用
        PageHelper.startPage(pn, 6);
        //startPage后面紧跟的这个查询就是一个分页查询
        List<Customer> customers = customerService.findAll();
        //使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了
        //封装了详细的分页信息，连续显示5页
        PageInfo page = new PageInfo(customers, 6);
        return Msg.success().add("pageInfo", page);
    }


    /*直接跳转页面，使用Model返回PageInfo方法
    @RequestMapping(CUSTOMER + LIST)
    public String getCustomers(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
                               Model model) {
        //这不是一个分页查询
        //List<Customer> customers = customerService.findAll();
        //引入PageHelper分页插件，在查询之前只需要调用
        PageHelper.startPage(pn, 6);
        //startPage后面紧跟的这个查询就是一个分页查询
        List<Customer> customers = customerService.findAll();
        //使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了
        //封装了详细的分页信息，连续显示5页
        PageInfo page = new PageInfo(customers, 6);
        model.addAttribute("pageInfo", page);
        return CUSTOMER_PAGE + LIST;
    }*/

    /**
     * 跳转到客户单据
     *
     * @return
     */
    /*@RequestMapping(CUSTOMER)
    public String goCustomer() {
        return CUSTOMER_PAGE;
    }*/

    /**
     * 新增客户
     * 使用JSR303进行后端校验
     * 需导入hibernate-validator
     *
     * @param customer
     * @return
     */
    @RequestMapping(value = "/customer", method = RequestMethod.POST)
    @ResponseBody
    //@RequestMapping(ADD)
    public Msg saveCustomers(@Valid Customer customer, BindingResult result) {
        if (result.hasErrors()) {
            logger.info("==================add new customer fail:" + result.getFieldErrors() + "====================");
            Map<String, Object> map = new HashMap<String, Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return Msg.fail().add("failFileds", map);
        } else {
            logger.info("==================add new customer:" + customer + "====================");
            customerService.insert(customer);
            return Msg.success();
        }


    }

    /**
     * 根据名称查询客户是否存在
     *
     * @param name
     * @return
     */
    @RequestMapping(value = "/checkCustomerByName", method = RequestMethod.GET)
    @ResponseBody
    public Msg checkCustomerByName(@RequestParam("name") String name) {
        //先判断用户名是否合法
        String regx = "(^[a-zA-Z0-9_-]{3,16}$)|(^[\\u2E80-\\u9FFF]{2,5}$)";
        if (!name.matches(regx)) {
            return Msg.fail().add("va_msg", "用户名必须是2-5位中文或者6-16位英文和数字的组合");
        }
        boolean b = customerService.findByName(name);
        if (true == b) {
            return Msg.success();
        } else {
            return Msg.fail().add("va_msg", "用户名不可用");
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
    public Msg getCustomerById(@PathVariable("id") Integer id) {
        Customer customer = customerService.findById(id);
        return Msg.success().add("customer", customer);
    }

    /**
     * 如果是ajax-PUT形式的请求，封装的数据除了id=3001，其余=null
     * 问题：请求体有数据，对象封装不上
     * 原因：tomcat将请求中的数据，封装一个map，request.getParameter("name")就会中从这个map取值
     * SpringMVC封装POJO对象的时候，会把每个POJO中每个属性的值，request.getParamter("email")
     * Tomcat引发的血案：
     * PUT请求，请求体中的数据，request.getParameter("")拿不到
     * Tomcat一看是PUT，不会封装请求体中的数据为map，只有POST形式的请求才封装请求体为map
     * 解决方案：web.xml配置HttpPutFormContentFilter过滤器
     * <p>
     * 更新客户
     *
     * @param customer
     * @return
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateCustomer(Customer customer) {
        customerService.update(customer);
        return Msg.success();
    }

    /**
     * 批量/单一删除方法
     * 批量：1-2-3
     * 单一：1
     *
     * @param ids
     * @return
     */
    @RequestMapping(value = "/{ids}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteCustomer(@PathVariable("ids") String ids) {
        if (ids.contains("-")) {
            List<Integer> list_ids = new ArrayList<Integer>();
            String[] arr_ids = ids.split("-");
            for (String arr_id : arr_ids) {
                list_ids.add(Integer.parseInt(arr_id));
            }
            customerService.deleteBatch(list_ids);
        } else {
            customerService.deleteById(Integer.parseInt(ids));
        }

        return Msg.success();
    }

}
