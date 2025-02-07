//
//  ContentViewController.swift
//  App project
//
//  Created by FCI-2171 on 10/10/24.
//

import UIKit

class ContentViewController: UIViewController {
    
   var Backgroundimage = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Backgroundimage.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        Backgroundimage.image = UIImage(named: "Background image")
        view.addSubview(Backgroundimage)

    }
    

    
}
