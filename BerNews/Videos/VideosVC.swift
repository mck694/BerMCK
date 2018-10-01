//
//  VideosVC.swift
//  BerNews
//
//  Created by evuser on 01/10/18.
//  Copyright © 2018 evuser. All rights reserved.
//

import UIKit

class VideosVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VideoCell
        cell.textLabel?.text = "ChildTwoVC - - \(indexPath.row)"
        return cell
    }

}



