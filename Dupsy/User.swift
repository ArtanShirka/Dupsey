//
//  User.swift
//  Dupsy
//
//  Created by Julian Dragoi on 03/10/2016.
//  Copyright © 2016 Julian Dragoi. All rights reserved.
//

import Foundation


class User : NSObject{
    
    
    var user_id : NSString
    var username : NSString
    var password : NSString
    var usestat : User_Status
    

    init(id: NSString, use:NSString, pass:NSString, ust:User_Status){
        
        self.user_id = id
        self.username = use
        self.password = pass
        self.usestat = ust
        
    }
    
    
    
    ///commit 3
    ///commit 4
    //Commit 6
    //commit 7 
}
