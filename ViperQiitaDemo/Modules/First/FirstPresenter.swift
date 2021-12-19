//
//  FirstPresenter.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/16.
//

protocol FirstEventHandler: ScreenLoggableEventHandler {
    func didTapButton()
    func didTapNextButton()
}

protocol FirstUserInterface {
    func disableButton()
    func enableButton()
    func updateButtonText(_ text: String)
}

protocol FirstInteractorOutput: LoadingShowableInteractorOutput {
    func successToFetchDate(_ text: String)
    func failureToFetchDate()
}

class FirstPresenter {
    private let userInterface: FirstUserInterface
    private let router: FirstRouterInput
    private let interactor: FirstInteractorInput
    
    init(
        userInterface: FirstUserInterface,
        interactor: FirstInteractorInput,
        router: FirstRouterInput
    ) {
        self.userInterface = userInterface
        self.interactor = interactor
        self.router = router
    }
}

extension FirstPresenter: FirstEventHandler {
    func didTapButton() {
        userInterface.disableButton()
        interactor.fetchDate()
    }
    
    func didTapNextButton() {
        router.showSecond()
    }
}

extension FirstPresenter: ScreenLoggableEventHandler {
    var screenName: String { "First" }
    var screenLoggableInteractor: ScreenLoggableInteractorInput? { interactor }
}

extension FirstPresenter: FirstInteractorOutput {
    func successToFetchDate(_ text: String) {
        userInterface.enableButton()
        userInterface.updateButtonText(text)
    }
    
    func failureToFetchDate() {
        userInterface.enableButton()
        router.showLogin()
    }
}

extension FirstPresenter: LoadingShowableInteractorOutput {
    var loadingShowableRouterInput: LoadingShowableRouterInput { router }
}
