//
//  ContactsViewController.swift
//  Tab&NavDemo
//
//  Created by Khánh Linh on 30/06/2021.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableForContact: UITableView!
    
    var contactName: [String]!
    
    let searchController = UISearchController()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        tableForContact.dataSource = self
        contactName = ["A Pham Long", "A Phuong Nam", "AA Dad", "AA Mom", "Tien Tien", "Ba Ngoai", "Bo Dung", "Di Thuy", "Dat"]
        // Do any additional setup after loading the view.
    }
    

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact")
        cell?.textLabel?.text = contactName[indexPath.row]
        
        return cell!
    }
    
    

    


}
