//
//  DataService.swift
//  breakpoint
//
//  Created by Araz Sinjary on 6/20/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import Foundation
import Firebase

//this to access our database url.
let DB_BASE = Database.database().reference()

class DataService {
    //singleton class meaning to make it accessible to any other class throughout the lifecycle.
    static let instance = DataService()
    
    //variables
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_GROUPS = DB_BASE.child("groups")
    private var _REF_FEED = DB_BASE.child("feed")
    
    //variables public
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    var REF_GROUPS: DatabaseReference  {
        return _REF_GROUPS
    }
    var REF_FEED: DatabaseReference {
        return _REF_FEED
    }
    
    //create func to allow us to push a user into the user's feed basically it's going to add a user into the users folder
    func createDBUser(uid: String, userData: Dictionary<String, Any>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
    //post
    func uploadPost(withMessage message: String, forUID uid: String, withGroupKey groupKey: String?, sendComplete: @escaping (_ status: Bool) -> ()) {
        if groupKey != nil {
            //send to groups ref
        } else {
            REF_FEED.childByAutoId().updateChildValues(["content": message, "senderId": uid])
            sendComplete(true)
        }
    }
    
    func getAllFeedMessages(handler: @escaping (_ messages: [Message]) -> ()) {
        var messageArray = [Message]()
        REF_FEED.observeSingleEvent(of: .value) { (feedMessageSnapshot) in
            guard let feedMessageSnapshot = feedMessageSnapshot.children.allObjects as? [DataSnapshot] else { return }
            
            for message in feedMessageSnapshot {
                let content = message.childSnapshot(forPath: "content").value as! String
                let senderId = message.childSnapshot(forPath: "senderId").value as! String
                let message = Message(content: content, senderId: senderId)
                messageArray.append(message)
            }
            
            handler(messageArray)
        }
    }
    
}















