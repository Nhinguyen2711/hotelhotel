/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.controller;

import com.hotel.entity.Employee;
import com.hotel.entity.Role;
import com.hotel.service.EmployeeService;
import com.hotel.service.RoleService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Nhi
 */
@Controller
@RequestMapping("/admin")
public class AdminUserController {

    @Autowired
    EmployeeService employeeService;

    @Autowired
    RoleService roleService;

    @PostMapping(value = "addEmployee")
    public String addEmployee(@ModelAttribute("employee") @Valid Employee employee, BindingResult result) {
        if (result.hasErrors()) {
            return "AdminFormUser";
        }
        String roleName = employee.getRoleName();
        Role role = roleService.getRoleByRoleName(roleName);
        List<Role> roles = new ArrayList<>();
        roles.add(role);
        employee.setListRole(roles);
        employeeService.saveEmployee(employee);
        return "redirect:/admin/ListEmployee";
    }

    @GetMapping(value = "ListEmployee")
    public String listEmployee(HttpServletRequest request, Model model) {
        List<Employee> employees = employeeService.getAllEmployee();
        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        PagedListHolder pagedListHolder = new PagedListHolder(employees);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(10);
        model.addAttribute("pagedListEmployee", pagedListHolder);
        return "AdminListUser";
    }

    @GetMapping(value = "formEmployee")
    public String formEmployee(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "AdminFormUser";
    }

    @GetMapping(value = "updateEmployee")
    public String updateEmployee(@RequestParam("empId") int empId, Model model) {
        Employee employee = employeeService.getEmployee(empId);
        List<Role> roles = employee.getListRole();
        
        for(Role r: roles){
        employee.setRoleName(r.getRoleName());
        }

        model.addAttribute("employee", employee);
        return "AdminFormUser";
    }

    @GetMapping(value = "deleteEmployee")
    public String deleteEmployee(@RequestParam("empId") int empId) {
        employeeService.deleteEmployee(empId);
        return "redirect:/admin/ListEmployee";
    }

}
