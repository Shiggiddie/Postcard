//
//  ViewController.swift
//  Postcard
//
//  Created by User on 9/18/14.
//  Copyright (c) 2014 PWW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender: UIButton) {
        // Fuck you rod
        messageLabel.hidden = false
        nameLabel.hidden = false

        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text

        enterMessageTextField.text = ""
        enterNameTextField.text = ""

        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()

        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()

        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

