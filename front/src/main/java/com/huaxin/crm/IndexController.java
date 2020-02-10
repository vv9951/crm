package com.huaxin.crm;

import com.huaxin.crm.customermgr.entity.Customer;
import com.huaxin.crm.customermgr.service.CustomerServiceIf;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/")
public class IndexController {

    @Resource
    CustomerServiceIf customerService;


    @GetMapping("/toIndex")
    public String toIndex(){
        return "index";
    }


}
