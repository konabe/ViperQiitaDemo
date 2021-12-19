//
//  FirstRouter.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/18.
//

import CoreGraphics
import UIKit

protocol FirstRouterInput: LoadingShowableRouterInput, LoginTransitableRouterInput {
    func showSecond()
}

class FirstRouter {
    private unowned let viewController: FirstViewController
    
    init(viewController: FirstViewController) {
        self.viewController = viewController
    }
    
    static func assembleModules() -> FirstViewController {
        let storyboard = UIStoryboard(name: "First", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? FirstViewController else {
            fatalError("First does not exist")
        }
        let interactor = FirstInteractor()
        let router = FirstRouter(viewController: viewController)
        let presenter = FirstPresenter(userInterface: viewController, interactor: interactor, router: router)
        viewController.eventHandler = presenter
        interactor.presenter = presenter
        return viewController
    }
}

extension FirstRouter: FirstRouterInput {
    func showSecond() {
        let vc = SecondRouter.assembleModule()
        viewController.navigationController?.pushViewController(vc, animated: true)
    }
}

extension FirstRouter: LoadingShowableRouterInput {
    var ownerViewController: UIViewController { viewController }
}
