//
//  Storyboard+.swift
//  RouterSample
//
//  Created by Wataru Miyakoshi on 2021/11/29.
//

import UIKit
extension UIStoryboard {
    static var firstViewController:FirstViewController {
        guard let vc = UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as? FirstViewController
        else {
            return FirstViewController()
        }
        return vc
    }
}
