//
//  Flight.swift
//  ConcurrenyBootcamp
//
//  Created by Janani on 4/6/24.
//

import Foundation

class Flight {
    let company = ""
    var availableSeats = ["1A", "1B", "1C"]
    
    func getAvailablSeats() -> [String] {
        return availableSeats
    }
    
    func bookSeat() -> String {
        let bookedSeat = availableSeats.first ?? ""
        availableSeats.removeFirst()
        return bookedSeat
    }
}
