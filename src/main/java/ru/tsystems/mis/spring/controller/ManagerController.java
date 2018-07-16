package ru.tsystems.mis.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager")
public class ManagerController {

    @RequestMapping("/allContracts")
    public void allContracts(){}

    @RequestMapping(value = "/index")
    public String index() {
        return "manager/managerIndex";
    }
}
