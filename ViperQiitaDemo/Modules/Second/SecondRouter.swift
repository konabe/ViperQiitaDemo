//
//  SecondRouter.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

import UIKit

protocol SecondRouterInput: AnyObject {
}

final class SecondRouter {
    private unowned let viewController: SecondViewController
    
    init(viewController: SecondViewController) {
        self.viewController = viewController
    }
    
    static func assembleModule() -> SecondViewController {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? SecondViewController else {
            fatalError("Second does not exist")
        }
        let interactor = SecondInteractor()
        let router = SecondRouter(viewController: viewController)
        let presenter = SecondPresenter(userInterface: viewController, interactor: interactor, router: router)
        viewController.eventHandler = presenter
        interactor.presenter = presenter
        return viewController
    }
}

extension SecondRouter: SecondRouterInput {
}
