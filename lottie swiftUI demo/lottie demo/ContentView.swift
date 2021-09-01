//
//  ContentView.swift
//  lottie demo
//
//  Created by Osman Solomon on 30/08/2021.
//

import SwiftUI
import Lottie

struct ContentView: View {

    var  body: some View {
        LottieView(name: "blender", loopMode: .loop)
                  .frame(width: 250, height: 250)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
