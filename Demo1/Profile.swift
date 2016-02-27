//
//  Profile.swift
//  Demo1
//
//  Created by Strat Aguilar on 2/26/16.
//  Copyright © 2016 Strat Aguilar. All rights reserved.
//

import Foundation
import UIKit


class Profile {
    var name: String
    var age: Int
    var biography: String
    var profileImage: [UIImage]
    
    static let myProfile = Profile(name: "Bob", age: 24, bio: "memememememem")
    
    init(name: String, age:Int, bio: String){
        self.name = name
        self.age = age
        self.biography = bio
        profileImage = [UIImage]()
    }
    
    func addImage(image: UIImage?) -> Bool{
        if let image = image{
            profileImage.append(image)
            return true
        }
        return false
        
    }
    
}