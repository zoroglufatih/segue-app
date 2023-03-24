//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Fatih Zoroğlu on 20.03.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
        
    }
    

}
