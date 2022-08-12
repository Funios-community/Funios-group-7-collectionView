//
//  LifeCycleViewController.swift
//  Funios Group 7 collection view
//
//  Created by PT.Koanba on 12/08/22.
//

import UIKit
//struct DummyColor {
//    let id: UUID
//    var buttonColor: UIColor
//    var viewColor: UIColor
//}
class LifeCycleViewController: UIViewController {

    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    var angka: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        angka += 1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.backgroundColor = .red
        angka += 1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.backgroundColor = .black
        self.loading.stopAnimating()
        angka += 1
        
        print("Lifecycle \(angka)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}
