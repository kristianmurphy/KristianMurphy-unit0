//
//  ViewController.swift
//  iOS Prework
//
//  Created by Kristian Murphy on 8/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var total: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amt from text input
        let bill = Double(billAmount.text!) ?? 0
        
        // get total tip ->  tip*tipPercentage
        let tipPercentages = [0.15,0.18,0.2]
        let total_tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total_amount = bill+total_tip
        
        // update tip on ui
        tip.text = String(format: "$%.2f", total_tip)
        // update total amount
        total.text = String(format: "$%.2f", total_amount)
        
    }
    
}

