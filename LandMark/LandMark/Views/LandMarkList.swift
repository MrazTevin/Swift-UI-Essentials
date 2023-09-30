//
//  LandMarkList.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct LandMarkList: View {

    var body: some View {
        List {
            LandMarkRow(landmark: landmarks[0])
            LandMarkRow(landmark: landmarks[1])
        }
    }
}

#Preview {
    LandMarkList()
}
