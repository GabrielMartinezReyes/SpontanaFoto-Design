//
//  EpostViewController.swift
//  SpontanaFoto&Design
//
//  Created by Gabriel Martinez on 2018-02-10.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit
import MessageUI
class EpostViewController: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate {

    
    @IBOutlet weak var namnField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var messageField: UITextView!
    
    @IBOutlet weak var sendBtn: UIButton!
    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        sendBtn.layer.cornerRadius = 5
        
        self.navigationItem.title = "Mejla Oss"
        
        
        
        
        
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
    
    
    @IBAction func dismissKeyBoard(_ sender: Any) {
        
        self.resignFirstResponder()
        
        
    }
    
    
    @IBAction func sendBtnPressed(_ sender: Any) {
        
        // Skicka mail funktion
        
        let mc : MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        let recipients = ["gabriel.martinez.reyes@gmail.com"]
        mc.setToRecipients(recipients)
        mc.setSubject(namnField.text! + " - Spontana foto & design")
        mc.setMessageBody("""
                            Namn: \(namnField.text!)
                            E-post: \(emailField.text!)
                            Message: \(messageField.text!)
                            """, isHTML: false)
        self.present(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
       
       
        self.dismiss(animated: true, completion: nil)
    
    }
    
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n"{
            textView.resignFirstResponder()
            return false
        }
        
        return true
        
        
        
    }
    
    
    
    

}
