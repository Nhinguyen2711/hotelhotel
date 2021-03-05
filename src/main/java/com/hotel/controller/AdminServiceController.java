/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.controller;

import com.hotel.entity.Services;
import com.hotel.service.ServiceService;
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
public class AdminServiceController {

    @Autowired
    ServiceService serviceService;
    
    @GetMapping(value = "/ListService")
    public String ListService(HttpServletRequest request, Model model) {
        List<Services> servicess = serviceService.getAllService();
        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        PagedListHolder pagedListHolder = new PagedListHolder(servicess);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(10);
        model.addAttribute("pagedListService", pagedListHolder);
        return "AdminListService";
    }
    
    @GetMapping(value = "/formService")
    public String formService(Model model) {
        Services service = new Services();
        model.addAttribute("service", service);
        return "AdminFormService";
    }
    
    @PostMapping(value = "addService")
    public String addService(@ModelAttribute("service") @Valid Services service, BindingResult result) {
        if(result.hasErrors()){
        return "AdminFormService";
        }
        serviceService.saveService(service);
        return "redirect:/admin/ListService";
    }
    
    @GetMapping("updateService")
    public String updateService(@RequestParam("serviceId") int serviceId, Model model) {
        Services service = serviceService.getService(serviceId);
        model.addAttribute("service", service);
        return "AdminFormService";
    }
    
    @GetMapping(value = "deleteService")
    public String deleteService(@RequestParam("serviceId") int serviceId) {
        serviceService.deleteService(serviceId);
        return "redirect:/admin/ListService";
    }
    
}
