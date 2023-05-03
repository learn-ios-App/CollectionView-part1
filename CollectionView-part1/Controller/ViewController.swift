//
//  ViewController.swift
//  CollectionView-part1
//
//  Created by 渡邊魁優 on 2023/05/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var layout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //CellのファイルとCellのIDを紐づける
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionCell")
        layout.estimatedItemSize = CGSize(width: 100, height: 100)

        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        cell.label.text = "\(indexPath.row)"
        cell.imageView.image = UIImage(systemName: "heart")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
}
