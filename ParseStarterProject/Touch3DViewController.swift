//
//  Touch3DViewController.swift
//  ACExampleSwift
//
//  Created by Adriana Carelli on 16/09/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit

class Touch3DViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if #available(iOS 9.0, *) {
            if traitCollection.forceTouchCapability == UIForceTouchCapability.Available {
                
                registerForPreviewingWithDelegate(self, sourceView: view)
                
            } else {
                
                print("3D touch not available")
                
            }
        } else {
            // Fallback on earlier versions
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

extension Touch3DViewController: UIViewControllerPreviewingDelegate {
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        
        let peekViewController = storyboard?.instantiateViewControllerWithIdentifier("peekViewController") as! PeekViewController
        
        return peekViewController
        
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        
        let popViewController = storyboard?.instantiateViewControllerWithIdentifier("popViewController") as! PopViewController
        
        showViewController(popViewController, sender: self)
        
    }
    
    
    
    
    
    
}
