//
//  ViewController.swift
//  BerNews
//
//  Created by evuser on 01/10/18.
//  Copyright © 2018 evuser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func signInAction(_ sender: Any) {
        print("123")
        let staticVC = HomeVC()
        navigationController?.pushViewController(staticVC, animated: true)
    }
    
}

