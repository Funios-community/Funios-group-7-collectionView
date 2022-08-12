//
//  AnotherViewController.swift
//  Funios Group 7 collection view
//
//  Created by PT.Koanba on 12/08/22.
//

import UIKit

class AnotherViewController: UIViewController {

    
    var angka: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        [LifeCycle]
//        
//        [LifeCycle, Another]
//        
//        [LifeCycle]
//        
//        [LifeCycle, Another]
        
        angka += 1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.backgroundColor = .red
        angka += 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.backgroundColor = .green
        angka += 1
        
        print("Another \(angka)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}
