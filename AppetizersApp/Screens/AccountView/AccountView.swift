//AppetizersApp
//AccountView.swift

//Created by: Kareem on 11/10/23                      
//Copyright (c) 2023 Kareem

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField: FormTxtField?
    
    enum FormTxtField {
        case firstName
        case lastName
        case email
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("First Name",
                              text: $viewModel.user.firstName)
                    .focused($focusedTextField, equals: .firstName)
                    .onSubmit { focusedTextField = .lastName }
                    .submitLabel(.next)
                    
                    TextField("Last Name",
                              text: $viewModel.user.lastName)
                    .focused($focusedTextField, equals: .lastName)
                    .onSubmit { focusedTextField = .email }
                    .submitLabel(.next)
                    
                    TextField("Email",
                              text: $viewModel.user.email)
                    .focused($focusedTextField, equals: .email)
                    .onSubmit { focusedTextField = nil }
                    .submitLabel(.continue)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    
                    DatePicker("Birthaday",
                               selection: $viewModel.user.birthDate,
                               in: Date().oneHundrdYearsAgo...Date().eighteenYearsAgo,
                               displayedComponents: .date)
                    
                    Button {
                        viewModel.saveUser()
                    } label: {
                        Text("Save Changes")
                            .foregroundColor(Color.brandPrimary)
                    }
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    HStack {
                        Text("Extra Napkins")
                        
                        Spacer()
                        
                        Toggle(isOn: $viewModel.user.extraNapkins) {
                            Text("")
                        }
                        .frame(width: 20, height: 15)
                        .scaleEffect(0.7)
                    }                    
                    
                    Toggle(isOn: $viewModel.user.frequentRefils) {
                        Text("Frequent Refills")
                    }
                } header: {
                    Text("Requests")
                }
            .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                
            }
            .navigationTitle("Account")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dismiss") { focusedTextField = nil }
                }
            }
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            .environmentObject(Order())
    }
}
