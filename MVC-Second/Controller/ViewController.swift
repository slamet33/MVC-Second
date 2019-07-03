//
//  ViewController.swift
//  MVC-Second
//
//  Created by Qiarra on 02/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var strContactName: [String] = ["Jahe", "Komu", "Yada", "Yondu"]
    var strContactNumber: [String] = ["085871555289", "087216764177", "087665267632", "087665267632"]
    var strContactImg: [String] = [
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"]
    
    lazy var contactInput: ContactInput = {return view as! ContactInput}()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var dataContact = [ContactModel]()
        for i in 0..<strContactImg.count {
            dataContact.append(ContactModel(nameContact: strContactName[i], numberContact:  strContactNumber[i], imgContact:  strContactImg[i]))
            
            //calling displayData Function
            contactInput.displayData(dataContact)
        }
    }
   
}

