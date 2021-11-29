//
//  Router.swift
//  RouterSample
//
//  Created by Wataru Miyakoshi on 2021/11/29.
//

import Foundation
import UIKit

final class Router {
    static let shared:Router = .init()
    
    private init() {}
    
    private (set) var window:UIWindow?
    
    func showRoot(window:UIWindow?) {
        self.window = window
        window?.rootViewController = UIStoryboard.firstViewController
        window?.makeKeyAndVisible()
    }
}
