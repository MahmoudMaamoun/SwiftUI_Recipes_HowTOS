//
//  AsyncImage.swift
//  SwiftUI_Recipes_HowTOS
//
//  Created by Mahmoud Maamoun on 29/04/2024.
//

import SwiftUI
extension Image {
    
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 120)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
    
    
}
struct AsyncImageView: View {
    
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
        
        // MARK: - 1. BASIC
        
        //           AsyncImage(url: URL(string: imageURL))
        //                .frame(maxWidth: 180, maxHeight: 100)
        
        
        // MARK: -2. SCALE
//        AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
        //            //MARK: - 3. PLACEHOLDER
        
        //            AsyncImage(url: URL(string: imageURL)) { image in
        //                image
        //                    .imageModifier()
        //                    .padding(40)
        //            } placeholder: {
        //                Image(systemName: "photo.circle.fill")
        //                    .iconModifier()
        //
        //            }
        
        //MARK: - 4. PHASE
        //        AsyncImage(url:URL(string: imageURL) ) { phase in
        //
        //                // Succusess  The image successfully loaded
        //                // Failure    The image fails to load with an error
        //                // Empty      No image Loaded
        //
        //                if let image = phase.image {
        //                    image
        //                        .imageModifier()
        //                        .padding(40)
        //                } else if phase.error != nil {
        //                    Image(systemName: "photo.circle.fill")
        //                        .iconModifier()
        //                } else {
        //                    Image(systemName: "photo.circle.fill")
        //                        .iconModifier()
        //                }
        //
        //            }
        
        //MARK: - 5 ANIMATIONS
        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25) )) { phrase in
            
            switch phrase {
            case .empty:
                Image(systemName: "photo.circle.fill")
                    .iconModifier()
            case .success(let image):
                image
                    .imageModifier()
                    .padding(40)
//                    .transition(.slide)
                    .transition(.scale)
            case .failure(_):
                Image(systemName: "photo.circle.fill")
                    .iconModifier()
            @unknown default:
                Image(systemName: "photo.circle.fill")
                    .iconModifier()
                
            }
            
        }
    }
                                                  

        
      
        
        
}

#Preview {
    AsyncImageView()
}
