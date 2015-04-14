//
//  ViewController.swift
//  tips
//
//  Created by Mark C on 4/10/15.
//  Copyright (c) 2015 Mark C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    var tipPercentageMapKey: String = "tipPercentageIndex"
    var tipPercentageIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "$0.00"
        tipLabel.text = "$0.00"
        var settings = NSUserDefaults.standardUserDefaults()
        tipPercentageIndex = settings.integerForKey(tipPercentageMapKey)
        
    }

        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.15, 0.18, 0.2]
        tipPercentageIndex = tipControl.selectedSegmentIndex
        println("on change")
        println(tipPercentageIndex)
        println(tipControl.selectedSegmentIndex)
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
    }
}

