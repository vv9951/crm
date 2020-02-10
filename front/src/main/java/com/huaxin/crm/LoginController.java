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
public class LoginController {

    @Resource
    CustomerServiceIf customerService;


    @GetMapping("/")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("/login")
    public String login(String customerId, String pwd, HttpServletResponse response){
        Customer c = customerService.findByCustomerId(customerId);

        if(c==null || !c.getPwd().equals(pwd)) {
            return "login";
        }

        Cookie cookie = new Cookie("MyLogin",""+c.getUuid()+System.currentTimeMillis());
        response.addCookie(cookie);

        return "forward:/toLogin";
    }
}
