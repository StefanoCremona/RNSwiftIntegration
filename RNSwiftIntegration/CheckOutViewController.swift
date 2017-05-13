//
//  CheckOutViewController.swift
//  RNSwiftIntegration
//
//  Created by Stefano Cremona on 13/05/17.
//  Copyright © 2017 Stefano Cremona. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var friendNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendNameLabel.text = MyBestFriend.name
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


