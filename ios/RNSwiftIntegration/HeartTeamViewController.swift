//
//  HeartTeamViewController.swift
//  RNSwiftIntegration
//
//  Created by Stefano Cremona on 14/05/17.
//  Copyright © 2017 Stefano Cremona. All rights reserved.
//

import UIKit
import React

class HeartTeamViewController: UIViewController {
    
    //MARK: Properties
    static var myStaticReferenceOfUIVC: UIViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        #if DEBUG
            let isDebug = true
        #else
            let isDebug = false
        #endif
        
        #if (arch(i386) || arch(x86_64)) && os(iOS)
            let jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
        #else
            let jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURLForBundleRoot("index.ios", fallbackResource: nil)
            //let jsCodeLocation = CodePush.bundleURL(); //Equivalent to the previous but supporting Codepush
        #endif
        
        let mockData: NSDictionary = [
            "myBestFriendName": MyBestFriend.name!,
            "isDebug": isDebug,
            ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation as URL!,
            moduleName: "RNSwiftIntegration",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil )
        
        //let vc = UIViewController()
        //vc.view = rootView
        
        //self.presentViewController(vc, animated: true, completion: nil)
        view = rootView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        HeartTeamViewController.myStaticReferenceOfUIVC = self
    }
    
}
