//
//  KontaktOssViewController.swift
//  SpontanaFoto&Design
//
//  Created by Gabriel Martinez on 2018-02-09.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit
import MapKit
class KontaktOssViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    
    @IBOutlet weak var adressBtn: UIButton!
    
    @IBOutlet weak var ringOssBtn: UIButton!
    
    @IBOutlet weak var epostBtn: UIButton!
    
    @IBOutlet weak var linkBtn: UIButton!
    
    var latitude = 56.044123
    var longitude = 12.695043
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        adressBtn.layer.cornerRadius = 5
        ringOssBtn.layer.cornerRadius = 5
        epostBtn.layer.cornerRadius = 5
        linkBtn.layer.cornerRadius = 5
        
        //56.044123, 12.695043
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        
        mapView.setRegion(region, animated: true)
        
        
        let pinLocation : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let pinAnn = MKPointAnnotation()
        
        pinAnn.coordinate = pinLocation
        pinAnn.title = "Spontana foto & design"
        pinAnn.subtitle = "Helsingborg Sweden"
        self.mapView.addAnnotation(pinAnn)
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
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

    @IBAction func directions(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!, options: [:], completionHandler: nil)

        
        
    }
    
    @IBAction func callUs(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "tel://+46707414673")!, options: [:], completionHandler: nil)
    }
    
    
    
    
    
    
    
    
    
    
}
