//
//  SocialViewController.swift
//  SpontanaFoto&Design
//
//  Created by Gabriel Martinez on 2018-02-10.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    
    
    var sentData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = sentData
        
        if navigationItem.title == "Facebook"{
            let url = NSURL(string: "https://www.facebook.com/spontanfotodesign")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        if navigationItem.title == "LinkedIn"{
            let url = NSURL(string: "https://www.linkedin.com/in/gabriel-martinez-13340296")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        if navigationItem.title == "Youtube"{
            let url = NSURL(string: "https://www.youtube.com/channel/UCO6xJBviYxAVVTHRt0Njn1A?view_as=subscriber")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        if navigationItem.title == "WWW"{
            let url = NSURL(string: "http://spontanafotodesign.se")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        if navigationItem.title == "Instagram"{
            let url = NSURL(string: "https://www.instagram.com/spontana.foto.design")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        actInd.startAnimating()
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        actInd.stopAnimating()
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
