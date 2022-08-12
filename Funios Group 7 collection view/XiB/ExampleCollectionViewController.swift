//
//  ExampleCollectionViewController.swift
//  Funios Group 7 collection view
//
//  Created by PT.Koanba on 11/08/22.
//

import UIKit

class ExampleCollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var items = [
        DummyColor(id: UUID(), buttonColor: .cyan, viewColor: .red),
        DummyColor(id: UUID(), buttonColor: .purple, viewColor: .blue),
        DummyColor(id: UUID(), buttonColor: .black, viewColor: .gray),
        DummyColor(id: UUID(), buttonColor: .cyan, viewColor: .red),
        DummyColor(id: UUID(), buttonColor: .purple, viewColor: .blue),
        DummyColor(id: UUID(), buttonColor: .black, viewColor: .gray),
        DummyColor(id: UUID(), buttonColor: .cyan, viewColor: .red),
        DummyColor(id: UUID(), buttonColor: .purple, viewColor: .blue),
        DummyColor(id: UUID(), buttonColor: .black, viewColor: .gray),
        DummyColor(id: UUID(), buttonColor: .cyan, viewColor: .red),
        DummyColor(id: UUID(), buttonColor: .purple, viewColor: .blue),
        DummyColor(id: UUID(), buttonColor: .black, viewColor: .gray),
        DummyColor(id: UUID(), buttonColor: .cyan, viewColor: .red),
        DummyColor(id: UUID(), buttonColor: .purple, viewColor: .blue),
        DummyColor(id: UUID(), buttonColor: .black, viewColor: .gray),
        DummyColor(id: UUID(), buttonColor: .cyan, viewColor: .red),
        DummyColor(id: UUID(), buttonColor: .purple, viewColor: .blue),
        DummyColor(id: UUID(), buttonColor: .black, viewColor: .gray),
        DummyColor(id: UUID(), buttonColor: .cyan, viewColor: .red),
        DummyColor(id: UUID(), buttonColor: .purple, viewColor: .blue),
        DummyColor(id: UUID(), buttonColor: .black, viewColor: .gray),
        DummyColor(id: UUID(), buttonColor: .cyan, viewColor: .red),
        DummyColor(id: UUID(), buttonColor: .purple, viewColor: .blue),
        DummyColor(id: UUID(), buttonColor: .black, viewColor: .gray),
        DummyColor(id: UUID(), buttonColor: .cyan, viewColor: .red),
        DummyColor(id: UUID(), buttonColor: .purple, viewColor: .blue),
        DummyColor(id: UUID(), buttonColor: .black, viewColor: .gray),
        DummyColor(id: UUID(),buttonColor: .green, viewColor: .darkText),
        DummyColor(id: UUID(), buttonColor: #colorLiteral(red: 1, green: 0.4078431373, blue: 0.6666666667, alpha: 1), viewColor: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), // #colorLiteral(
        DummyColor(id: UUID(), buttonColor: UIColor(
            red: 123.45,
            green: 234.4,
            blue: 345.5,
            alpha: 1), viewColor: .red),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
//        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CollectionCell")
    }
}


extension ExampleCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CustomCollectionViewCell
        
        let item = items[indexPath.row]
        
        cell.backgroundColor = item.viewColor
//        cell.button.tintColor = item.buttonColor
        
        cell.item = item
        cell.action = self
        cell.index = indexPath
        
        cell.onTapButton = { item, index in
            print("Do the action")
        }
        
        cell.backgroundColor = .gray
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            cell.backgroundColor = .red
        })
    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            cell.backgroundColor = .black
        })
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
//        self.present(vc, animated: true)
        print("Cell XiBnya ke klik")

    }
}

extension ExampleCollectionViewController: OnCellClick {
    
    func buttonTap(item: DummyColor, index: IndexPath) {
        items[index.row].buttonColor = .gray
        
        collectionView.reloadData()
    }
}
