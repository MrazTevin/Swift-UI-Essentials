//
//  Modifiers.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import Foundation
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
            .ignoresSafeArea()
    }
}

extension View{
    func useOnImage() -> some View {
        modifier(ImageEdit())
    }
}

