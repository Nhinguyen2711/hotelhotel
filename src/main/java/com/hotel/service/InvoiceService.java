/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Invoice;
import com.hotel.repository.InvoiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class InvoiceService implements InvoiceServiceIF{

    @Autowired
    InvoiceRepository invoiceRepository;
    
    @Override
    public Invoice save(Invoice invoice) {
        return invoiceRepository.save(invoice);
    }

    @Override
    public void deleteInvoice(int bookingId) {
    invoiceRepository.deleteInvoice(bookingId);
    }
    
}
