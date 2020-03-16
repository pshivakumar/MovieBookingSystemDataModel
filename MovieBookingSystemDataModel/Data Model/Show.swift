//
//  Show.swift
//  MovieBookingSystemDataModel
//
//  Created by shiva kumar on 14/3/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

enum SHOWSTATUS: Int {
    case NOTSTARTED
    case RUNNING
    case CANCELLED
    case NOTAVAILABLE
}

enum OCCUPANYSTATUS: Int {
    case HOUSEFUL
    case EMPTY
    case NOTAVAILABLE
}

class Show:showToHallProtocol {
    
    // Properties
    var showId: String?
    var showName: String?
    var showTime: Double?
    weak var hall: Hall?
    
    //Initializer
    init(showId: String?, showName: String?, showTime: Double?) {
        self.showId = showId
        self.showName = showName
        self.showTime = showTime
    }
    
    convenience init() {
        self.init(showId: "Show21-05", showName: "NightShow", showTime: 12345678980)
    }
    
    // Public Methods
    
    public func getShowStatus(_ showId:String) -> SHOWSTATUS {
        
        return .NOTAVAILABLE
    }
    
    public func getShowOccupancyStatus(_ showId:String) -> OCCUPANYSTATUS {
        
        return .NOTAVAILABLE
    }
    
}
