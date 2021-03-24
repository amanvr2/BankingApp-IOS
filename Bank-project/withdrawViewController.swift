//
//  withdrawViewController.swift
//  Bank-project
//
//  Created by Macbook on 3/21/21.
//

import UIKit

class withdrawViewController: UIViewController {
    
    
    
    @IBOutlet weak var sucMsg: UILabel!
    @IBOutlet weak var accNo: UILabel!
    @IBOutlet weak var currBalance: UILabel!
    
    @IBOutlet weak var amount: UITextField!
    var personAccount = 0
    var data = [User]()
    var personNo = 0
    
    var cBal = 0.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        accNo.text = String(personAccount)

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
       
        
        let vc = segue.destination as? ViewController
        // Pass the selected object to the new view controller.
        vc?.personBalance = self.cBal
        vc?.personAccount = self.personAccount
        vc?.personNo = self.personNo
        vc?.data = self.data
    }
    
    

    @IBAction func withdrw(_ sender: Any) {
        
        let account = Int(accNo.text!)!
        let wiAmount = Double(amount.text!)!



         for user in data{

             if(user.userAcoountNo == account){

                user.userCurrentBalance -= wiAmount

                cBal = user.userCurrentBalance

                currBalance.text = String(cBal)

                sucMsg.text = "Amount withdrawn successfuly"

             }
         }
    }
    
}
