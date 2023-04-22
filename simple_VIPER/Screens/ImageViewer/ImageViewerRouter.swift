//
//  ImageViewerRouter.swift
//  Super easy dev
//
//  Created by Kirill Khomytsevych on 22.04.2023
//

protocol ImageViewerRouterProtocol {
}

class ImageViewerRouter {

    // MARK: - External variables
    weak var viewController: ImageViewerViewController?

}

// MARK: - ImageViewerViewProtocol
extension ImageViewerRouter: ImageViewerRouterProtocol {
}
