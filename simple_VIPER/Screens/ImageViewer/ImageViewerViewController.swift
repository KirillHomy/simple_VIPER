//
//  ImageViewerViewController.swift
//  Super easy dev
//
//  Created by Kirill Khomytsevych on 22.04.2023
//

import UIKit

protocol ImageViewerViewProtocol: AnyObject {
    func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {

    // MARK: - Private IBOutlet
    @IBOutlet private weak var imageView: UIImageView!

    // MARK: - External variables
    var presenter: ImageViewerPresenterProtocol?

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
 
        initialize()
    }

}

// MARK: - Private functions
private extension ImageViewerViewController {

    func initialize() {
        presenter?.viewDidLoad()
    }

}

// MARK: - ImageViewerViewProtocol
extension ImageViewerViewController: ImageViewerViewProtocol {
    
    func showImage(image: UIImage?) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
    }

}
