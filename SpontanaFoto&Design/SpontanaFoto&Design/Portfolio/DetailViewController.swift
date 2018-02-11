//
//  DetailViewController.swift
//  SpontanaFoto&Design
//
//  Created by Gabriel Martinez on 2018-02-11.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgImage: UIImageView!
    
    
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Portfolio"
        imgImage.image = image
        
        // Do any additional setup after loading the view.
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
