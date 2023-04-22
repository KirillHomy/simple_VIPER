//
//  WelcomInteractor.swift
//  simple_VIPER
//
//  Created by Kirill Khomytsevych on 22.04.2023.
//

import Foundation

protocol WelcomInteractorProtocol: AnyObject {
    func loadDate()
    func loadWeather()
    var temperature: Int { get }
}

class WelcomInteractor {

    // MARK: - External variables
    weak var presenter: WelcomPresenterProtocol?
    var temperature = 0

    // MARK: - Private constants
    private let dateService = DateService()
    private let weatherService = WeatherService()
}

// MARK: - WelcomInteractorProtocol
extension WelcomInteractor: WelcomInteractorProtocol {

    func loadDate() {
        dateService.getDate { [weak self] date in
            guard let sSelf = self else { return }
            sSelf.presenter?.didLoad(date: date.description)
        }
    }

    func loadWeather() {
        weatherService.getWeather { [weak self] temperature in
            guard let sSelf = self else { return }
            sSelf.presenter?.didLoad(weather: temperature)
            sSelf.temperature = temperature
        }
    }

}
