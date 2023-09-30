//
//  LandMarkList.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct LandMarkList: View {
    @State private var showFavorites = false
    
    var filteredLandmarks: [LandMark] {
           landmarks.filter { landmark in
               (!showFavorites || landmark.isFavorite)
           }
       }
    
    var body: some View {
        NavigationStack {
            List {
                // toggle view as the first child to toggle the showfavorites
                Toggle("Show favorites", isOn: $showFavorites)
                
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink{
                        LandMarkDetail(landmark: landmark)
                    }label: {
                        LandMarkRow(landmark: landmark)
                    }
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
