//
//  ViewController.swift
//  IOU
//
//  Created by Harshavardhan K on 09/08/18.
//  Copyright © 2018 Harshavardhan K. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class RegisterViewController: UIViewController, GIDSignInDelegate, GIDSignInUIDelegate {
    
    var thisUser: User!
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        //
        
        if let error = error {
            print("\(error.localizedDescription)")
            
        } else {
            
            let name = user.profile.name
            let userID = user.userID
            let email = user.profile.email
            let tokenID = user.authentication.idToken
            
            thisUser = User(name: name!, email: email!, tokenID: tokenID!, userID: userID!)
            
            performSegue(withIdentifier: "goToList", sender: nil)
        }
    }
    
    
    //MARK:- GOOGLE SIGN IN BUTTON
    
    private func initGoogleSignInButton() {
        
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
        
        let signInButton = GIDSignInButton()
        
        signInButton.center = CGPoint(x: self.view.frame.width / 2.5, y: self.view.frame.height / 1.5)
        signInButton.style = .wide
        signInButton.layer.zPosition = 2
        
        self.view.addSubview(signInButton)

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // Call Google Sign In Button method
        initGoogleSignInButton()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        if segue.identifier == "goToList" {
            
            if let destinationViewcontroller = segue.destination as? ListViewController {
                destinationViewcontroller.thisUser = thisUser
                print("Segue completed..")
                
            }
            
        }
        
     }
 
}

