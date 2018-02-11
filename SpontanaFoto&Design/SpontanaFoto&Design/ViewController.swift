//
//  ViewController.swift
//  SpontanaFoto&Design
//
//  Created by Gabriel Martinez on 2018-02-08.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var servicebtn1: UIButton!
    
    @IBOutlet weak var portfoliobtn2: UIButton!
    
    @IBOutlet weak var omOssbtn3: UIButton!
    
    @IBOutlet weak var kontaktaOssbtn4: UIButton!
    
    @IBOutlet weak var socialalankarbtn5: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cornerRadius()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
     
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func cornerRadius(){
        
        servicebtn1.layer.cornerRadius = 5
        portfoliobtn2.layer.cornerRadius = 5
        omOssbtn3.layer.cornerRadius = 5
        kontaktaOssbtn4.layer.cornerRadius = 5
        socialalankarbtn5.layer.cornerRadius = 5
        
    }
    
    @IBAction func serviceBtnPressed(_ sender: Any) {
        self.tabBarController?.selectedIndex = 2
    }
    
    
    @IBAction func portfolioBtnPressed(_ sender: Any) {
        self.tabBarController?.selectedIndex = 3
    }
    
    @IBAction func omOssBtnPressed(_ sender: Any) {
        self.tabBarController?.selectedIndex = 1
    }
    
    
    @IBAction func kontaktaOssBtnPressed(_ sender: Any) {
        self.tabBarController?.selectedIndex = 4
    }
    
    
    
    

}

