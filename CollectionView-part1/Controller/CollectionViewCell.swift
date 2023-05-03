//
//  CollectionViewCell.swift
//  CollectionView-part1
//
//  Created by 渡邊魁優 on 2023/05/02.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .cyan
    }

}
