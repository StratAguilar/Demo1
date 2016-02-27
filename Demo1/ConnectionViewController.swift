//
//  ConnectionViewController.swift
//  Demo1
//
//  Created by Strat Aguilar on 2/27/16.
//  Copyright © 2016 Strat Aguilar. All rights reserved.
//

import UIKit

class ConnectionViewController: UIViewController {

    @IBOutlet weak var femaleImageView: UIImageView!
    @IBOutlet weak var maleImageView: UIImageView!
    
    var matchProfile: Profile?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let match = matchProfile{
            
            femaleImageView.layer.cornerRadius = femaleImageView.frame.size.width / 2
            maleImageView.layer.cornerRadius = maleImageView.frame.size.width / 2
            femaleImageView.clipsToBounds = true
            maleImageView.clipsToBounds = true 
            femaleImageView.image = match.profileImage[0]
            maleImageView.image = Profile.myProfile.profileImage[0]
            

        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
