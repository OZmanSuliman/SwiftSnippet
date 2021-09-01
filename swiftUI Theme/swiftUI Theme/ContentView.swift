//
//  ContentView.swift
//  swiftUI Theme
//
//  Created by Osman Solomon on 01/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .titleTextModifier()
                
                Text("btn")
                    .foregroundColor(.blue)
                    .customButton()
            }
            
            .navigationTitle("hi bitch")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 
