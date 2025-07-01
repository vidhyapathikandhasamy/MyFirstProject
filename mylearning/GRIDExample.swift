//
//  GRIDExample.swift
//  mylearning
//
//  Created by Vidhyapathi on 17/06/25.
//

import SwiftUI

struct GRIDExample: View {
    @State private var items: [Int] = Array(1...4)
    
    private var column = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: column, spacing: 20) {
                ForEach(items, id: \.self) { item in
                    Text("Item \(item)")
                        .frame(width: 80, height: 80)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
            }
            .padding()
            HStack {
                Button(action: {
                                    if !items.isEmpty {
                                        items.removeLast()
                                    }
                                }) {
                                    Text("Decrease")
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.red)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                
                Button(action: {
                    items.append((items.last ?? 0) + 1)
                                }) {
                                    Text("Increment")
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.green)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
            }.padding()
        }
        .animation(.default, value: items)
    }
}






protocol FirstProtocol {
    func firstFunction()
}

protocol SecondProtocol {
    func secondFunction()
}

protocol ThirdProtocol {
    func thirdFunction()
}

typealias ProtocolComposition = FirstProtocol & SecondProtocol & ThirdProtocol

class CustomAnimal: ProtocolComposition {
    func firstFunction() {
        print("#First Function")
    }
    
    func secondFunction() {
        print("#Second Function")
    }
    
    func thirdFunction() {
        print("#Third Function")
    }
    
}


protocol CustomDelegate: AnyObject {
    func customDelegateFunction(info: ProtocolComposition)
}

class CheckDelegate: CustomDelegate {
    func customDelegateFunction(info: ProtocolComposition) {
        print("Delegate Called")
    }
}
