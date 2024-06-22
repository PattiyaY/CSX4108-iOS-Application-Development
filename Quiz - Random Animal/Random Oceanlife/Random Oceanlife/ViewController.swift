//
//  ViewController.swift
//  Random Oceanlife
//
//  Created by Pattiya Yiadram on 15/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image: UIImageView!
    @IBOutlet var animalName:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func randomAnimal() {
        let animal = [(#imageLiteral(resourceName: "sealion.jpg"), "Sealion"),(#imageLiteral(resourceName: "seaotter.jpeg"), "Sea Otter"), (#imageLiteral(resourceName: "shark.jpg"), "Shark"),
                      (#imageLiteral(resourceName: "starfish.jpg"),"Starfish"), (#imageLiteral(resourceName: "stingray.jpg"), "Stingray"), (#imageLiteral(resourceName: "whale.jpeg"), "Whale")].randomElement()

        image.image = animal?.0
        animalName.text = animal?.1
    }
    
}

