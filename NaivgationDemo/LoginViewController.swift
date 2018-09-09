//
//  LoginViewController.swift
//  NaivgationDemo
//
//  Created by Sujin Shrestha on 9/9/18.
//  Copyright © 2018 Sujin Shrestha. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        navigationToMainInterface()
    }
    
    private func navigationToMainInterface() {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let mainNavigationVC = mainStoryBoard.instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController
            else {
            return
        }
        
        print(mainNavigationVC.topViewController)
        print(mainNavigationVC.viewControllers)
        
        if let mainVC = mainNavigationVC.topViewController as? ViewController {
            mainVC.username = "Test"
        }
        
        present(mainNavigationVC, animated: true, completion: nil)
    }
}
