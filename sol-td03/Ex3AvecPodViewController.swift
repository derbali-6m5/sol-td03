//
//  Ex3AvecPodViewController.swift
//  sol-td03
//
//  Created by admin on 2023-02-11.
//

import UIKit

import MBRadioCheckboxButton

class Ex3AvecPodViewController: UIViewController {

    @IBOutlet weak var btnDecaf: RadioButton!
    @IBOutlet weak var btnMocka: RadioButton!
    @IBOutlet weak var btnSugar: CheckboxButton!
    @IBOutlet weak var btnMilk: CheckboxButton!
    
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func clickShow(_ sender: Any) {
        var result  = "Your coffee is"
        if btnDecaf.isOn {
            result += " Decaf,"
        } else if btnMocka.isOn {
            result += " Mocka, "
        }
        if btnSugar.isOn {
            result += "with sugar, "
        }
        if btnMilk.isOn {
            result += "with milk."
        }
        lblResult.text = result
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
