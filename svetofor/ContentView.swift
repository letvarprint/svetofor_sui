//
//  ContentView.swift
//  svetofor
//
//  Created by Alexandru Brixencov on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentColorIndex = 0
        let colors: [Color] = [.red, .yellow, .green]
    
    var body: some View {
        VStack {
            VStack {
                CircleLogoView(color: colors[0], opacity: currentColorIndex == 0 ? 1 : 0.15)
                CircleLogoView(color: colors[1], opacity: currentColorIndex == 1 ? 1 : 0.15)
                    .padding(15)
                CircleLogoView(color: colors[2], opacity: currentColorIndex == 2 ? 1 : 0.15)
                Spacer()
            }
            
            Button(action: {currentColorIndex = (currentColorIndex + 1) % 3}) {
                Text("Change color")
                    .font(.title)
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
    }
}

#Preview {
    ContentView()
}
