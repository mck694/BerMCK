//
//  LatestVC.swift
//  BerNews
//
//  Created by evuser on 01/10/18.
//  Copyright © 2018 evuser. All rights reserved.
//

import UIKit

class LatestVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LatestCell
        cell.textLabel?.text = "ChildTwoVC - - \(indexPath.row)"
        return cell
    }

  

}
