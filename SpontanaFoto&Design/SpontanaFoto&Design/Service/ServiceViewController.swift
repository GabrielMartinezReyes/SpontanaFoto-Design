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
        
        if self.navigationItem.title == "Fotografering" {
            
            detailImage.image = UIImage(named: "image3")
            detailDescription.text = "Vi kan erbjuda olika typ av porträtt till alla som behöver det. Vi kan även anpassa oss till platsen antingen på vårt eget hemma studio eller på valt plats. Priset för detta är 200kr per bild med möjlighet att välja de bästa bilder för att sedan skickas digital till er e-post."
        }
        
        if self.navigationItem.title == "IOS Appar" {
            
            detailImage.image = UIImage(named: "ios02")
            detailDescription.text = "Om du önskar synas på Appstore eller önskar dig en informativ app så har du kommit till rätt plats. Vi hjälper dig. Start priset från den här packet är från 15.000kr. Här är också inkluderat själva jobbet och Apples årsavgift som man betalar ifrån ett giltigt betalkort varje år för får synas på Apple Store."
        }
        
        if self.navigationItem.title == "Wordpress Sidor" {
            
            detailImage.image = UIImage(named: "wordpress02")
            detailDescription.text = "Vill du synas med din egen hemsidan skapat i den värld känd plattform WordPress. Vi hjälper med installation och allt du behöver för att komma igång.  Priset för den här packet har en start på från 3000kr. Här innehåller ett Startsidan med tre undersidor. Kontakta oss gärna om du vill veta mer."
        }
        
        if self.navigationItem.title == "Grafiskt Material" {
            
            detailImage.image = UIImage(named: "grafik03")
            detailDescription.text = "Behöver du hjälpa att synas på antingen Facebook, Instagram, Twitter eller Youtube. Du kommit till rätt plats vi hjälper dig med allt som du behöver för att komma igång. Kontakta oss gärna och berätta dina planer så kan vi komma överens om en offert."
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
