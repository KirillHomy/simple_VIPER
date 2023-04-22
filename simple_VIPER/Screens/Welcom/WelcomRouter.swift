//
//  WelcomRouter.swift
//  simple_VIPER
//
//  Created by Kirill Khomytsevych on 22.04.2023.
//

import Foundation

protocol WelcomRouterProtocol: AnyObject {
    func openImage(for temperature: Int)
}

class WelcomRouter {

    // MARK: - External variables
    weak var viewController: WelcomViewController?

}

// MARK: - WelcomRouterProtocol
extension WelcomRouter: WelcomRouterProtocol {

    func openImage( for temperature: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temperature )
        viewController?.present(vc, animated: true)
    }


}
