//
//  Ex3ViewController.swift
//  sol-td03
//
//  Created by admin on 2023-02-10.
//

import UIKit

class Ex3ViewController: UIViewController {

    @IBOutlet weak var btnMilk: UIButton!
    @IBOutlet weak var btnSugar: UIButton!
    @IBOutlet weak var btnMacka: UIButton!
    @IBOutlet weak var btnDecaf: UIButton!
    @IBOutlet weak var lblResult: UILabel!
    var coffeeType:String = ""
    var withSugar:Bool = false
    var withMilk:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func clickDecaf(_ sender: Any) {
        self.coffeeType = "Decaf"
        self.btnDecaf.setImage(UIImage(named: "radioCheck"), for: .normal)
        self.btnMacka.setImage(UIImage(named: "radioUncheck"), for: .normal)
    }
    
    @IBAction func clickMocka(_ sender: Any) {
        self.coffeeType = "Mocka"
        self.btnMacka.setImage(UIImage(named: "radioCheck"), for: .normal)
        self.btnDecaf.setImage(UIImage(named: "radioUncheck"), for: .normal)
        
    }
    
    @IBAction func clickSugar(_ sender: Any) {
        if self.withSugar == true {
            self.btnSugar.setImage(UIImage(named: "boxUncheck"), for: .normal)
        } else {
            self.btnSugar.setImage(UIImage(named: "boxCheck"), for: .normal)
        }
        self.withSugar = !self.withSugar
        
    }
    @IBAction func clickMilk(_ sender: Any) {
        if self.withMilk == true {
            self.btnMilk.setImage(UIImage(named: "boxUncheck"), for: .normal)
        } else {
            self.btnMilk.setImage(UIImage(named: "boxCheck"), for: .normal)
        }
        self.withMilk = !self.withMilk
    }
    
    @IBAction func clickChoose(_ sender: Any) {
        var sup = ""
        if withMilk {
            sup = "\(sup) with milk"
        }
        if withSugar {
            sup = "\(sup) with sugar"
        }
        self.lblResult.text = "Your coffee is \(self.coffeeType), \(sup) "
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
