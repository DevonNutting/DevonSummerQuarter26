//
//  ContentView.swift
//  PracticeProjectA
//
//  Created by HGP on 6/15/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Image Element
            Image(systemName: "cloud.sun.fill")
                // Fill in color for image
                .symbolRenderingMode(.multicolor)
                // Resize image bigger
                .imageScale(.large)
                // ???
                .foregroundStyle(.tint)
            
            Image("headshot")
                // Make the image resizable
                .resizable()
                // Fill the frame with the image
                .scaledToFill()
                // Set the diameter of the circle
                .frame(maxWidth: 250, maxHeight: 400)
                // Crop the image into a circle
                .clipShape(Circle())
                // Create a circular overlay and shadow
                .overlay(
                    Circle()
                        .stroke(.yellow, lineWidth: 7)
                )
            
            // The text element
            Text("Hello, Devon!")
                // Makes text bold
                .bold()
                // Increases font size
                .font(.largeTitle)
                // Recolor the text
                .foregroundStyle(.white)
        }
        // Adds spacing around VStack
        .padding()
        // Set the frame size of the VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        // Change background color
        .background(.blue.gradient)
        
    }
}

#Preview {
    ContentView()
}
