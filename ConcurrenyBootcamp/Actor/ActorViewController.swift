//
//  ActorViewController.swift
//  ConcurrenyBootcamp
//
//  Created by Janani on 4/6/24.
//

import UIKit

class ActorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let queue1 = DispatchQueue(label: "queue1")
        let queue2 = DispatchQueue(label: "queue2")
        
        let flight = Flight()
        
        queue1.async {
//            Task {
                let bookedSeat = flight.bookSeat()
                print("booked seat\(bookedSeat)")
//            }
        }
        
        queue2.async {
//            Task {
                let availableSeats = flight.availableSeats
                print("available seats\(availableSeats)")
//            }
        }
        // Do any additional setup after loading the view.
    }

//    @MainActor
//    To update in main thread, like updating UI

}


