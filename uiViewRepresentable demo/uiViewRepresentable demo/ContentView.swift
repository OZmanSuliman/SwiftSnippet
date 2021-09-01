//
//  ContentView.swift
//  uiViewRepresentable demo
//
//  Created by Osman Solomon on 30/08/2021.
//

import SwiftUI

struct ContentView: View {
    @State var text = NSMutableAttributedString(string: "place holder")

      var body: some View {
          TextView(text: $text)
              .frame(width: 100, height: 20, alignment: .center)
              .border(Color.green)
              
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
