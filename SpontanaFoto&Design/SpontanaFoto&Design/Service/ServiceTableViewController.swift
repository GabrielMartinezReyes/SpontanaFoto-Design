//
//  ServiceTableViewController.swift
//  SpontanaFoto&Design
//
//  Created by Gabriel Martinez on 2018-02-08.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class ServiceTableViewController: UITableViewController {
    
    var titleList = ["Fotografering","IOS Appar","Wordpress Sidor","Grafiskt Material" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.backgroundView = UIImageView(image: UIImage(named: "Background"))
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleList.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "serviceCell", for: indexPath) as! ServiceTableViewCell
        
      //  cell.textLabel?.text = titleList[indexPath.row]
        cell.cellTitle.text = titleList[indexPath.row]

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueDetails"{
            let dvc = segue.destination as! ServiceViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow{
                dvc.sentData = titleList[indexPath.row] as String
            }
        }
        
        
    }


}
