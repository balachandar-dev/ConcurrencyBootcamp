//
//  GCB.swift
//  ConcurrenyBootcamp
//
//  Created by Janani on 1/6/24.
//

import Foundation

public class GCDBasics {
    var counter = 1

    public func basicDispatchAsycnQueue() {
        DispatchQueue.main.async {
        for i in 0...3 {
            self.counter = i
            print(self.counter)
        }
        }

        for i in 4...6 {
           counter = i
            print(counter)
        }

        DispatchQueue.main.async {
        for i in 7...9 {
            self.counter = i
            print(self.counter)
        }
        }
    }
}


/*
 Output
 4
 5
 6
 0
 1
 2
 3
 7
 8
 9
 */
