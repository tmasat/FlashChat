//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Çağrı Tuğberk Masat on 5.04.2020.
//  Copyright © 2020 Tugberk Masat. All rights reserved.
//


struct Constants {
    static let appName = "⚡️FlashChat"
    static let registerIds = "RegisterViewController"
    static let loginIds = "LoginViewController"
    static let chatIds = "ChatViewController"
    static let cellIds = "ReusableCell"
    static let cellNibName = "MessageCell"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lightBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}

