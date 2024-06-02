//
//  ViewController.swift
//  ConcurrenyBootcamp
//
//  Created by Janani on 1/6/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gcd = GCDBasics()
        gcd.basicDispatchAsycnQueue()
        // Do any additional setup after loading the view.
    }
}

