//
//  ContactTableViewCell.swift
//  MVC-Second
//
//  Created by Qiarra on 02/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//


import UIKit

class ContactTableViewCell: UITableViewCell {
       
    @IBOutlet weak var imgContact: UIImageView!
    @IBOutlet weak var nameContact: UILabel!
    @IBOutlet weak var numberContact: UILabel!
    
    func displayData(_ dataContact: Contact) {
        nameContact?.text = dataContact.nameContact
        numberContact?.text = dataContact.numberContact
        imgContact?.load(dataContact.imgContact)
    }
}
