//
//  ContentView.swift
//  mylearning
//
//  Created by Vidhyapathi on 16/06/25.
//

import SwiftUI


struct ParentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        
        VStack {
            CustomTextField(isSecureTextEntry: false, text: $username, placeholder: "Usernmae/Email")
                .padding(.bottom, 10)
            CustomTextField(isSecureTextEntry: true, text: $password, placeholder: "Password")
                .padding(.bottom, 10)
            CustomButton(title: "Login") {
                print("Hi there ")
            }
        }
        .padding()
    }
}

struct CustomTextField: View {
    
    var isSecureTextEntry: Bool = false
    @Binding var text: String
    var placeholder: String
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        Group {
            if isSecureTextEntry {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
                
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(16)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.5), lineWidth: 1))
    }
}

struct CustomButton: View {
    
    var title: String
    
    var tapAction: () -> Void
    
    var body: some View {
        Button(title) {
            tapAction()
        }
    }
}

struct ToggleView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Switch", isOn: $isOn)
    }
}

#Preview {
    ParentView()
}



actor MainCustomer {
    
}

final class Customer007 {
    
}

class Customer008: @unchecked Sendable {
    
}
