//
//  loginViewController.swift
//  Bank-project
//
//  Created by Macbook on 3/14/21.
//

import UIKit

class loginViewController: UIViewController {
 
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    var personName = ""
    var personAcccount = 0
    var personNo = 0
    var personBalance = 0.0
    
    @IBOutlet weak var errmsg: UILabel!
    
    var userList = [User]()
    
    func fillData(){
        
       
        userList.append(User(username:"simtie",password: "simran",first:"simran",last: "verma",no:99999999,accountno:1234,currbalance:0.0))
       
        userList.append(User(username:"arjun",password: "arjun",first:"arjun",last: "reddy",no:1111111111,accountno:5678,currbalance:0.0))
        userList.append(User(username:"saleem",password: "saleem",first:"saleem",last: "shaik",no:2222222222,accountno:91011,currbalance:0.0))
        userList.append(User(username:"amanvr",password: "aman",first:"aman",last: "verma",no:9717411536,accountno:9717,currbalance:0.0))
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        
        let vc = segue.destination as? ViewController
        // Pass the selected object to the new view controller.
        vc?.personName = self.personName
        vc?.personAccount = self.personAcccount
        vc?.personNo = self.personNo
        vc?.personBalance = self.personBalance
        
       
        vc?.data = self.userList
    }

    
    func verify()->String{
        
        let uname = username.text
        let pass = password.text

        for user in userList{

            if(user.userName == uname && user.userPass == pass){

                let fullName = user.userFirst + " " + user.userLast
                return fullName
            }
         
           
        }
        return "invalid"
    }
    func getAccountno()->Int{
        
        let uname = username.text
        let pass = password.text

        for user in userList{

            if(user.userName == uname && user.userPass == pass){

                let accno = user.userAcoountNo
                return accno
            }
         
           
        }
        return -1
    }
    
    func getno()->Int{
        
        let uname = username.text
        let pass = password.text

        for user in userList{

            if(user.userName == uname && user.userPass == pass){

                let no = user.userNo
                return no
            }
         
           
        }
        return -1
    }
    
    func getBal()->Double{
        
        let uname = username.text
        let pass = password.text

        for user in userList{

            if(user.userName == uname && user.userPass == pass){

                let bal = user.userCurrentBalance
                return bal
            }
         
           
        }
        return -1
    }
    //this fucntion to check if should perfrome the segue or not upon the condition
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let getVerify = verify()
        if getVerify == "invalid" {
            return false
            
        }
        else
        {
            personName = getVerify
            personAcccount = getAccountno()
            personNo = getno()
            personBalance = getBal()
            return true
        }
    }

    @IBAction func log(_ sender: Any) {
        
        //check if shouldperfomrsege is true
        if shouldPerformSegue(withIdentifier: "login", sender: self) {
            performSegue(withIdentifier: "login", sender: self)
        }
        else {
            
            errmsg.text = "invalid username or password"
        }
      
    }
   
    
    


 
  

}
