//
//  ViewController.swift
//  Prework1
//
//  Created by Julio Adrian Vázquez Acosta on 16/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmounTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totaleachLabel: UILabel!
    @IBOutlet weak var peopleControl: UISlider!
    @IBOutlet weak var numSplit: UISlider!
    @IBOutlet weak var splitTotalLabel: UILabel!
    @IBOutlet weak var splitNumber: UILabel!
    
    var currtotal=0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double (billAmounTextField.text!) ?? 0
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // Updaet Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        currtotal=total
    }
    
    @IBAction func calculateEach(_ sender: Any) {
        // Get bill amount from text field input
        var total = currtotal
        let people = Double (numSplit.value)
        total = total / people
        splitTotalLabel.text = String(format: "$%.2f", total)
        splitNumber.text = String(Int(numSplit.value))
    }
    
}

