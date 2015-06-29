//
//  ViewController.swift
//  Button Fun
//
//  Created by Christopher Bartling on 6/28/15.
//  Copyright (c) 2015 Pintail Consulting LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func handleButtonClick(sender: UIButton) {
        let title = sender.titleForState(.Normal)!
        let plainText = "\(title) button pressed"
        let styledText = NSMutableAttributedString(string: plainText)
        let attributes = [
            NSFontAttributeName: UIFont.boldSystemFontOfSize(myLabel.font.pointSize)
        ]
        let nameRange = (plainText as NSString).rangeOfString(title)
        styledText.setAttributes(attributes, range: nameRange)
        myLabel.attributedText = styledText
    }
}

