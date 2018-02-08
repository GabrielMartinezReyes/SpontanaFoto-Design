//
//  ServiceViewController.swift
//  SpontanaFoto&Design
//
//  Created by Gabriel Martinez on 2018-02-08.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class ServiceViewController: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var detailDescription: UITextView!
    
    var sentData: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        detailContent()
    }
    
    func detailContent(){
        
        
        self.navigationItem.title = sentData
        
        if self.navigationItem.title == "Service 1" {
            
            detailImage.image = UIImage(named: "image1")
            detailDescription.text = "Här finns beskrivning på Service 1"
        }
        
        if self.navigationItem.title == "Service 2" {
            
            detailImage.image = UIImage(named: "image2")
            detailDescription.text = "Här finns beskrivning på Service 2"
        }
        
        if self.navigationItem.title == "Service 3" {
            
            detailImage.image = UIImage(named: "image3")
            detailDescription.text = "Här finns beskrivning på Service 3"
        }
        
        if self.navigationItem.title == "Service 4" {
            
            detailImage.image = UIImage(named: "image4")
            detailDescription.text = "Här finns beskrivning på Service 4"
        }
        
        if self.navigationItem.title == "Service 5" {
            
            detailImage.image = UIImage(named: "image5")
            detailDescription.text = "Här finns beskrivning på Service 5"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
