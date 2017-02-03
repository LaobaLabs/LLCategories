//
//  UIViewController+ShowAlert.swift
//  DayCareRegistry
//
//  Created by Will Chilcutt on 12/14/16.
//  Copyright © 2016 Department Of Code. All rights reserved.
//

import Foundation
import UIKit

let kUIViewControllerShowAlertExtensionErrorTitle = "Error"
let kUIViewControllerShowAlertExtensionDismissActionTitle = "Dismiss"

extension UIViewController
{
    func showErrorAlert(withMessage message : String)
    {
        let alertController = UIAlertController(title: kUIViewControllerShowAlertExtensionErrorTitle,
                                                message: message,
                                                preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: kUIViewControllerShowAlertExtensionDismissActionTitle,
                                         style: .cancel,
                                         handler: nil)
        
        alertController.addAction(cancelAction)
        
        var viewControllerToPresentFrom : UIViewController?
        
        if let tabBarController = self.tabBarController
        {
            viewControllerToPresentFrom = tabBarController
        }
        else if let navController = self.navigationController
        {
            viewControllerToPresentFrom = navController
        }
        else
        {
            viewControllerToPresentFrom = self
        }
        
        viewControllerToPresentFrom?.present(alertController,
                                       animated: true,
                                       completion: nil)
    }
}
