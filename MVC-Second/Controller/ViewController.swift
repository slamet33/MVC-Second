//
//  ViewController.swift
//  MVC-Second
//
//  Created by Qiarra on 02/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var dataContact = [ContactModel]()
    var strContactName: [String] = ["Jahe", "Komu", "Yada", "Yondu"]
    var strContactNumber: [String] = ["085871555289", "087216764177", "087665267632", "087665267632"]
    var strContactImg: [String] = [
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"]
    
    @IBOutlet weak var contactTableView: UITableView!
//
//    lazy var contactInput: ContactInput = {return ContactTableViewCell() as ContactInput}()
//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contactTableView.delegate = self
        contactTableView.dataSource = self
        
        for i in 0..<strContactImg.count {
            dataContact.append(ContactModel(nameContact: strContactName[i], numberContact:  strContactNumber[i], imgContact:  strContactImg[i]))
            
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataContact.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ContactTableViewCell
        // Key Of Controller -> View
        cell.displayData(dataContact[indexPath.row])
        return cell
    }
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            dataContact.remove(at: indexPath.row)
            contactTableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}

