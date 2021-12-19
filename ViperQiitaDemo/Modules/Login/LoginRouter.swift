//
//  LoginRouter.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

import UIKit

protocol LoginRouterInput {
    func showFirst()
}

final class LoginRouter {
    private unowned let viewController: LoginViewController
    
    init(viewController: LoginViewController) {
        self.viewController = viewController
    }
    
    static func assembleModule() -> LoginViewController {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? LoginViewController else {
            fatalError("Login does not exist")
        }
        let interactor = LoginInteractor()
        let router = LoginRouter(viewController: viewController)
        let presenter = LoginPresenter(userInterface: viewController, interactor: interactor, router: router)
        viewController.eventHandler = presenter
        interactor.presenter = presenter
        return viewController
    }
}

extension LoginRouter: LoginRouterInput {
    func showFirst() {
        let vc = FirstRouter.assembleModules()
        viewController.navigationController?.popToRootViewController(animated: false)
        viewController.navigationController?.pushViewController(vc, animated: true)
    }
}
