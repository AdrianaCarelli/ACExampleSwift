//
//  InAppPurchaseViewController.swift
//  ACExampleSwift
//
//  Created by Adriana Carelli on 16/03/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit
import Parse

class InAppPurchaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        PFPurchase.buyProduct("gold") {
            (error: NSError?) -> Void in
            if error == nil {
                // Run UI logic that informs user the product has been purchased, such as displaying an alert view.
            }
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

    @IBAction func buyButtonPressed(sender: AnyObject) {
        
        PFPurchase.buyProduct("gold") {
            (error: NSError?) -> Void in
            if error == nil {
                // Run UI logic that informs user the product has been purchased, such as displaying an alert view.
            }
        }

    }
   
}
