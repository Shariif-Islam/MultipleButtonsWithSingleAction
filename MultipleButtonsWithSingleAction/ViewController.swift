//
//  ViewController.swift
//  MultipleButtonsWithSingleAction
//
//  Created by AdBox on 5/24/17.
//  Copyright © 2017 myth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizeButton()
    }
    
    func customizeButton(){
        
        for button in buttons {
            
            if button.tag == 102 {
                
                button.backgroundColor = UIColor.orange
                button.setTitleColor(UIColor.white, for: .normal)
            }
            else {
                
                button.backgroundColor = UIColor.yellow
                button.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }

    @IBAction func buttonAction(_ sender: Any) {
        
       let button = sender as! UIButton
        
        /**
         - we can identify button by tag name or button tilte text
         */
        
        if button.titleLabel?.text == "One" {
        
            print("Button one pressed")
        }
        else if button.tag == 103 {
        
            print("Button three pressed")
            
        }
        else {
            print("Button two pressed")
        }
    }
}

