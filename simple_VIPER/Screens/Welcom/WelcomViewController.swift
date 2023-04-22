//
//  WelcomViewController.swift
//  simple_VIPER
//
//  Created by Kirill Khomytsevych on 22.04.2023.
//

import UIKit

protocol WelcomViewProtocol: AnyObject {
    func showDate(date: String)
    func showWeather(weather: String)
}

class WelcomViewController: UIViewController {

    // MARK: - Private IBOutlet
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var weatherLabel: UILabel!

    // MARK: - External variables
    var presenter: WelcomPresenterProtocol?

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.viewDidLoad()
    }

    // MARK: - Private IBAction
    @IBAction private func showImageAction(_ sender: Any) {
        presenter?.didShowImage()
    
    }
}

// MARK: - WelcomPresenter
extension WelcomViewController: WelcomViewProtocol {

    func showDate(date: String) {
        DispatchQueue.main.async {
            self.dateLabel.text = date
        }
    }

    func showWeather(weather: String) {
        DispatchQueue.main.async {
            self.weatherLabel.text = weather
        }
    }

}
