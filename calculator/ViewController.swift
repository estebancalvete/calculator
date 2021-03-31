//
//  ViewController.swift
//  calculator
//
//  Created by Esteban Calvete Iglesias on 31/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Variables
    
    var total: Double = 0
    var temp: Double = 0
    
    // MARK: IBOutlets

    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: Live clicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: Functions
    
    // MARK: IBActions

    @IBAction func resultButtonDidTouchUpInside(_ sender: Any) {
        print("result button")
    }
//
//    @IBAction func oneButtonDidTouchUpInside(_ sender: Any) {
//        temp = 1
//    }
}

