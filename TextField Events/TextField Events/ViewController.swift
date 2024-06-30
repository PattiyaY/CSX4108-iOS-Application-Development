//
//  ViewController.swift
//  TextField Events
//
//  Created by Pattiya Yiadram on 29/6/24.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var phoneNumberTextField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func textFieldOnEditingDidBegin(_ sender: Any) {
        print("textFieldOnEditingDidBegin")
    }
    
    @IBAction func textFiledOnEditingChanged(_ sender: Any) {
        if let currentInput = phoneNumberTextField.text {
            print(currentInput)
            if currentInput.count == 4 || currentInput.count == 8 {
                let firstPart = currentInput.substring(to: currentInput.count - 1)
                print("First part \(firstPart)")
                let hyphen = "-"
                let lastPart = currentInput.substring(from: currentInput.count - 1)
                print("Last part \(lastPart)")
                phoneNumberTextField.text = "\(firstPart)\(hyphen)\(lastPart)"
            } else if currentInput.count >= 12 {
                phoneNumberTextField.resignFirstResponder()
            } else if currentInput.count >= 13 {
                phoneNumberTextField.text = currentInput.substring(to: 12)
                phoneNumberTextField.resignFirstResponder()
            }
        }
    }
    
    
    
    @IBAction func imDoneButtonClicked(_ sender: Any) {
        phoneNumberTextField.resignFirstResponder()
    }
}

