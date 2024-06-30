//
//  ViewController.swift
//  Vowels Counter
//
//  Created by Pattiya Yiadram on 30/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordInput: UITextField!
    @IBOutlet weak var textFieldA: UITextField!
    @IBOutlet weak var textFieldE: UITextField!
    @IBOutlet weak var textFieldI: UITextField!
    @IBOutlet weak var textFieldO: UITextField!
    @IBOutlet weak var textFieldU: UITextField!
    @IBOutlet weak var bgA: UIView!
    @IBOutlet weak var bgE: UIView!
    @IBOutlet weak var bgI: UIView!
    @IBOutlet weak var bgO: UIView!
    @IBOutlet weak var bgU: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func editingChangedTextField(_ sender: Any) {
        if let currentWord = wordInput.text {
            
            let a = currentWord.filter({ $0 == "a" || $0 == "A" }).count
            let e = currentWord.filter({ $0 == "e" || $0 == "E" }).count
            let i = currentWord.filter({ $0 == "i" || $0 == "I" }).count
            let o = currentWord.filter({ $0 == "o" || $0 == "O" }).count
            let u = currentWord.filter({ $0 == "u" || $0 == "U" }).count
            
            if a >= 1 {
                bgA.backgroundColor = .green
                textFieldA.text = "x\(a)"
            } else {
                bgA.backgroundColor = .gray
                textFieldA.text = "x\(a)"
            }
                
            if e >= 1 {
                bgE.backgroundColor = .green
                textFieldE.text = "x\(e)"
            } else {
                bgE.backgroundColor = .gray
                textFieldE.text = "x\(e)"
            }
                
            if i >= 1 {
                bgI.backgroundColor = .green
                textFieldI.text = "x\(i)"
            } else {
                bgI.backgroundColor = .gray
                textFieldI.text = "x\(i)"
            }
            
            if o >= 1 {
                bgO.backgroundColor = .green
                textFieldO.text = "x\(o)"
            } else {
                bgO.backgroundColor = .gray
                textFieldO.text = "x\(o)"
            }
           
            if u >= 1 {
                bgU.backgroundColor = .green
                textFieldU.text = "x\(u)"
            } else {
                bgU.backgroundColor = .gray
                textFieldU.text = "x\(u)"
            }

        }
        
    }
    
}

