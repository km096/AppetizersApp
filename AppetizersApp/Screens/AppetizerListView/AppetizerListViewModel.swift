//AppetizersApp
//AppetizerListViewModel.swift

//Created by: Kareem on 11/11/23                      
//Copyright (c) 2023 Kareem

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers = [Appetizer]()
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getApeetizers()
                isLoading = false
            } catch {
                if let apError = error as? AppetizerError {
                    switch apError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.genericError
                }
                
                isLoading = false
            }
        }
    }

//    func getAppetizers() {
//        isLoading = true
//        NetworkManager.shared.getApeetizers { result in
//            DispatchQueue.main.async { [self] in
//                isLoading = false
//                switch result {
//                case .success(let appetizers):
//                    self.appetizers = appetizers
//
//                case .failure(let error):
//                    switch error {
//                    case .invalidURL:
//                        alertItem = AlertContext.invalidURL
//
//                    case .invalidResponse:
//                        alertItem = AlertContext.invalidResponse
//
//                    case .invalidData:
//                        alertItem = AlertContext.invalidData
//
//                    case .unableToComplete:
//                        alertItem = AlertContext.unableToComplete
//                    }
//                }
//            }
//
//        }
//    }
    
    
}
