//
//  ViewController.swift
//  DatePickeViewWithTextField
//
//  Created by Akash Technolabs on 10/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var lblDate: UILabel!
    override func viewDidLoad()
    {
     
        super.viewDidLoad()
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = UIDatePickerMode.date
        dateTextField.inputView = datePicker
        datePicker.addTarget(self, action: #selector(self.datePickerValuedChanged(sender:)), for: UIControlEvents.valueChanged)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func datePickerValuedChanged(sender: UIDatePicker)
    {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "dd -  MMM - yyyy"
        //dateFormater.dateStyle = DateFormatter.Style.short
        //var strDate = dateFormater.string(from: sender.date)
        //lblDate.text  = strDate
        dateTextField.text = dateFormater.string(from: sender.date)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

