//
//  ScreenLoggableEventHandler.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

protocol ScreenLoggableEventHandler {
    func screenShown()
    var screenName: String { get }
    var screenLoggableInteractor: ScreenLoggableInteractorInput? { get }
}

extension ScreenLoggableEventHandler {
    func screenShown() {
        screenLoggableInteractor?.logScreen(screenName: screenName)
    }
}
