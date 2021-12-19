//
//  SecondPresenter.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

import Foundation

protocol SecondEventHandler: ScreenLoggableEventHandler {
}

protocol SecondUserInterface {
}

protocol SecondInteractorOutput: AnyObject {
}

final class SecondPresenter {
    private let userInterface: SecondUserInterface
    private let interactor: SecondInteractorInput
    private let router: SecondRouterInput
    
    init(userInterface: SecondUserInterface, interactor: SecondInteractorInput, router: SecondRouterInput) {
        self.userInterface = userInterface
        self.interactor = interactor
        self.router = router
    }
}

extension SecondPresenter: SecondEventHandler {
}

extension SecondPresenter: ScreenLoggableEventHandler {
    var screenName: String { "Second" }
    var screenLoggableInteractor: ScreenLoggableInteractorInput? { interactor }
}

extension SecondPresenter: SecondInteractorOutput {
}
