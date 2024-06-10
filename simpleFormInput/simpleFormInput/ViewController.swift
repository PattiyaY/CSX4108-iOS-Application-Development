//
//  ViewController.swift
//  simpleFormInput
//
//  Created by Pattiya Yiadram on 10/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstNameInput: UITextField!
    @IBOutlet var lastNameInput: UITextField!
    @IBOutlet var ageInput: UITextField!
    @IBOutlet var nameOutput: UILabel!
    @IBOutlet var ageOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func clickedLetsGo() {
        let firstName = firstNameInput.text
        let lastName = lastNameInput.text
        let age = ageInput.text
        
        nameOutput.text = "Your name is \(firstName!) \(lastName!)."
        ageOutput.text = "You are \(age!) years old."
        
    }
}

