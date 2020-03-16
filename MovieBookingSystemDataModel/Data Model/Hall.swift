//
//  Hall.swift
//  MovieBookingSystemDataModel
//
//  Created by shiva kumar on 14/3/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

class Hall:hallToMovieProtocol {
    
    // Properties
    var hallId:String?
    var hallName:String?
    var hallAddress: Address
    var shows:[Show]?
    var seats: [Seat]?
    weak var movie: Movie?
    
    // Initializer
    
    init(hallId: String?, hallName: String?, hallAddress: Address) {
        self.hallId = hallId
        self.hallName = hallName
        self.hallAddress = hallAddress
        
    }

    convenience init() {
        self.init(hallId: "PVR7", hallName: "PVR 7", hallAddress: Address())
    }
    
    // Public Methods
    
    public func getHall(_ hallId: String) -> Hall? {
        
        return Hall()
    }
    
    public func getHalls(_ cityId: CITY) -> [Hall]? {
        
       return [Hall()]
    }
    
    public func getHalls(_ movieId: String) -> [Hall]? {
        
       return [Hall()]
    }
    
    public func searchHall(_ searchString: String) -> [Hall]? {
       
        return [Hall()]
    }
}

class Address {
    var street: String?
    var city:CITY
    var zip: String
    
    init(street: String? = nil, city: CITY, zip: String) {
        self.city = city
        self.zip = zip
    }
    
    convenience init() {
        self.init(city:CITY.NOTAVAIABLE, zip:"NA")
    }
}
