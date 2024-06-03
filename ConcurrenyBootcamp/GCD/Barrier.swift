//
//  Barrier.swift
//  ConcurrenyBootcamp
//
//  Created by Janani on 3/6/24.
//

import Foundation

class BarrierBootCamp {
    
    let barrierQueue = DispatchQueue(label: "com.queue.Serial", attributes: .concurrent)
    let semaphore = DispatchSemaphore(value: 1) // allow only one thread to access at a time
    
    func callAsyncWithBarrier() {
        barrierQueue.async(flags : .barrier) {
            // When multiple queue request same object, it will hold for sometime
        }
    }
    
    func callSemaphore() {
        barrierQueue.async {
            //multiple calls
            self.callApiWithSemaphore()
        }
    }
    
    func callApiWithSemaphore() {
        semaphore.wait()
        //call api {
            //once done
            semaphore.signal()
        //}
    }
}
