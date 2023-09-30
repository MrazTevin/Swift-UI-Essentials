//
//  LandMarkRow.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct LandMarkRow: View {
    // add the landmark as a stored property
    var landmark: LandMark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
                
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Group{
        LandMarkRow(landmark: landmarks[3])
        LandMarkRow(landmark: landmarks[4])
    }
    .previewLayout(.fixed(width: 300, height: 70))
}

