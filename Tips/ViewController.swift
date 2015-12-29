//
//  ViewController.swift
//  Tips
//
//  Created by Nashid  on 12/26/15.
//  Copyright © 2015 CodePath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipController: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var splitField: UITextField!
    @IBOutlet weak var splitTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        splitTotal.text = "$0.00"
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages = [0.15, 0.18, 0.2, 0.25]
        let tipPercentage = tipPercentages[tipController.selectedSegmentIndex];
        
        
        let billAmount = NSString(string: billField.text!).doubleValue;
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        let splitAmount = NSString(string:splitField.text!).doubleValue;
        
        let totalTwo = total / splitAmount
        
        splitTotal.text = "$\(totalTwo)"
        splitTotal.text = String (format: "$%.2f",totalTwo)
        
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

