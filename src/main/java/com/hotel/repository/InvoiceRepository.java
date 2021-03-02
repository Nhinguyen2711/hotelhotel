/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.repository;

import com.hotel.entity.Invoice;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Administrator
 */
@Repository
public interface InvoiceRepository extends CrudRepository<Invoice, Integer>{
    @Modifying
@Transactional
    @Query(value = "delete from invoice where bookingid =?1",nativeQuery = true)
    public void deleteInvoice(@Param("bookingId") int bookingId);
    
}
