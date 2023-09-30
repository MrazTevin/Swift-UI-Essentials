//
//  LandMarkList.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct LandMarkList: View {

    var body: some View {
        List(landmarks) {landmark in
            LandMarkRow(landmark: landmark)
        }
        .listStyle(.insetGrouped)
    }
}

#Preview {
    LandMarkList()
}
