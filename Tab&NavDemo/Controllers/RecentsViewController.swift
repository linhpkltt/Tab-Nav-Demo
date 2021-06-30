//
//  RecentsViewController.swift
//  Tab&NavDemo
//
//  Created by Khánh Linh on 30/06/2021.
//

import UIKit

class RecentsViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var recentsTableView: UITableView!
    
    var recentsName: [String]!
    var recentsDay: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recentsTableView.dataSource = self
        recentsName = ["AA Mom", "AA Dad", "A Pham Long", "AA Bro", "Khanh", "Nhi"]
        recentsDay = ["Today", "Yesterday", "Moday", "Thurday", "Monday", "Yesterday"]
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recentsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recent")
        cell?.textLabel?.text = recentsName[indexPath.row]
        cell?.detailTextLabel?.text = recentsDay[indexPath.row]
        return cell!
    }
    


    


}
