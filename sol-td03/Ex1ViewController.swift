//
//  Ex1ViewController.swift
//  sol-td03
//
//  Created by admin on 2023-02-08.
//

import UIKit

class Ex1ViewController: UIViewController {

    @IBOutlet weak var lblCompteur: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickDecrementer(_ sender: Any) {
        var compteur  =  Int(self.lblCompteur.text!)
        self.lblCompteur.text = String(compteur!  - 1)
    }
    
    @IBAction func clickIncrementer(_ sender: Any) {
        var compteur  =  Int(self.lblCompteur.text!)
        self.lblCompteur.text = String(compteur!  + 1)
        
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
