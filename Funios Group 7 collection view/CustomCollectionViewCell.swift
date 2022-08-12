//
//  CustomCollectionViewCell.swift
//  Funios Group 7 collection view
//
//  Created by PT.Koanba on 11/08/22.
//

import Foundation
import UIKit

protocol OnCellClick {
    func buttonTap(item: DummyColor, index: IndexPath)
}

class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var view: UIView!
    
    var item: DummyColor!
    var index: IndexPath!
    var action: OnCellClick?
    
    var onTapButton: ((_ item: DummyColor,_ index: IndexPath) -> Void)?
    
    @IBAction
    func onButtonTap(_ sender: UIButton){
//        action?.buttonTap(item: item, index: index)
//        onTapButton?(item, index)
    }
}
