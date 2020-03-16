//
//  Seat.swift
//  MovieBookingSystemDataModel
//
//  Created by shiva kumar on 14/3/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

enum RESERVESTATUS: Int {
    case SUCCESS
    case FAILURE
    case NOTAVAILABLE
}

class Seat:seatToHallProtocol {
  
    // Properties
    var seatId:String?
    var seatType: String?
    var isOccupied: Bool
    weak var hall: Hall?
    
    // Initializers
    
    init(rowNum: Character?, seatNum: Int?, seatType: String?, isOccupied: Bool) {
        self.seatId = seatInfo().getSeatId(rowNum: rowNum, seatNum: seatNum)
        self.seatType = seatType
        self.isOccupied = isOccupied
    }
    
    convenience init() {
        self.init(rowNum: "A", seatNum: 5, seatType: "Premium", isOccupied: false)
    }
    
    // Public methods
    
    public func reserveSeat(seatInfo: seatInfo?) -> RESERVESTATUS {
        
        return .NOTAVAILABLE
    }
}

class seatInfo {
    var rowNum: Character?
    var seatNum: Int?
    
    init(rowNum: Character?, seatNum: Int?) {
        self.rowNum = rowNum
        self.seatNum = seatNum
    }
    
    convenience init() {
        self.init(rowNum: nil, seatNum: nil)
    }
    
    // Public Method
    
    public func getSeatId(rowNum: Character?, seatNum: Int?) -> String? {
        guard let rnum = rowNum, let snum = seatNum else {
           return nil
        }
        return String(rnum) + String(snum)
    }
}
