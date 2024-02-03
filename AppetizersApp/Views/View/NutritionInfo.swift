//AppetizersApp
//NutritionInfo.swift

//Created by: Kareem on 11/11/23                      
//Copyright (c) 2023 Kareem

import SwiftUI

struct NutritionInfo: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

struct NutritionInfo_Previews: PreviewProvider {
    static var previews: some View {
        NutritionInfo(title: "test", value: "00")
    }
}
