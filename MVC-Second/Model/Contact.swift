//
//  Contact.swift
//  MVC-Second
//
//  Created by Qiarra on 04/07/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import Foundation

class Contact {
    var nameContact: String?
    var numberContact: String?
    var imgContact: String?
    
    init(nameContact: String, numberContact: String, imgContact: String) {
        self.imgContact = imgContact
        self.nameContact = nameContact
        self.numberContact = numberContact
    }
}
