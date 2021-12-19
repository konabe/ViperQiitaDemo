//
//  LoadingShowableInteractorOutput.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/19.
//

protocol LoadingShowableInteractorOutput {
    var loadingShowableRouterInput: LoadingShowableRouterInput { get }
    
    func notifyToStartLoading()
    func notifyToEndLoading()
}

extension LoadingShowableInteractorOutput {
    func notifyToStartLoading() {
        loadingShowableRouterInput.showLoadingPopup()
    }
    
    func notifyToEndLoading() {
        loadingShowableRouterInput.hideLoadingPopup()
    }
}
