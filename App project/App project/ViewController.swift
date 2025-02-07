//
//  ViewController.swift
//  App project
//
//  Created by FCI-2171 on 07/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    var Backgroundimage = UIImageView()
    
    
    var SigninButton = UIButton()
    var AccountButton = UIButton()
    
    var Tittlelabel = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        Backgroundimage.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        Backgroundimage.image = UIImage(named: "Background image")
        view.addSubview(Backgroundimage)
        
        Tittlelabel.frame = CGRect(x: self.view.frame.minX + 30, y: self.view.frame.maxY / 4 , width: self.view.frame.width - 60, height: 100)
        Tittlelabel.text = "The Best app for your plants"
        Tittlelabel.textColor = .white
        Tittlelabel.textAlignment = .left
        Tittlelabel.numberOfLines = 3
        Tittlelabel.font = UIFont.systemFont(ofSize: 45)
        Tittlelabel.font = .boldSystemFont(ofSize: 100)
        Tittlelabel.font = .italicSystemFont(ofSize: 30)
        Tittlelabel.font = .preferredFont(forTextStyle:.largeTitle)
        Tittlelabel.contentMode = .scaleAspectFill
        Tittlelabel.layer.masksToBounds = true
        view.addSubview(Tittlelabel)
        
        
        SigninButton.frame = CGRect(x: self.view.frame.minX + 50, y: self.view.frame.maxY / 1.5, width: self.view.frame.width - 100, height: 40)
        SigninButton.setTitle("Sign In", for: .normal)
        SigninButton.setTitleColor(.black, for: .normal)
        SigninButton.backgroundColor = .white
        SigninButton.layer.borderWidth = 3
        SigninButton.layer.borderColor = .init(red: 10, green: 10, blue: 10, alpha: 1)
        SigninButton.layer.cornerRadius = 15
        SigninButton.layer.masksToBounds = true
        SigninButton.contentMode = .scaleAspectFill
        SigninButton.addTarget(self, action: #selector(ButtonTapped), for: .touchUpInside)
        view.addSubview(SigninButton)
        
        
        AccountButton.frame = CGRect(x: self.view.frame.minX + 60, y: self.SigninButton.frame.minY + 50, width: self.view.frame.width - 120, height: 30)
        AccountButton.setTitle("Create on account", for: .normal)
        AccountButton.setTitleColor(.white, for: .normal)
        //AccountButton.font = .boldSystemFont(ofSize: 30)
        AccountButton.layer.masksToBounds = true
        AccountButton.contentMode = .scaleToFill
        AccountButton.addTarget(self, action: #selector(AccountTapped), for: .touchUpInside)
        view.addSubview(AccountButton)
        
    }

    @objc func ButtonTapped(){
        
        
        let Viewcontroller = (UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginpageViewController")as?LoginpageViewController)!
        self.navigationController?.pushViewController(Viewcontroller, animated: true)
        
        
    }
    
    
    @objc func AccountTapped(){
        
        let Viewcontroller1 = (UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "RegisterpageViewController")as? RegisterpageViewController)!
        self.navigationController?.pushViewController(Viewcontroller1, animated: true)
        
        
    }

        
    


}

