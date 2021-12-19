//
//  LoginTransitableRouterInput.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/19.
//

import UIKit

protocol LoginTransitableRouterInput {
    var ownerViewController: UIViewController { get }
    func showLogin()
}

extension LoginTransitableRouterInput {
    func showLogin() {
        let vc = LoginRouter.assembleModule()
        ownerViewController.navigationController?.pushViewController(vc, animated: false)
    }
}
