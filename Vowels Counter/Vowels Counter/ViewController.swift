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
    
    func updateUI(for count: Int, bgView: UIView, textField: UITextField) {
        if count >= 1 {
            bgView.backgroundColor = .green
            textField.text = "x\(count)"
        } else {
            bgView.backgroundColor = .gray
            textField.text = "x\(count)"
        }
    }
    
    @IBAction func editingChangedTextField(_ sender: Any) {
        if let currentWord = wordInput.text, let lastChar = currentWord.last, !currentWord.isEmpty{
            var countA = currentWord.filter { $0 == "a" || $0 == "A" }.count
            var countE = currentWord.filter { $0 == "e" || $0 == "E" }.count
            var countI = currentWord.filter { $0 == "i" || $0 == "I" }.count
            var countO = currentWord.filter { $0 == "o" || $0 == "O" }.count
            var countU = currentWord.filter { $0 == "u" || $0 == "U" }.count
            print(lastChar)
            
            switch lastChar {
            case "a", "A":
                countA = currentWord.filter { $0 == "a" || $0 == "A" }.count
            case "e", "E":
                countE = currentWord.filter({ $0 == "e" || $0 == "E" }).count
            case "i", "I":
                countI = currentWord.filter({ $0 == "i" || $0 == "I" }).count
            case "o", "O":
                countO = currentWord.filter({ $0 == "o" || $0 == "O" }).count
            case "u", "U":
                countU = currentWord.filter({ $0 == "u" || $0 == "U" }).count
            default:
               break
            }

            updateUI(for: countA, bgView: bgA, textField: textFieldA)
            updateUI(for: countE, bgView: bgE, textField: textFieldE)
            updateUI(for: countI, bgView: bgI, textField: textFieldI)
            updateUI(for: countO, bgView: bgO, textField: textFieldO)
            updateUI(for: countU, bgView: bgU, textField: textFieldU)
        } else {
            
            updateUI(for: 0, bgView: bgA, textField: textFieldA)
            updateUI(for: 0, bgView: bgE, textField: textFieldE)
            updateUI(for: 0, bgView: bgI, textField: textFieldI)
            updateUI(for: 0, bgView: bgO, textField: textFieldO)
            updateUI(for: 0, bgView: bgU, textField: textFieldU)
        }
        
    }
    
    
}

