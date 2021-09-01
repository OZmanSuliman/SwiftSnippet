//
//  ContentView.swift
//  Shared
//
//  Created by Osman Solomon on 29/08/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    @State private var animationAmount1 = 0.0

    
    var body: some View {
         Button("Tap Me") {
             withAnimation {
                 self.animationAmount += 360
             }
         }
         .padding(50)
         .background(Color.green)
         .foregroundColor(.white)
         .clipShape(Circle())
         .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))

        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount1 += 360
            }
        }
        .padding(50)
        .background(Color.orange)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount1), axis: (x: 0, y: 1, z: 0))
     }
    
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
