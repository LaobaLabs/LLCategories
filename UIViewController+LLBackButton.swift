//
//  UIViewController+BackButton.swift
//  TimeSinceLast
//
//  Created by Will Chilcutt on 1/18/17.
//  Copyright © 2017 Laoba Labs. All rights reserved.
//

import Foundation

let kUIViewControllerBackButtonExtensionSegueBackButtonTitle = "Back"

extension UIViewController
{
    func setUpBackButton()
    {
        let backItem = UIBarButtonItem()
        backItem.title = kUIViewControllerBackButtonExtensionSegueBackButtonTitle
        
        navigationItem.backBarButtonItem = backItem
    }
}
