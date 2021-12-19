//
//  FirstViewController.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/16.
//

import UIKit

class FirstViewController: BaseViewController<FirstEventHandler> {
    @IBOutlet weak var button: UIButton! {
        willSet {
            newValue.setTitleColor(.systemTeal, for: .normal)
        }
    }
    @IBOutlet weak var `switch`: UISwitch! {
        willSet {
            newValue.isOn = UserDefaults.standard.bool(forKey: "isSuccessful")
        }
    }
    @IBAction func valueChanged(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "isSuccessful")
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        eventHandler?.didTapButton()
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @IBAction func didTapNextButton(_ sender: Any) {
        eventHandler?.didTapNextButton()
    }
}

extension FirstViewController: FirstUserInterface {
    func enableButton() {
        button.isEnabled = true
        button.setTitleColor(.systemTeal, for: .normal)
    }
    
    func disableButton() {
        button.isEnabled = false
        button.setTitleColor(.systemGray, for: .normal)
    }
    
    func updateButtonText(_ text: String) {
        button.setTitle(text, for: .normal)
    }
}
