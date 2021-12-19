//
//  SecondViewController.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

import UIKit

final class SecondViewController: BaseViewController<SecondEventHandler> {
    @IBOutlet weak var button: UIButton! {
        willSet {
            newValue.setTitleColor(.systemPurple, for: .normal)
        }
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        
    }
    
}

extension SecondViewController: SecondUserInterface {
}
