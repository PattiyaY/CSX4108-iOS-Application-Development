//
//  ViewController.swift
//  oceanLifeAnimals
//
//  Created by Pattiya Yiadram on 9/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var animalName: UILabel!
    @IBOutlet var seaOtter: UIButton!
    @IBOutlet var whale: UIButton!
    @IBOutlet var sealion: UIButton!
    @IBOutlet var starfish: UIButton!
    @IBOutlet var stingray: UIButton!
    @IBOutlet var shark: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickedSeaOtter() {
        animalName.text = "Sea Otter"
    }
    
    @IBAction func clickedWhale() {
        animalName.text = "Whale"
    }
    
    @IBAction func clickedSealion() {
        animalName.text = "Sealion"
    }
    
    @IBAction func clickedStarfish() {
        animalName.text = "Starfish"
    }
    
    @IBAction func clickedStingray() {
        animalName.text = "Stingray"
    }
    
    @IBAction func clickedShark() {
        animalName.text = "Shark"
    }
}

