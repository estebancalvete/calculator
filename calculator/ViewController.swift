//
//  ViewController.swift
//  calculator
//
//  Created by Esteban Calvete Iglesias on 31/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Variables
    
    var total: Int = 0
    var temp: Int = 0
    var operating = false
    var decimal = false
    var operation:OperationType = .none
    
    // MARK: Constants
    
    let kDecimalSeparator = Locale.current.decimalSeparator!
    let kMaxLength = 9
    let kMaxValue: Double = 999999999
    let kMinValue: Double = 0.000000001
    
    enum OperationType {
        case none, addiction, substraction, multiplication, division, percent
    }
    
    
    // MARK: IBOutlets

    @IBOutlet weak var resultLabel: UILabel!
    
    // Numbers
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    
    // Operators
    
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var percentageButton: UIButton!
    
    
    
    // MARK: Live clicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        zeroButton.round()
        oneButton.round()
        twoButton.round()
        threeButton.round()
        fourButton.round()
        fiveButton.round()
        sixButton.round()
        sevenButton.round()
        eightButton.round()
        nineButton.round()
        decimalButton.round()
        equalsButton.round()
        plusButton.round()
        minusButton.round()
        multiplyButton.round()
        divideButton.round()
        percentageButton.round()
        plusMinusButton.round()
        ACButton.round()
        
        decimalButton.setTitle(kDecimalSeparator, for: .normal)
        
        result()
    }

    // MARK: Functions
    
    func clear() {
        operation = .none
        operating = false
        ACButton.setTitle("AC", for: .normal)
        if temp != 0 {
            temp = 0
            resultLabel.text = "0"
        } else {
            total = 0
            result()
        }
    }
    
    func result() {
        switch operation {
        case .none:
            break
        case .addiction:
            total = total + temp
            break
        case .substraction:
            total = total - temp
            break
        case .multiplication:
            total = total * temp
            break
        case .division:
            total = total / temp
            break
        case .percent:
            temp = temp / 100
            total = total * temp
            break
        }
    }
    
    // MARK: IBActions

    @IBAction func resultButtonDidTouchUpInside(_ sender: UIButton) {
        result()
        operation = .none
        operating = false
        sender.shine()
        resultLabel.text = "\(total)"
    }
    @IBAction func plusButtonDidTouchUpInside(_ sender: UIButton) {
        operating = true
        operation = .addiction
        total = temp
        temp = 0
        sender.shine()
        resultLabel.text = "\(total)"
    }
    @IBAction func minusButtonDidTouchUpInside(_ sender: UIButton) {
        operating = true
        operation = .substraction
        total = temp
        temp = 0
        sender.shine()
        resultLabel.text = "\(total)"
    }
    @IBAction func multiplyButtonDidTouchUpInside(_ sender: UIButton) {
        operating = true
        operation = .multiplication
        total = temp
        temp = 0
        sender.shine()
        resultLabel.text = "\(total)"
    }
    @IBAction func divideButtonDidTouchUpInside(_ sender: UIButton) {
        operating = true
        operation = .division
        total = temp
        temp = 0
        sender.shine()
        resultLabel.text = "\(total)"
    }
    @IBAction func percentButtonDidTouchUpInside(_ sender: UIButton) {
        operating = true
        operation = .percent
        total = temp
        temp = 0
        sender.shine()
        resultLabel.text = "\(total)"
    }
    @IBAction func plusMinusButtonDidTouchUpInside(_ sender: UIButton) {
        temp = temp * (-1)
        resultLabel.text = "\(temp)"
        sender.shine()
    }
    @IBAction func ACButtonDidTouchUpInside(_ sender: UIButton) {
        clear()
        sender.shine()
    }
    @IBAction func numberButtonDidTouchUpInside(_ sender: UIButton) {
        ACButton.setTitle("C", for: .normal)
        temp = Int("\(temp)" + String(sender.tag))!
        resultLabel.text = "\(temp)"
        sender.shine()
    }
    @IBAction func decimalButtonDidTouchUpInside(_ sender: UIButton) {
       
    
        sender.shine()
}
}
