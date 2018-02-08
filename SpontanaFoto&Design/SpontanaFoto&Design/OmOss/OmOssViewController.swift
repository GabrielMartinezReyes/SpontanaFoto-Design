//
//  OmOssViewController.swift
//  SpontanaFoto&Design
//
//  Created by Gabriel Martinez on 2018-02-08.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class OmOssViewController: UIViewController {

    @IBOutlet weak var kontaktOssbtn: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kontaktOssbtn.layer.cornerRadius = 5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    
    @IBAction func kontaktOssBtnPressed(_ sender: Any) {
        
        self.tabBarController?.selectedIndex = 4
        
    }
    

   
}
