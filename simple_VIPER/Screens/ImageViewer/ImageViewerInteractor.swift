//
//  ImageViewerInteractor.swift
//  Super easy dev
//
//  Created by Kirill Khomytsevych on 22.04.2023
//

import UIKit

protocol ImageViewerInteractorProtocol: AnyObject {
    func getImageForCurrentTemperature() -> UIImage
}

class ImageViewerInteractor {

    // MARK: - External variables
    weak var presenter: ImageViewerPresenterProtocol?
    var temperature: Int

    // MARK: - Init
    init(temperature: Int) {
        self.temperature = temperature
    }

}

// MARK: - ImageViewerViewProtocol
extension ImageViewerInteractor: ImageViewerInteractorProtocol {

    func getImageForCurrentTemperature() -> UIImage {
        switch temperature {
        case -30...0:
            return UIImage(systemName: "snowflake") ?? UIImage()
        case 1...10:
            return UIImage(systemName: "cloud.fill") ?? UIImage()
        case 11...30:
            return  UIImage(systemName: "sun.min.fill") ?? UIImage()
        default:
            return UIImage()
        }
    }

}
