//
//  GradientText.swift
//  SwiftUI_Recipes_HowTOS
//
//  Created by Mahmoud Maamoun on 29/04/2024.
//

import SwiftUI

struct GradientText: View {
    var body: some View {
        // MARK: - 1. Basic Gradient Text
        Text("iOS")
            .font(.system(size: 140))
            .fontWeight(.black)
            .foregroundStyle(.teal.gradient)
        
        // MMARK: - 2. Linear Gradient Text
        Text("iOS")
            .font(.system(size: 140))
            .fontWeight(.black)
            .foregroundStyle(
                LinearGradient(colors: [.pink,.purple,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
    }
}

#Preview {
    GradientText()
}
