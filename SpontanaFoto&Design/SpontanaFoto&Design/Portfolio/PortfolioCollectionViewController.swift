//
//  PortfolioCollectionViewController.swift
//  SpontanaFoto&Design
//
//  Created by Gabriel Martinez on 2018-02-08.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PortfolioCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    
    
    
    var imageList = ["image1","image2","image3","image4","image5","image6","image7","image8","image9","image10","image11","image12"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        collectionView?.backgroundView = UIImageView(image: UIImage(named: "Background"))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PortfolioCollectionViewCell
        
        cell.cellImage.image = UIImage(named: imageList[indexPath.row])
        
        return cell
        
    }
    
    // fixar ordning på elememnt för mindre skärmar så som Iphone SE och Iphone 5/5s.
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenSize : CGRect = UIScreen.main.bounds
        
        var widthCell = 0
        var heightCell = 0
        
        if screenSize.width == 320 {
            
            widthCell = 130
            heightCell = 130
            
        }
      
        if screenSize.width == 375 {
            
            widthCell = 160
            heightCell = 160
            
        }
        
        if screenSize.width == 414 {
            
            widthCell = 180
            heightCell = 180
            
        }
        
        if screenSize.width == 768 {
            
            widthCell = 230
            heightCell = 230
            
        }
        
        if screenSize.width == 834 {
            
            widthCell = 250
            heightCell = 250
            
        }
        
        if screenSize.width == 1024 {
            
            widthCell = 310
            heightCell = 310
            
        }
        
        return CGSize(width: widthCell, height: heightCell)
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let mainStoryboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let desVC = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        desVC.image = UIImage(named: imageList[indexPath.row])!
        
        self.navigationController?.pushViewController(desVC, animated: true)
        
    }

}
