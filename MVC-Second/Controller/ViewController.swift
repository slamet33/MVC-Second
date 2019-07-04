//
//  ViewController.swift
//  MVC-Second
//
//  Created by Qiarra on 02/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var contactTableView: UITableView!
    lazy var contactModel: ContactModel = ContactModel()
    var dataContact = [Contact]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contactTableView.delegate = self
        contactTableView.dataSource = self
        displayData(contactModel.getData())
        
    }
    
    func displayData(_ dataContact: [Contact]) {
        self.dataContact = dataContact
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


