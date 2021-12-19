//
//  LoginViewController.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

import UIKit

final class LoginViewController: BaseViewController<LoginEventHandler> {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        eventHandler?.didTapLoginButton()
    }
}

extension LoginViewController: LoginUserInterface {
}
