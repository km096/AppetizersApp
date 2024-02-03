//AppetizersApp
//AddToOrderButton.swift

//Created by: Kareem on 11/11/23                      
//Copyright (c) 2023 Kareem

import SwiftUI

struct AddToOrderButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 260, height: 50)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct AddToOrderButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToOrderButton(title: "test title")
    }
}
