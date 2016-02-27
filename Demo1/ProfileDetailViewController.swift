//
//  ProfileDetailViewController.swift
//  Demo1
//
//  Created by Strat Aguilar on 2/27/16.
//  Copyright © 2016 Strat Aguilar. All rights reserved.
//

import UIKit


class ProfileDetailViewController: UIViewController {
    
    var currentProfile: Profile?

    @IBOutlet weak var connectButton: UIButton!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var rejectButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImageView.layer.cornerRadius = mainImageView.frame.size.width / 2
        mainImageView.clipsToBounds = true
        mainImageView.layer.borderWidth = 3
        mainImageView.layer.borderColor = UIColor.blackColor().CGColor
        
        if let profile = currentProfile{
            mainImageView.image = profile.profileImage[0]
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

    @IBAction func rejectionAction(sender: UIButton) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    @IBAction func conntionAction(sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("Connection") as! ConnectionViewController
        vc.matchProfile = currentProfile
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
