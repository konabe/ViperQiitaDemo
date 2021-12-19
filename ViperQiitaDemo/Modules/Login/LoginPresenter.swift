//
//  LoginPresenter.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

import Foundation

protocol LoginEventHandler {
    func didTapLoginButton()
}

protocol LoginUserInterface {
}

protocol LoginInteractorOutput: AnyObject {
}

final class LoginPresenter {
    private let userInterface: LoginUserInterface
    private let interactor: LoginInteractorInput
    private let router: LoginRouterInput
    
    init(userInterface: LoginUserInterface, interactor: LoginInteractorInput, router: LoginRouterInput) {
        self.userInterface = userInterface
        self.interactor = interactor
        self.router = router
    }
}

extension LoginPresenter: LoginEventHandler {
    func didTapLoginButton() {
        router.showFirst()
    }
}

extension LoginPresenter: LoginInteractorOutput {
}
