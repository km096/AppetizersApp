//AppetizersApp
//DismissButton.swift

//Created by: Kareem on 11/11/23                      
//Copyright (c) 2023 Kareem

import SwiftUI

struct DismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .foregroundColor(.black)
                .frame(width: 44, height: 44)
        }
    }
}

struct DismissButton_Previews: PreviewProvider {
    static var previews: some View {
        DismissButton()
    }
}
