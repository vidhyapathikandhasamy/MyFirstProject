//
//  MyStateAndBinding.swift
//  mylearning
//
//  Created by Vidhyapathi on 17/06/25.
//

import SwiftUI

struct MyStateAndBinding: View {
    
    @State private var text = "Hello, World!"
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: MyBindingExample(text: $text)) {
                Text(text)
                    .navigationTitle("Welcome")
            }
            
        }
        
       
    }
}

#Preview {
    MyStateAndBinding()
}

struct MyBindingExample: View {
    @Binding var text: String
    var body: some View {
        TextField("Enter text", text: $text)
            .onSubmit {
                text = text.uppercased()
            }
        Text(text)
    }
}
