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
    
    private var vcNum:Int = 0
    
    func showRoot(window:UIWindow?) {
        vcNum = Int.random(in: 0...1)
        self.window = window
        if vcNum == 0 {
            window?.rootViewController = UIStoryboard.firstViewController
        } else {
            window?.rootViewController = SecondViewController()
        }
        window?.makeKeyAndVisible()
    }
}
