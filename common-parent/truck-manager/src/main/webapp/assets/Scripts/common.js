//校验信息显示
function show_validate_msg(ele, status, msg) {
    //清除当前元素的校验状态
    reset_ele(ele)
    //添加校验状态
    if ("success" == status) {
        $(ele).addClass("is-valid");
        $(ele).next("span").text(msg);
        $(ele).next("span").addClass("valid-feedback");
    } else if ("fail" == status) {
        $(ele).addClass("is-invalid");
        $(ele).next("span").text(msg);
        $(ele).next("span").addClass("invalid-feedback");
    }
}

//重置元素
function reset_ele(ele) {
    $(ele).removeClass("is-invalid is-valid");
    $(ele).next("span").text("");
    $(ele).next("span").removeClass("invalid-feedback valid-feedback");
}

//重置表单
function reset_form(ele) {
    //$(ele)[0].reset();
    $(ele).find("*").removeClass("is-invalid is-valid invalid-feedback valid-feedback");
    $(ele).find(".help-block").text("");
    $(ele).find("*").val("");
}