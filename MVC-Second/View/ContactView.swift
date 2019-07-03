//
//  ContactView.swift
//  MVC-Second
//
//  Created by Qiarra on 02/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

final class ContactView: UIView {
    
    @IBOutlet weak var contactTableView: UITableView!
    var dataContact = [ContactModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contactTableView.delegate = self
        contactTableView.dataSource = self
        contactTableView.reloadData()
    }
}

extension ContactView: ContactInput {
    func displayData(_ dataContact: [ContactModel]) {
        self.dataContact = dataContact
    }
}

extension ContactView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataContact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ContactTableViewCell
        let data: ContactModel = dataContact[indexPath.row]
        cell.nameContact.text = data.nameContact
        cell.numberContact.text = data.numberContact
        cell.imgContact.load(data.imgContact)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            dataContact.remove(at: indexPath.row)
            contactTableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}
