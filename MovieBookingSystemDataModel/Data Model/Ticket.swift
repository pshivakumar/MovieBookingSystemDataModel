//
//  Ticket.swift
//  MovieBookingSystemDataModel
//
//  Created by shiva kumar on 14/3/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

class Ticket {
    // Properties
    var ticketId:String?
    var ticketDetails: String?
    
    // Initializers
    
    init(ticketId:String?, ticketDetails: String?) {
        self.ticketId = ticketId
        self.ticketDetails = ticketDetails
    }
    
    convenience init() {
        self.init(ticketId:"ID1002", ticketDetails: "Frozen 2")
    }
    
    // Public methods
    
    public func bookTicket(showID: String?) -> RESERVESTATUS {
        
        return .NOTAVAILABLE
    }
    
    public func getTicketDetails(ticketId: String?) -> Ticket? {
        
        return Ticket()
    }
}
