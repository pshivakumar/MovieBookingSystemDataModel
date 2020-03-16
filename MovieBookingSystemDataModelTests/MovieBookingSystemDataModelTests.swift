//
//  MovieBookingSystemDataModelTests.swift
//  MovieBookingSystemDataModelTests
//
//  Created by shiva kumar on 14/3/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import XCTest
@testable import MovieBookingSystemDataModel

class MovieBookingSystemDataModelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBookTicket() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let customer = Customer(customerId: "myname@example.com", customerName: "Apple Seed")
        
        let movie = Movie().getMovie("Frozen 2")
        movie?.cityIds = [.BANGALORE, .DELHI]
        
        let show = Show()
        let seat = Seat()
        let hall = Hall()
        hall.shows = [show]
        hall.seats = [seat]
        movie?.halls = [hall]
        hall.movie = movie!

        let ticket = customer.buyTicket(movie?.movieId)
        print(ticket?.first?.ticketId! as Any)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
