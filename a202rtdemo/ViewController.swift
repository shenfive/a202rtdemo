//
//  ViewController.swift
//  a202rtdemo
//
//  Created by 申潤五 on 2022/3/20.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    var ref:DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Auth.auth().signInAnonymously(completion: nil)
        
        
        
        ref = Database.database().reference()
        
        ref.child("appStatus/ver").observeSingleEvent(of: .value) { snapshot in
            print("Data is : \(snapshot.value as! Int)")
        }
        
        ref.child("appStatus/setting/name").setValue("Danny Test 2")
        
        
    }


}

