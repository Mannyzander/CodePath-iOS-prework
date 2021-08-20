//
//  ViewController.swift
//  Prework
//
//  Created by emmanuel ortiz on 8/19/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentageAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
       //billAmountTextField.becomeFirstResponder()
            let bill = Double(billAmountTextField.text!) ?? 0
            
            let tipPercentage = [0.15, 0.18, 0.2]
            let tp = 100*tipPercentage[tipControl.selectedSegmentIndex]
        
            let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
            let total = bill + tip
            
            tipPercentageAmount.text = String(format: "%.0f", tp)
        
            tipAmountLabel.text = String(format: "$%.2f", tip)
            
            totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func calculateTip2(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let ahhh = String(format:"%.2f",tipSlider.value)
        
        let tp = Double(ahhh)
        let tipPercentage = 100*tp!
    
        let tip = bill * tp!
        let total = bill + tip
        
        tipPercentageAmount.text = String(format: "%.0f", tipPercentage as CVarArg)
    
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

