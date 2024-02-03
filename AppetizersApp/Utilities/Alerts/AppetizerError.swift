////AppetizersApp
//AppetizerError.swift

//Created by: Kareem on 11/11/23                      
//Copyright (c) 2023 Kareem

import Foundation

enum AppetizerError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}

enum FormError {
    case EmptyField
    case wrongInput
}
