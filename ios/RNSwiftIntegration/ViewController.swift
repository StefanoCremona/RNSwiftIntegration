//
//  ViewController.swift
//  RNSwiftIntegration
//
//  Created by Stefano Cremona on 04/04/2017.
//  Copyright © 2017 Stefano Cremona. All rights reserved.
//

import UIKit

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
        
        // Doc for segue:
        // https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html
        self.performSegue(withIdentifier: "toCheckOut", sender: nil)
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        MyBestFriend.name = nil
        nameTextField.text = ""
    }

}

