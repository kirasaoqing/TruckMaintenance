package com.cx.truck.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static com.cx.truck.web.controller.base.BaseController.HOME;

@Controller
@RequestMapping(HOME)
public class HomeController {

    @RequestMapping(HOME)
    public String goHome(){
        return HOME;
    }

    @RequestMapping("worker")
    public String goWorker(){
        return "Basics/workerList";
    }

    @RequestMapping("truck")
    public String goTruck(){
        return "Basics/truckList";
    }

    @RequestMapping("customer")
    public String goCustomer(){
        return "Basics/customerList";
    }
}
