//
//  WeatherService.swift
//  simple_VIPER
//
//  Created by Kirill Khomytsevych on 22.04.2023.
//

import Foundation

final class WeatherService {

    func getWeather(completion: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let temperature = Int.random(in: -30...30 )
            completion(temperature)
        }
    }

}
