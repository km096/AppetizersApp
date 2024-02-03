//AppetizersApp
//AppetizerDetailView.swift

//Created by: Kareem on 11/11/23                      
//Copyright (c) 2023 Kareem

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    
    @EnvironmentObject var order: Order
    @Binding var isShowingDetail: Bool
        
    var body: some View {
        
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 300, height: 200)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories",
                                  value: "\(appetizer.calories)")
                    
                    NutritionInfo(title: "Carbs",
                                  value: "\(appetizer.carbs) g")
                    
                    NutritionInfo(title: "Protein",
                                  value: "\(appetizer.protein) g")
                }
            }

            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandardButtonStyle())
//            .standardButtonStyle()
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            Button {
                isShowingDetail = false
            } label: {
                DismissButton()                    
            }

        }
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(false))
            .environmentObject(Order())
    }
}
