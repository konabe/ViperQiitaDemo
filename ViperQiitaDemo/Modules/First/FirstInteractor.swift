//
//  FirstInteractor.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/16.
//

import Foundation
protocol FirstInteractorInput: AnyObject, ScreenLoggableInteractorInput {
    func fetchDate()
}

class FirstInteractor {
    var presenter: FirstInteractorOutput?
}

extension FirstInteractor: FirstInteractorInput {
    func fetchDate() {
        presenter?.notifyToStartLoading()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            if UserDefaults.standard.bool(forKey: "isSuccessful") {
                self.presenter?.successToFetchDate(Date().description)
            } else {
                self.presenter?.failureToFetchDate()
            }
            self.presenter?.notifyToEndLoading()
        }
    }
}
