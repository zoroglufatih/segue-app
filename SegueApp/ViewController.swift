//
//  ViewController.swift
//  SegueApp
//
//  Created by Fatih Zoroğlu on 20.03.2023.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    @IBOutlet weak var viewControllerLabel: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("yüklenmeden önce")
    }

    
    override func viewWillAppear(_ animated: Bool) {
        print("Yükleniyor")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("yüklendi")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("kapanıyor")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("kapandı")
    }
    
    @IBAction func nextButton(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationCV = segue.destination as! SecondViewController
            destinationCV.myName = userName
        }
    }

}

