//
//  Storyboard+.swift
//  RouterSample
//
//  Created by Wataru Miyakoshi on 2021/11/29.
//

import UIKit
extension UIStoryboard {
    static var firstViewController:FirstViewController {
        if let vc = UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as? FirstViewController
        {
            return vc
        }
        return FirstViewController()
    }
}
