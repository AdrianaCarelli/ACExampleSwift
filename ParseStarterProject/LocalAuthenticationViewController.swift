//
//  LocalAuthenticationViewController.swift
//  ACExampleSwift
//
//  Created by Adriana Carelli on 11/05/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit
import LocalAuthentication

class LocalAuthenticationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let authenticationContext = LAContext()
        var error: NSError?
        
        if authenticationContext.canEvaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, error: &error){
            
            authenticationContext.evaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "We need to know you are"){ (success, error) -> Void in
                
                if success{
                    //User has authenticate
                }else{
                    
                    if let error = error{
                        
                        //there was an error
                        print(error)
                        
                    }else{
                        //User did not authenticate
                    }
                }
                
            }
        }else{
            //No touch id available
        }
  
        
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
