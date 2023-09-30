//
//  LandMarkList.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct LandMarkList: View {

    var body: some View {
        NavigationStack {
            List(landmarks) {landmark in
                NavigationLink{
                    LandMarkDetail()
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
