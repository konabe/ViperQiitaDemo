//
//  BaseViewController.swift
//  ViperQiitaDemo
//
//  Created by 小鍋涼太 on 2021/12/19.
//

import UIKit

class BaseViewController<EventHandler>: UIViewController {
    var eventHandler: EventHandler?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let screenLoggableEventHandler = eventHandler as? ScreenLoggableEventHandler
        screenLoggableEventHandler?.screenShown()
    }
}
