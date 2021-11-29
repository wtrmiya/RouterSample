//
//  FirstViewController.swift
//  RouterSample
//
//  Created by Wataru Miyakoshi on 2021/11/29.
//

import UIKit

final class FirstViewController:UIViewController {
    
    @IBAction func tapButton(_ sender: Any) {
        let vc = SecondViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}
