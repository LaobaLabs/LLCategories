//
//  NSObject+Classname.swift
//  DayCareRegistry
//
//  Created by Will Chilcutt on 12/14/16.
//  Copyright © 2016 Department Of Code. All rights reserved.
//

import Foundation

extension NSObject
{
    var className: String
    {
        return NSStringFromClass(self as! AnyClass).components(separatedBy: ".").last ?? ""
    }
    
    public class var className: String
    {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
}
