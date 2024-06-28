//
//  CurrencyView.swift
//  Mod_6_Original
//
//  Created by Jeff Kohl on 6/26/24.
//

import UIKit

class CurrencyView: UIViewController {
    
    var USDamount = ""
    var euroExchange = ""
    var yenExchange = ""
    var kroneExchange = ""
    var canadianExchange = ""
    
    @IBOutlet weak var USDLabel: UILabel!
    
    @IBOutlet weak var euroRate: UILabel!
    
    @IBOutlet weak var yenRate: UILabel!
    
    @IBOutlet weak var kroneRate: UILabel!
    
    @IBOutlet weak var canadianRate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if USDamount == "Enter valid integer." {
            USDLabel.text = "Enter valid integer."
        } else {
            USDLabel.text = "Amount in USD: $\(USDamount)"
        }
        
        if euroExchange == "Enter valid integer." {
            euroRate.text = ""
        } else if euroExchange != "-1.0"{
            euroRate.text = "Euros: \(euroExchange)"
        } else {
            euroRate.text = ""
        }
        
        if yenExchange == "Enter valid integer." {
            yenRate.text = ""
        } else if yenExchange != "-1.0" {
            yenRate.text = "Yen: \(yenExchange)"
        } else {
            yenRate.text = ""
        }
        
        if kroneExchange == "Enter valid integer." {
            kroneRate.text = ""
        } else if kroneExchange != "-1.0" {
            kroneRate.text = "Krone: \(kroneExchange)"
        } else {
            kroneRate.text = ""
        }
        
        if canadianExchange == "Enter valid integer." {
            canadianRate.text = ""
        } else if canadianExchange != "-1.0" {
            canadianRate.text = "Canadian $: \(canadianExchange)"
        } else {
            canadianRate.text = ""
        }
        
        // Do any additional setup after loading the view.
    }
            
            @IBAction func backPressed(_ sender: UIButton) {
                dismiss(animated: true)
            }
            
            /*
            // MARK: - Navigation

            // In a storyboard-based application, you will often want to do a little preparation before navigation
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                // Get the new view controller using segue.destination.
                // Pass the selected object to the new view controller.
            }
            */

        }

