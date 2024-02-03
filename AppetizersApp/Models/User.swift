//AppetizersApp
//User.swift

//Created by: Kareem on 11/12/23                      
//Copyright (c) 2023 Kareem

import Foundation

struct User: Codable {
    var firstName      = ""
    var lastName       = ""
    var email          = ""
    var birthDate      = Date()
    var extraNapkins   = false
    var frequentRefils = false
    
    
}
