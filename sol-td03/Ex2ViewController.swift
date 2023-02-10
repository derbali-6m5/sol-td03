//
//  Ex2ViewController.swift
//  sol-td03
//
//  Created by admin on 2023-02-10.
//

import UIKit

class Ex2ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtMontant: UITextField!
    @IBOutlet weak var txtPercentTip: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickCalculer(_ sender: Any) {
        if let montantTxt = self.txtMontant.text, let percentTipTxt = self.txtPercentTip.text {
            let result = (Float(montantTxt) ?? 0.00) * (Float(percentTipTxt) ?? 0.00) / 100
            self.lblResult.text = "\(String(format: "%.2f", result)) $"
        }
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
