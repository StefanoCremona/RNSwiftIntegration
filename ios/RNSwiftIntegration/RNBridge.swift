//
//  RNBridge.swift
//  RNSwiftIntegration
//
//  Created by Stefano Cremona on 14/05/17.
//  Copyright © 2017 Stefano Cremona. All rights reserved.
//

@objc(RNBridge)
class RNBridge: NSObject {
    
    @objc(dismissRNViewController)
    func dismissRNViewController() -> Void {  // Date is ready to use!
        DispatchQueue.main.async() {
            //ReactNativeViewController.myStaticReferenceOfUIVC!.navigationController?.popViewControllerAnimated(true)
            ViewController.myStaticReferenceOfUIVC!.dismiss(animated: true, completion: nil)
        }
    }
}
