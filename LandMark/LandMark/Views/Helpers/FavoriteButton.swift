//
//  FavoriteButton.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool


     var body: some View {
         Button {
             isSet.toggle()
         } label: {
             Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                 .labelStyle(.iconOnly)
                 .foregroundColor(isSet ? .yellow : .gray)
         }
     }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
