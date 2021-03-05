/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Employee;
import com.hotel.entity.Role;
import com.hotel.repository.SecurityRepositoryIF;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author Nhi
 */
@Service
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    SecurityRepositoryIF securityRepositoryIF;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        Employee employee = securityRepositoryIF.findByUsername(username);
       
        if (employee == null) {
            return null;
        }

        List<Role> roleName =  employee.getListRole();
        Set<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();
        // Chuyen kieu Role entity thanh Role cua Spring Security

        for (Role role : roleName) {
            GrantedAuthority author = new SimpleGrantedAuthority(role.getRoleName());
            authorities.add(author);
        }
        
       
        return new User(employee.getUsername(), employee.getPassword(), 
            true, true, true, true, authorities);
        
        
    }

}
