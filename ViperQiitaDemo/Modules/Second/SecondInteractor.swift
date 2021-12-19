//
//  SecondInteractor.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

import Foundation

protocol SecondInteractorInput: AnyObject, ScreenLoggableInteractorInput {
}

final class SecondInteractor {
    weak var presenter: SecondInteractorOutput?
}

extension SecondInteractor: SecondInteractorInput {
    
}
