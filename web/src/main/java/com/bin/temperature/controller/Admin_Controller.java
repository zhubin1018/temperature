package com.bin.temperature.controller;

import com.bin.temperature.bean.Admin;
import com.bin.temperature.bean.AjaxResult;
import com.bin.temperature.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class Admin_Controller {
    @Autowired
    private AdminService adminService;

    @ResponseBody
    @RequestMapping("/doAjaxLogin")
    public AjaxResult toMain(Admin admin, HttpSession session){
        System.out.println("==========================================");
        AjaxResult ajaxResult = new AjaxResult();
        Admin admin1 = adminService.validateAdmin(admin);
        if (admin1 != null){
            session.setAttribute("admin",admin1);
            ajaxResult.setSuccess(true);
        }else {
            ajaxResult.setSuccess(false);
        }
        return ajaxResult;
    }
}
