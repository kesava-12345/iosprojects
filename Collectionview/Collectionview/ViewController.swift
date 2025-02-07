//
//  ViewController.swift
//  Collectionview
//
//  Created by FCI-2171 on 29/10/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource , UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var Collectionview: UICollectionView!
    @IBOutlet weak var Firstcollectionview: UICollectionView!
    
    @IBOutlet weak var SecondCollectionView: UICollectionView!
    
    
    @IBOutlet weak var ThirdCollectionView: UICollectionView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
      
        
                Collectionview.dataSource = self
                Collectionview.delegate = self
                Firstcollectionview.dataSource = self
                Firstcollectionview.delegate = self
                SecondCollectionView.dataSource = self
                SecondCollectionView.delegate = self
                ThirdCollectionView.dataSource = self
                ThirdCollectionView.delegate = self
                
        
        
        
        
        Collectionview.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Newcell" )
        Firstcollectionview.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Newcell" )
        SecondCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Newcell" )
        ThirdCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Newcell" )
        
        
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: CollectionViewCell
                
                if collectionView == Collectionview {
                    cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Newcell", for: indexPath) as! CollectionViewCell
                    cell.Imageview.image = UIImage(named: "Bamboo plant")
                    
                } else if collectionView == Firstcollectionview {
                    cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Newcell", for: indexPath) as! CollectionViewCell
                    cell.Imageview.image = UIImage(named: "manali")
                } else if collectionView == SecondCollectionView {
                    cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Newcell", for: indexPath) as! CollectionViewCell
                    cell.Imageview.image = UIImage(named: "Image 1")
                } else if collectionView == ThirdCollectionView {
                    cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Newcell", for: indexPath) as! CollectionViewCell
                    cell.Imageview.image = UIImage(named: "Image")
                } else {
                    return UICollectionViewCell()
                }
                
               
                
                
                return cell
        
    }
    
 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
           return 10
       }

}

