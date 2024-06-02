//
//  QualityOfService.swift
//  ConcurrenyBootcamp
//
//  Created by Janani on 1/6/24.
//

import Foundation


func checkQoS() {
    //3
    DispatchQueue.global(qos: .background).async {
        for i in 0...10 {
            print(i)
        }
    }

    //1
    DispatchQueue.global(qos: .userInteractive).async {
        for i in 11...21 {
            print(i)
        }
    }
    
    //2
    DispatchQueue.global(qos: .userInitiated).async {
        for i in 22...31 {
            print(i)
        }
    }
}
