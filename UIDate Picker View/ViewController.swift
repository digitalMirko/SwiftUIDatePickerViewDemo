//
//  ViewController.swift
//  UIDate Picker View
//
//  Created by Mirko Cukich on 9/30/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl1Label: UILabel!
    @IBOutlet weak var lbl2Label: UILabel!
    @IBOutlet weak var lbl3Label: UILabel!
    @IBOutlet weak var lbl4Label: UILabel!
    @IBOutlet weak var lbl5Label: UILabel!
    @IBOutlet weak var lbl6Label: UILabel!
    @IBOutlet weak var lbl7Label: UILabel!
    @IBOutlet weak var lbl8Label: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePickerUnit(self)
    }

    @IBAction func datePickerUnit(_ sender: Any) {
        
        dateOption(dateType: "EEEE, MMM d, yyyy", labelType: lbl1Label)
        // Format Style: Tuesday, Oct 1, 2019
        
        dateOption(dateType: "MM/dd/yyyy", labelType: lbl2Label)
        // Format Style: 10/01/2019
        
        dateOption(dateType: "MM-dd-yyyy HH:mm", labelType: lbl3Label)
        // Format Style: 10-01-2019 03:22
        
        dateOption(dateType: "MMM d, h:mm a", labelType: lbl4Label)
        // Format Style: Oct 1, 3:22 AM

        dateOption(dateType: "MMMM yyyy", labelType: lbl5Label)
        // Format Style: October 2019

        dateOption(dateType: "MMM d, yyyy", labelType: lbl6Label)
        // Format Style: Oct 2, 2019

        dateOption(dateType: "dd.MM.yy", labelType: lbl7Label)
        // Format Style: 02.10.19

        dateOption(dateType: "HH:mm:ss.SSS", labelType: lbl8Label)
        // Format Style: 03:22:07.108

    }
    
    func dateOption (dateType: String, labelType: UILabel) {
        let date = DateFormatter()
        date.dateFormat = dateType
        let dateString = date.string(from: datePicker.date)
        labelType.text = dateString
    }
}

