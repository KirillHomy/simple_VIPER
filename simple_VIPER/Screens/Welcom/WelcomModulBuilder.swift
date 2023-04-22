//
//  WelcomModulBuilder.swift
//  simple_VIPER
//
//  Created by Kirill Khomytsevych on 22.04.2023.
//

import UIKit

class WelcomModulBuilder {

    static func build() -> WelcomViewController {
        let interactor = WelcomInteractor()
        let router = WelcomRouter()
        let presenter = WelcomPresenter(router: router, interactor: interactor)
        let storyboard = UIStoryboard(name: "Welcom", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "WelcomViewController") as! WelcomViewController
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        router.viewController = viewController
        return viewController
    }

}
