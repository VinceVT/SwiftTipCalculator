//
//  ViewController.swift
//  TipCalculator
//
//  Created by Vincent Truong on 8/10/18.
//  Copyright © 2018 Vincent Truong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipController: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.2, 0.22]
        
        let bill = Double(billField.text!)
        let tip = bill! * tipPercentages[tipController.selectedSegmentIndex]
        let total = bill! + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

