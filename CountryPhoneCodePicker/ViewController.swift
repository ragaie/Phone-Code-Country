//
//  ViewController.swift
//  CountryPhoneCodePicker
//
//  Created by Ragaie alfy on 9/24/17.
//  Copyright © 2017 Ragaie alfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,CountryCodeDropDownDelegate{
  

    @IBOutlet weak var codePicker: CountryCodeDropDown!
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var numberText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var selectCountry : Country!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        codePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getResult(_ sender: Any) {
        
        
        if selectCountry != nil {
        
            resultLabel.text = "(+" + selectCountry.dial_code + ") " + numberText.text!
        
        }
    }

    
    
    
//
//    func codeDropDown(_ fr: CountryCodeDropDown, didSelectItem country: Country) {
//
//
//
//
//        selectCountry = country
//
//    }
//
    
    func codeDropDown(_ fromView: CountryCodeDropDown, didSelectItem country: Country) {
           selectCountry = country
      }
      
    
    
}

