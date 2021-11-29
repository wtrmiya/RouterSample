//
//  SecondViewController.swift
//  RouterSample
//
//  Created by Wataru Miyakoshi on 2021/11/29.
//

import UIKit
final class SecondViewController:UIViewController {
    var myLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        label.text = "Second"
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myLabel)
        view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}
