//
//  ContentView.swift
//  MyGeometryReader
//
//  Created by Osman Solomon on 04/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Text("Left")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.33)
                    .background(Color.yellow)
                Text("Right")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.67)
                    .background(Color.orange)
            }
        }
        .frame(height: 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
