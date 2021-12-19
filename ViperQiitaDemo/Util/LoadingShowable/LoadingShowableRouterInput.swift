//
//  LoadingShowableRouterInput.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/19.
//

import UIKit

protocol LoadingShowableRouterInput {
    var ownerViewController: UIViewController { get }
    
    func showLoadingPopup()
    func hideLoadingPopup()
}

extension LoadingShowableRouterInput {
    func showLoadingPopup() {
        let storyboard = UIStoryboard(name: "Loading", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? LoadingViewController else {
            fatalError("Loading does not exist")
        }
        ownerViewController.present(viewController, animated: false)
    }
    
    func hideLoadingPopup() {
        if ownerViewController.presentedViewController is LoadingViewController {
            ownerViewController.dismiss(animated: false)
        }
    }
}
