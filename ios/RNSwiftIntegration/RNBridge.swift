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
    func dismissRNViewController() -> Void {
        DispatchQueue.main.async() {
            //ReactNativeViewController.myStaticReferenceOfUIVC!.navigationController?.popViewControllerAnimated(true)
            HeartTeamViewController.myStaticReferenceOfUIVC!.dismiss(animated: true, completion: nil)
        }
    }
    
    @objc(callToCheckOutSegue)
    func callToCheckOutSegue() -> Void {
        DispatchQueue.main.async() {
            HeartTeamViewController.myStaticReferenceOfUIVC!.performSegue(withIdentifier: "toCheckOut", sender: nil)
        }
    }
}
