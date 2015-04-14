//
//  SettingsViewController.swift
//  tips
//
//  Created by Mark C on 4/13/15.
//  Copyright (c) 2015 Mark C. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    var defaults: NSUserDefaults!
    var tipPercentageMapKey: String = "tipPercentageIndex"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(defaults == nil) {
            defaults = NSUserDefaults.standardUserDefaults()
        }
        
        var intValue = defaults.integerForKey(tipPercentageMapKey)
        defaultTipControl.selectedSegmentIndex = intValue
        //        defaults.setObject("some_string_to_save", forKey: "some_key_that_you_choose")
//        defaults.setInteger(123, forKey: "another_key_that_you_choose")
//        defaults.synchronize()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTipControlChange(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults()
            .setInteger(defaultTipControl.selectedSegmentIndex, forKey: tipPercentageMapKey)

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
