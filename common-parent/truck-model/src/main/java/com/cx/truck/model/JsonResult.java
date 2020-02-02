package com.cx.truck.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 通用的json返回类
 */
public class JsonResult<T> {

    private int code;//状态码 100-成功 200-失败

    private String msg;//提示信息

    //用户要返回给浏览器的数据
    private Map<String,Object> extend = new HashMap<String,Object>();

    //private String errorMsg;//错误信息

    private int total;//返回的数据条数

    private List<T> rows;//返回的数据

    public static JsonResult success(){
        JsonResult result = new JsonResult();
        result.setCode(100);
        result.setMsg("处理成功！");
        return result;
    }

    public static JsonResult fail(){
        JsonResult result = new JsonResult();
        result.setCode(200);
        result.setMsg("处理失败！");
        return result;
    }

    public JsonResult add(String key,Object value){
        this.getExtend().put(key,value);
        return this;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    /*public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }*/

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }

    public Map<String, Object> getExtend() {
        return extend;
    }

    public void setExtend(Map<String, Object> extend) {
        this.extend = extend;
    }
}
