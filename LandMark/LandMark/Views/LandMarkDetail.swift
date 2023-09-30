//
//  LandMarkDetail.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct LandMarkDetail: View {
    var landmark: LandMark

    var body: some View {
        ScrollView {
            // add the map View to the main app
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .ignoresSafeArea(edges: .top)
            
            // add the circle Image view
            CircleImage(image: landmark.image)
                .useOnImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                Text("About \(landmark.description)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandMarkDetail(landmark: landmarks[0])
}
