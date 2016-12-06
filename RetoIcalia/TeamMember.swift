//
//  TeamMember.swift
//  RetoIcalia
//
//  Created by Gabriel Antonio on 05/12/16.
//  Copyright © 2016 Gabriel Antonio Hernández. All rights reserved.
//

import UIKit
//Clase con los atributos del usuario
class TeamMember: NSObject {
    var name: String!
    var title: String!
    var avatar: UIImage!
    
    public init(name: String, title: String, avatar: UIImage){
        self.name = name
        self.title = title
        self.avatar = avatar
    }

}
