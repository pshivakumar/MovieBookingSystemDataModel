//
//  Movie.swift
//  MovieBookingSystemDataModel
//
//  Created by shiva kumar on 14/3/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

class Movie {
    
    // Properties
    var movieId:String?
    var movieName:String?
    var cityIds:[CITY]
    var halls:[Hall]?
    
    // Initializer
    
    init(movieId: String?, movieName: String?) {
        self.movieId = movieId
        self.movieName = movieName
        self.cityIds = []
    }
    
    convenience init() {
        self.init(movieId: "Fzn2-En", movieName: "Frozen 2")
        
    }
    
    // Public Methods
    
    public func getMovie(_ movieName: String) -> Movie? {
        
        return Movie()
    }
    
    public func getMovies(_ cityId: CITY) -> [Movie]? {
       return [Movie()]
    }
    
    public func searchMovies(_ searchString: String) -> [Movie]? {
       
        return [Movie()]
    }
}
