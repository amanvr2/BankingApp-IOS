//
//  depositViewController.swift
//  Bank-project
//
//  Created by Macbook on 3/20/21.
//

import UIKit

class depositViewController: UIViewController {

    @IBOutlet weak var depAmount: UITextField!
    @IBOutlet weak var accno: UILabel!
    var personAccount = 0
    var data = [User]()
    var personNo = 0
    
    var cBal = 0.0
    
    @IBOutlet weak var sucMsg: UILabel!
    
    @IBOutlet weak var currBalance: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accno.text = String(personAccount) 

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
    
 
    @IBAction func depo(_ sender: Any) {
        
        
                
                let account = Int(accno.text!)!
                let deAmount = Double(depAmount.text!)!
        
       
        
                 for user in data{

                     if(user.userAcoountNo == account){

                        user.userCurrentBalance += deAmount

                        cBal = user.userCurrentBalance

                        currBalance.text = String(cBal)

                        sucMsg.text = "Amount deposited successfuly"

                     }
                 }
    }
    
    
    @IBAction func back(_ sender: Any) {
        
        performSegue(withIdentifier: "backToProfile", sender: self)
    }
    
    

}
