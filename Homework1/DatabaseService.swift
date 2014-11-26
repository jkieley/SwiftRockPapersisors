//
//  DatabaseService.swift
//  Homework1
//
//  Created by Kieley, James P on 11/25/14.
//  Copyright (c) 2014 Kieley, James P. All rights reserved.
//

import Foundation
import Squeal

public class DatabaseService{

    
    public func createUserTable(){
        let db = getDb()
        db.createTable("users",
            definitions:[
                "user_id INTEGER PRIMARY KEY",
                "username TEXT",
                "sex TEXT",
                "age INTEGER",
            ])
    }
    
    public func createUser(user: User){
        let db = getDb();
        
        var error: NSError?
        if let rowId = db.insertInto("users", values:["username":user.username,"sex":user.sex,"age":user.age], error:&error) {
            // success
        } else {
            // failure
            println(error);
        }
    }
    
    private func getDb() -> Database {
        let dirs : [String]? = NSSearchPathForDirectoriesInDomains(.LibraryDirectory, .UserDomainMask, true) as? [String]
        var documentsDirectory = dirs![0]
        let db = Database(path:documentsDirectory.stringByAppendingPathComponent("/data.db"))!
        return db
    }
    

}