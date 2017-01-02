//
//  ViewController.swift
//  RetoIcalia
//
//  Created by Gabriel Antonio on 05/12/16.
//  Copyright © 2016 Gabriel Antonio Hernández. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Arreglo de usuarios
    lazy var users: [TeamMember] = [
    TeamMember(name: "Melissa de la Garza", title: "Happiness Manager", avatar: UIImage(named:"il-user")!),
    TeamMember(name: "Abraham Kuri", title: "CEO", avatar: UIImage(named:"il-user")!),
    TeamMember(name: "Antonio Hernández", title: "Mobile Dev", avatar: UIImage(named:"il-user")!),
    TeamMember(name: "Daniel Lozano", title: "Mobile Dev", avatar: UIImage(named:"il-user")!)
    ]
    //Variables iniciales, utilizadas para el acomodo correcto de las celdas
    let mWidth = UIScreen.main.bounds.width*3/8
    let mHeight = UIScreen.main.bounds.height*3/8
    let reuseIdentifier = "icaliaCell"
    
    let sectionInsets = UIEdgeInsets(top: 50, left: UIScreen.main.bounds.width/16, bottom: 10, right: UIScreen.main.bounds.width/16)
    
    //IBOutlet de collection view
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
}


// MARK: - UICollectionViewDataSource
extension ViewController : UICollectionViewDataSource{
    //1
   private func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    
        return 1  }
    
    //2
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(section)
        return users.count
    }
    
    //3
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("entre")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCollectionViewCell
        cell.setMembers(user: users[indexPath.row])
        // Configure the cell
        return cell
    }
    
    
    
    
}

// MARK: - UICollectionViewDelegate
extension ViewController : UICollectionViewDelegate{
    
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        let alert = UIAlertController(title: "Bienvenido \(users[indexPath.row].name!)", message: "Icalia significa guerrero en Nahuatl", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
// MARK: - UICollectionViewDelegateFlowLayout
extension ViewController : UICollectionViewDelegateFlowLayout {
    //Especificamos tamaños de celdas de acuerdo al dispositivo
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: mWidth, height: mWidth)
    }
    
   //Generamos insets de acuerdo al tamaño de la pantalla
    public func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
}

