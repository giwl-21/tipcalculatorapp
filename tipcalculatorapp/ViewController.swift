//
//  ViewController.swift
//  tipcalculatorapp
//
//  Created by Muhsin Wahi-Anwar on 11/21/20.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // More setup
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func tipChangeAction(_ sender: Any) {
        // Here we will calculate the tip and total bill
        // And display it
        let bill = Double(textField.text!) ?? 0
        let tipPercentages = [0.15, 0.20, 0.25]
        
        // calulating tips
        let tip = bill * tipPercentages[tipSelector.selectedSegmentIndex]
        let total = bill + tip
        
        // Changing labels to reflect values
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
}
