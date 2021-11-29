//
//  SecondViewController.swift
//  RouterSample
//
//  Created by Wataru Miyakoshi on 2021/11/29.
//

import UIKit
final class SecondViewController:UIViewController {
    private var myLabel:UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Second"
        return label
    }()
    
    private var myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Firstへ遷移", for: UIControl.State.normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(tapButton(_:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // viewの設定
        view.addSubview(myLabel)
        view.backgroundColor = .white
        
        // ラベルの設定
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        // ボタンの配置
        view.addSubview(myButton)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myButton.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 50),
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    // 直接遷移
    @objc func tapButton(_ sender:UIButton) {
        let vc = UIStoryboard.firstViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}
