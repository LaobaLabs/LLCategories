//
//  UIViewController+ShowAlert.swift
//  DayCareRegistry
//
//  Created by Will Chilcutt on 12/14/16.
//  Copyright © 2016 Department Of Code. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController
{
    func showErrorAlert(withMessage message : String)
    {
        let title = "Error"
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Dismiss",
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
