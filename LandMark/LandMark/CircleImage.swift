//
//  CircleImage.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

// image modifier
struct ImageEdit: ViewModifier{
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}
extension View{
    func useOnImage() -> some View {
        modifier(ImageEdit())
    }
}

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .useOnImage()
        
    }
}

#Preview {
    CircleImage()
}
