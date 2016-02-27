//
//  ViewController.swift
//  Demo1
//
//  Created by Strat Aguilar on 2/26/16.
//  Copyright © 2016 Strat Aguilar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    var currentProfile: Profile?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
    self.profileImageView.clipsToBounds = true
    self.profileImageView.layer.borderWidth = 2
    self.profileImageView.layer.borderColor = UIColor.blackColor().CGColor
    self.profileImageView.userInteractionEnabled = true
    let tap = UITapGestureRecognizer(target: self, action: "selectPhoto:")
    tap.numberOfTapsRequired = 1
    self.profileImageView.addGestureRecognizer(tap)
    Profile.myProfile.addImage(UIImage(named: "guy1"))
    view.backgroundColor = UIColor.whiteColor()
    let defaultPerson = Profile(name: "Allison", age: 22, bio: "Hello, my name is Allison.  I like long walks on the beach, margaritas, singing in the rain, falling asleep on a cool summers eve...bla bla")
    defaultPerson.addImage(UIImage(named: "girl1"))
    
    profileImageView.image = defaultPerson.profileImage[0]
    nameLabel.text = defaultPerson.name
    ageLabel.text = String(defaultPerson.age)
    
    ageLabel.textColor = UIColor.whiteColor()
    nameLabel.textColor = UIColor.whiteColor()
    
    bioLabel.text = defaultPerson.biography
    
    currentProfile = defaultPerson
    
    
  }
    
    func selectPhoto(gesture: UITapGestureRecognizer){
        print("photo Selected")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("ProfileDetail") as! ProfileDetailViewController
        if let profile = currentProfile{
            vc.currentProfile = profile
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
    
    


}

