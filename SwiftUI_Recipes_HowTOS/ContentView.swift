//
//  ContentView.swift
//  SwiftUI_Recipes_HowTOS
//
//  Created by Mahmoud Maamoun on 29/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            VStack {
                    GradientText()
                    .frame(maxHeight: 150)
                    AsyncImageView()
                    
             }
        })
    }
}

#Preview {
    ContentView()
}
