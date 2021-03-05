/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Role;
import com.hotel.repository.RoleRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Nhi
 */
@Service
public class RoleService implements RoleServiceIF{
    
    @Autowired
    RoleRepository roleRepository;

    @Override
    public List<Role> getAllRole() {
        return (List<Role>) roleRepository.findAll();
    }

    @Override
    public Role getRoleByRoleName(String roleName) {
       return roleRepository.findByRoleName(roleName);
    }
    
}
