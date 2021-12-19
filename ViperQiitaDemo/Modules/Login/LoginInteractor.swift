//
//  LoginInteractor.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

import Foundation

protocol LoginInteractorInput: AnyObject {
}

final class LoginInteractor {
    weak var presenter: LoginInteractorOutput?
}

extension LoginInteractor: LoginInteractorInput {
    
}
