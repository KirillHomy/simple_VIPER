//
//  WelcomPresenter.swift
//  simple_VIPER
//
//  Created by Kirill Khomytsevych on 22.04.2023.
//

import Foundation

protocol WelcomPresenterProtocol: AnyObject {
    func viewDidLoad()
    func didShowImage()
    func didLoad(date: String?)
    func didLoad(weather: Int?)
}

class WelcomPresenter {

    // MARK: - External variables
    weak var view: WelcomViewProtocol?
    var router: WelcomRouterProtocol
    var interactor: WelcomInteractorProtocol

    // MARK: - Init
    init(router: WelcomRouterProtocol, interactor: WelcomInteractorProtocol) {
        self.router = router
        self.interactor = interactor
    }

}

// MARK: - WelcomPresenterProtocol
extension WelcomPresenter: WelcomPresenterProtocol {

    func viewDidLoad() {
        print("WelcomPresenter viewDidLoad")
        interactor.loadDate()
        interactor.loadWeather()
    }

    func didShowImage() {
        let temperature = interactor.temperature
        router.openImage(for: temperature)
    }

    func didLoad(date: String?) {
        view?.showDate(date: date ?? "No date")
    }

    func didLoad(weather: Int?) {
        let temperature = weather?.description ?? "No temperature"
        view?.showWeather(weather: temperature)
    }

}
