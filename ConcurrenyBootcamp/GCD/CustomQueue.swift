//
//  CustomQueue.swift
//  ConcurrenyBootcamp
//
//  Created by Janani on 2/6/24.
//

import Foundation

class CustomQueue {
    let serialQueue = DispatchQueue(label: "com.queue.Serial")
    // com.queue.Concurrent
    // attribute : concurrent
    
    func doSyncTaskInSerialQueue() {
        for i in 1...3 {
            serialQueue.sync {
                if Thread.isMainThread {
                    print("Running in main thread")
                }
                else {
                    print("Running in other thread")
                }
                guard let imageURL = URL(string: "https://www.google.com/search?q=search&sca_esv=1f95f9c1dc547f89&hl=en&sxsrf=ADLYWIKXtArLnxKoukVhpBmETAbcz6-dOQ:1717308873913&source=hp&biw=1440&bih=745&ei=yQ1cZvHhNYuq4-EP0su-gAU&iflsig=AL9hbdgAAAAAZlwb2ea-5ZESdjjRjx4qqQCGkO8fqvzL&ved=0ahUKEwix6paLoryGAxUL1TgGHdKlD1AQ4dUDCAc&uact=5&oq=search&gs_lp=EgNpbWciBnNlYXJjaDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgARIpRNQ0QZY3hFwAXgAkAEAmAFaoAGPAqoBATa4AQPIAQD4AQGKAgtnd3Mtd2l6LWltZ5gCB6ACtQKoAgrCAgcQIxgnGOoCwgIEECMYJ8ICDhAAGIAEGLEDGIMBGIoFwgIIEAAYgAQYsQPCAgsQABiABBixAxiKBZgDCpIHATegB-8g&sclient=img&udm=2#vhid=Lg77Mh7ulrBcYM&vssid=mosaic") else {return}
                let _ = try! Data(contentsOf: imageURL)
                print("\(i) finished downloading")
            }
        }
    }
    
    public func calFunction() {
        doSyncTaskInSerialQueue()
        
        serialQueue.async {
        for i in 10...13 {
        print(i)
        }
        }
        
        print("end")
    }
    
    
   
    
}
