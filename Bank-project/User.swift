//
//  User.swift
//  Bank-project
//
//  Created by Macbook on 3/13/21.
//

import Foundation


class User{
    
    var userName:String
    var userPass:String
    var userFirst:String
    var userLast:String
    var userNo:Int
    var userAcoountNo:Int
    var userCurrentBalance:Double
    
    init(username:String,password:String,first:String,last:String,no:Int,accountno:Int,currbalance:Double){
        
        self.userName = username
        self.userPass = password
        self.userFirst = first
        self.userLast = last
        self.userNo = no
        self.userAcoountNo = accountno
        self.userCurrentBalance = currbalance
    }
}
