//
//  Payment.swift
//  MovieBookingSystemDataModel
//
//  Created by shiva kumar on 14/3/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

enum PAYMENTSTATUS: String {
    case SUCCESS
    case FAILURE
    
}

// Inteface design pattern is used

protocol PaymentCompliance {
    func validatePayment() -> PAYMENTSTATUS
}

class Payment {
    //Properties
    var ticketId:String?
    var customer: Customer?
    var paymentInfo: String?
    
    // Initializers
    
    init(ticketId:String?, customer: Customer?, paymentInfo: String?) {
        self.ticketId = ticketId
        self.customer = customer
        self.paymentInfo = paymentInfo
    }
    
    convenience init() {
        self.init(ticketId:nil, customer: nil, paymentInfo: nil)
    }
    
    // Public methods
    
    public func makePayment(ticketId:String?, customer: Customer?, paymentInfo: String?) -> PAYMENTSTATUS {
        
        return .SUCCESS
    }
    
}

extension Payment: PaymentCompliance {
    
    func validatePayment() -> PAYMENTSTATUS {
        print("Payment:PaymentCompliance - Payment validation is done")
        return PAYMENTSTATUS.SUCCESS
    }
}
