//
//  ContentView.swift
//  LandMark
//
//  Created by Muktar Hussein on 30/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkList()
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
