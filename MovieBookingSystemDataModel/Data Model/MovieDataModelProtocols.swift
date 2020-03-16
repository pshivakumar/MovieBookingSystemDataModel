//
//  MovieDataModelProtocols.swift
//  MovieBookingSystemDataModel
//
//  Created by shiva kumar on 15/3/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

protocol hallToMovieProtocol: class {
    var movie: Movie? { get set }
}


protocol showToHallProtocol: class {
    var hall: Hall? { get set }
}

protocol seatToHallProtocol: class {
    var hall: Hall? { get set }
}
