/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Invoice;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */

@Service
public interface InvoiceServiceIF {
    public Invoice save(Invoice invoice);
    public void deleteInvoice(int bookingId);
}
