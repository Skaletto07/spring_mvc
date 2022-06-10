package com.kostkin.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/employee")
public class MyController {


    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails() {
        return "ask-emp-details-view";
    }

    /*@RequestMapping("/showDetails")
    public String showEmpDetails(HttpServletRequest request, Model model) {
        String employeeName = request.getParameter("employeeName");
        employeeName = "Mr." + employeeName;
        model.addAttribute("empName", employeeName);
        return "show-emp-details-view";
    }*/
    @RequestMapping("/showDetails")
    public String showEmpDetails(@RequestParam("employeeName") String employeeName, Model model) {
        employeeName = "Mr." + employeeName;
        model.addAttribute("empName", employeeName);
        return "show-emp-details-view";
    }
}


