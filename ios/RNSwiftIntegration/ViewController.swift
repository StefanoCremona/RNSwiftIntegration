//
//  ViewController.swift
//  RNSwiftIntegration
//
//  Created by Stefano Cremona on 04/04/2017.
//  Copyright © 2017 Stefano Cremona. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {
    
    //MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func setYourBestFriend(_ sender: UIButton) {
        MyBestFriend.name = nameTextField.text
        //self.performSegue(withIdentifier: "toCheckOut", sender: nil)
        callReactNative()
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        MyBestFriend.name = nil
        nameTextField.text = ""
    }
    
    func callReactNative() {
        // Do any additional setup after loading the view.
        let jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
        
        let mockData: NSDictionary = [
            "myBestFriendName": MyBestFriend.name!
        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation as URL!,
            moduleName: "RNSwiftIntegration",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil )
        
        let vc = UIViewController()
        vc.view = rootView
        
        self.present(vc, animated: true, completion: nil)
    }

}

