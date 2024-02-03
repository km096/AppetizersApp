////AppetizersApp
//Appetizer.swift

//Created by: Kareem on 11/11/23                      
//Copyright (c) 2023 Kareem

import Foundation

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let price: Double
    let protein: Int
    let carbs: Int
    let calories: Int
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "test appetizer",
                                           description: "this is the description for appetizer",
                                           imageURL: "",
                                           price: 99.99,
                                           protein: 99,
                                           carbs: 99,
                                           calories: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItem1 = Appetizer(id: 001,
                                           name: "test appetizer",
                                           description: "this is the description for appetizer",
                                           imageURL: "",
                                           price: 99.99,
                                           protein: 99,
                                           carbs: 99,
                                           calories: 99)
    
    static let orderItem2 = Appetizer(id: 002,
                                           name: "test appetizer",
                                           description: "this is the description for appetizer",
                                           imageURL: "",
                                           price: 99.99,
                                           protein: 99,
                                           carbs: 99,
                                           calories: 99)
    
    static let orderItem3 = Appetizer(id: 003,
                                           name: "test appetizer",
                                           description: "this is the description for appetizer",
                                           imageURL: "",
                                           price: 99.99,
                                           protein: 99,
                                           carbs: 99,
                                           calories: 99)
    
    
    static let orderItems = [orderItem1, orderItem2, orderItem3]

}


