//
//  Customer.swift
//  MovieBookingSystemDataModel
//
//  Created by shiva kumar on 14/3/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

class Customer {
    // Properties
    var customerId:String?
    var customerName:String?
    var tickets: [Ticket]?
    
    // Initializer
    
    init(customerId: String?, customerName: String?) {
        self.customerId = customerId
        self.customerName = customerName

    }

    convenience init() {
        self.init(customerId: nil, customerName: nil)
    }
    
    // Public Methods
    
    public func getMovies(_ cityId: CITY) -> [Movie]? {
        
        return [Movie()]
    }
    
    public func getMovieDetails(_ MovieId: String?) -> [Movie]? {
        
         return [Movie()]
    }
    
    public func buyTicket(_ movieId: String?) -> [Ticket]? {
        
        return [Ticket()]
    }
}

// Inheritance design pattern is used

class PremiumCustomer: Customer {
    // Properties
    var premiumType: String?
    var expiryDate: Double?
    
    // Initializer
    
    init(customerId: String?, customerName: String?, premiumType: String?, expiryDate: Double?) {
        super.init(customerId: customerId, customerName: customerName)
        self.premiumType = premiumType
        self.expiryDate = expiryDate
    }
      
}
