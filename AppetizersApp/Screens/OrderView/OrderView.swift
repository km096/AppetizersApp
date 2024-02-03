//AppetizersApp
//OrderView.swift

//Created by: Kareem on 11/10/23                      
//Copyright (c) 2023 Kareem

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("place order")
                    } label: {
//                        AddToOrderButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")

                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 30)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items on your order.\nPlease add an appetizer.")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
    
   struct OrderView_Previews: PreviewProvider {
        static var previews: some View {
            OrderView()
                .environmentObject(Order())
        }
    }
}
