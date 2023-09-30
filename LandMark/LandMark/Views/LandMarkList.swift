//
//  LandMarkList.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct LandMarkList: View {
    @State private var showFavorites = true
    
    var filteredLandmarks: [LandMark] {
           landmarks.filter { landmark in
               (!showFavorites || landmark.isFavorite)
           }
       }
    
    var body: some View {
        NavigationStack {
            List(filteredLandmarks) {landmark in
                NavigationLink{
                    LandMarkDetail(landmark: landmark)
                }label: {
                    LandMarkRow(landmark: landmark)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    LandMarkList()
}
