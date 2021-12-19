//
//  ScreenLoggableInteractorInput.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

protocol ScreenLoggableInteractorInput {
    func logScreen(screenName: String)
}

extension ScreenLoggableInteractorInput {
    func logScreen(screenName: String) {
        print(screenName)
    }
}
