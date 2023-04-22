//
//  ImageViewerPresenter.swift
//  Super easy dev
//
//  Created by Kirill Khomytsevych on 22.04.2023
//

protocol ImageViewerPresenterProtocol: AnyObject {
    func viewDidLoad()
}

class ImageViewerPresenter {

    // MARK: - External variables
    weak var view: ImageViewerViewProtocol?
    var router: ImageViewerRouterProtocol
    var interactor: ImageViewerInteractorProtocol

    // MARK: - Init
    init(interactor: ImageViewerInteractorProtocol, router: ImageViewerRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }

}

// MARK: - ImageViewerViewProtocol
extension ImageViewerPresenter: ImageViewerPresenterProtocol {

    func viewDidLoad() {
        let image = interactor.getImageForCurrentTemperature()
        view?.showImage(image: image)
    }

}
