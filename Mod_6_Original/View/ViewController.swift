//
//  ViewController.swift
//  Mod_6_Original
//
//  Created by Jeff Kohl on 6/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    var converterLogic = ConverterLogic()
    var USDamount = ""
    var euroExchange = ""
    var yenExchange = ""
    var kroneExchange = ""
    var canadianExchange = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var USDUserInput: UITextField!
    
    @IBAction func euroChange(_ sender: UISwitch) {
        converterLogic.setEuroSwitch(sender.isOn)
    }
    
    @IBAction func yenChange(_ sender: UISwitch) {
        converterLogic.setYenSwitch(sender.isOn)
    }
    
    @IBAction func kroneChange(_ sender: UISwitch) {
        converterLogic.setKroneSwitch(sender.isOn)
    }
    
    @IBAction func canadianChange(_ sender: UISwitch) {
        converterLogic.setCanadianSwitch(sender.isOn)
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        (USDamount, euroExchange, yenExchange, kroneExchange, canadianExchange) = converterLogic.calculateLoanAmount(USDIn: USDUserInput.text!)
                self.performSegue(withIdentifier: "toConverter", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConverter" {
            let currencyConverter = segue.destination as! CurrencyView
            currencyConverter.USDamount = USDamount
            currencyConverter.euroExchange = euroExchange
            currencyConverter.yenExchange = yenExchange
            currencyConverter.kroneExchange = kroneExchange
            currencyConverter.canadianExchange = canadianExchange
        }
        
    }
    
}

