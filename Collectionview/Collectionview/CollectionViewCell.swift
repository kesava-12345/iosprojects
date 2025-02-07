//
//  CollectionViewCell.swift
//  Collectionview
//
//  Created by FCI-2171 on 29/10/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var Mainview: UIView!
    
    @IBOutlet weak var Imageview: UIImageView!
    
    @IBOutlet weak var Label: UILabel!
    
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        Label.text = "Bangalore"
        Label.textColor = .black
        
        
        

    }

}
