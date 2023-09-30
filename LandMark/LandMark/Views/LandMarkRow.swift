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
            if(landmark.isFavorite){
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    Group{
        LandMarkRow(landmark: landmarks[0])
        LandMarkRow(landmark: landmarks[1])
    }
    .previewLayout(.fixed(width: 300, height: 70))
}

