  //
//  CustomCollectionViewCell.swift
//  RetoIcalia
//
//  Created by Gabriel Antonio on 05/12/16.
//  Copyright © 2016 Grabriel Antonio Hernández. All rights reserved.
//

import UIKit
//Clase genérica de nuestra celda.
class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        
    }
}
