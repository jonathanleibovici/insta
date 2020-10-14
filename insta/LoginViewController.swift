//
//  LoginViewController.swift
//  insta
//
//  Created by Jonathan Leibovici on 10/13/20.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    
    
    
    
    @IBOutlet weak var usernamefield: UITextField!
    
    @IBOutlet weak var PasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func onsignIn(_ sender: Any) {
        let username = usernamefield.text!
        let password = PasswordField.text!
        
        PFUser.logInWithUsername(inBackground:username, password:password){(user,error)in
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }else{
                print("error:\(String(describing: error?.localizedDescription))")
            }
            
        }
    }
    
    @IBAction func onsignUp(_ sender: Any) {
        let user = PFUser()
        //let is for const
        user.username = usernamefield.text
        user.password = PasswordField.text
//         user.email = "email@example.com"
//        user["phone"] = "415-392-0202"
        user.signUpInBackground { (success, error) in
            if success{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            }else{
                print("error:\(String(describing: error?.localizedDescription))")
            }
        }
//        user.signUpInBackground { (success,error)in
//            if success {
//                self.performSegue(withIdentifier: "loginSegue", sender: nil)
//            }else{
//                print("error:\(String(describing: error?.localizedDescription))")
//            }
//        }
//
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
