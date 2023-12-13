//
//  CircleLogoView.swift
//  svetofor
//
//  Created by Alexandru Brixencov on 13.12.2023.
//

import SwiftUI

struct CircleLogoView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 175, height: 175)
            .overlay(Circle().stroke(Color.black, lineWidth: 6))
            .shadow(radius: 10)
    }
}

#Preview {
    CircleLogoView(color: .green, opacity: 1)
}
