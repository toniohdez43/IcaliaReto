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
    
    //Funcion llamada para mostrar la informacion de cada usuario en una celda
    func setMembers(user: TeamMember){
        name.text = user.name
        title.text = user.title
        photo.image = user.avatar
        
    }
    override func awakeFromNib() {
        
    }
}
