//
//  ViewController.swift
//  TextField Thai citizen id
//
//  Created by Pattiya Yiadram on 30/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thaiCitizenId: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func textFiledOnEditingChanged(_ sender: Any) {
        if let currentCitizenID = thaiCitizenId.text{
            switch currentCitizenID.count {
            case 2, 7, 14, 17:
                let firstPart = currentCitizenID.substring(to: currentCitizenID.count - 1)
                print("First part \(firstPart)")
                let hyphen = "-"
                let lastPart = currentCitizenID.substring(from: currentCitizenID.count - 1)
                print("Last part \(lastPart)")
                thaiCitizenId.text = "\(firstPart)\(hyphen)\(lastPart)"
            case 19:
                thaiCitizenId.text = currentCitizenID.substring(to: 18)
                thaiCitizenId.resignFirstResponder()
            default:
                break
            }
        }
    }
    
    
    @IBAction func imDoneClicked(_ sender: Any) {
        thaiCitizenId.resignFirstResponder()
    }
    
    
}

