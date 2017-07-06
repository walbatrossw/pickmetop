package com.cafe24.pickmetop.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/company")
public class CompanyController {

    @RequestMapping(value = "/info/create", method = RequestMethod.GET)
    public String create() {
        return "/company/create";
    }

}
