//
//  ViewController.swift
//  Bank-project
//
//  Created by Macbook on 3/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var accountno: UILabel!
    @IBOutlet weak var currentbalance: UILabel!
    @IBOutlet weak var no: UILabel!
    @IBOutlet weak var name: UILabel!
    
    var personName = ""
    var personAccount = 0
    var personNo = 0
    var personBalance = 0.0
    var data = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = "Welcome "+personName
        accountno.text = String(personAccount)
        no.text = String(personNo)
        currentbalance.text = String(personBalance)
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        
        let dc = segue.destination as? depositViewController
        // Pass the selected object to the new view controller.
        
        dc?.personAccount = self.personAccount
        dc?.personNo = self.personNo
        dc?.cBal = self.personBalance
        dc?.data = self.data
        
        let wc = segue.destination as? withdrawViewController
        // Pass the selected object to the new view controller.
        
        wc?.personAccount = self.personAccount
        wc?.personNo = self.personNo
        wc?.cBal = self.personBalance
        wc?.data = self.data
        
    }
  
    @IBAction func logout(_ sender: Any) {
        performSegue(withIdentifier: "logout", sender: self)
    }
    
    @IBAction func deposit(_ sender: Any) {
        
        performSegue(withIdentifier: "deposit", sender: self)
    }
    
    @IBAction func withdraw(_ sender: Any) {
        performSegue(withIdentifier: "withdraw", sender: self)
    }
}

