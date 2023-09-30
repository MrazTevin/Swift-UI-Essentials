//
//  ContentView.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // add the map View to the main app
            MapView()
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .ignoresSafeArea(edges: .top)
            
            // add the circle Image view
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack{
                    Text("Nairobi National Park")
                    Spacer()
                    Text("Nairobi")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
