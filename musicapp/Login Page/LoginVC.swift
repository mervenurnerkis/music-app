//
//  LoginVC.swift
//  musicapp
//
//  Created by Merve Nur Nerkis on 4.10.2023.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var registerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        segmentOutlet.setTitleTextAttributes(titleTextAttributes, for: .normal)
        
       // self.view.bringSubviewToFront(LoginVC)
        
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubviewToFront(loginView)
        case 1:
            self.view.bringSubviewToFront(registerView)
        default:
            break
        }
        
    }
    
}
