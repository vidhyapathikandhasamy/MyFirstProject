//
//  mylearningApp.swift
//  mylearning
//
//  Created by Vidhyapathi on 16/06/25.
//

import SwiftUI

@main
struct mylearningApp: App {
    var body: some Scene {
        WindowGroup {
            MatchedGeometryExample()
        }
    }
}

protocol MyFirstDelegate {
    func add()
    func update()
}

struct MatchedGeometryExample: View {
    @Namespace private var animationNamespace
    @State private var isExpanded = false

    var body: some View {
        VStack {
            if isExpanded {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.blue)
                    .matchedGeometryEffect(id: "box", in: animationNamespace)
                    .frame(width: 300, height: 300)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.red)
                    .matchedGeometryEffect(id: "box", in: animationNamespace)
                    .frame(width: 100, height: 100)
            }

            Button("Toggle") {
                withAnimation(.spring()) {
                    isExpanded.toggle()
                }
            }
        }
    }
}
