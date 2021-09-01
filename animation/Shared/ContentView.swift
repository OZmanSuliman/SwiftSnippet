//
//  ContentView.swift
//  Shared
//
//  Created by Osman Solomon on 29/08/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    @State private var animationAmount2: CGFloat = 1
    @State private var animationAmount3: CGFloat = 1
    @State private var animationAmount4: CGFloat = 1
    @State private var animationAmount5: CGFloat = 1
    @State private var animationAmount6: CGFloat = 1
    @State private var animationAmount7: CGFloat = 1
    
    var body: some View {
        VStack{
            Button("Tap Me") {
                if animationAmount == 1{  self.animationAmount += 1}else{
                    self.animationAmount -= 1
                }
                
            }
            .padding(40)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            .animation(.default)
            
            Button("Tap Me") {
                if animationAmount7 == 1{  self.animationAmount7 += 1}else{
                    self.animationAmount7 -= 1
                }
                
            }
            .padding(40)
            .background(Color.pink)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount7)
            .animation(.interpolatingSpring(stiffness: 50, damping: 1))

            
            Button("Tap Me") {
                if animationAmount2 == 1{  self.animationAmount2 += 1}else{
                    self.animationAmount2 -= 1
                }
                
            }
            .padding(40)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount2)
            .animation(.easeInOut(duration: 2))
            
            Button("Tap Me") {
                if animationAmount3 == 1{  self.animationAmount3 += 1}else{
                    self.animationAmount3 -= 1
                }
                
            }
            .padding(40)
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount3)
            .animation(
                Animation.easeInOut(duration: 1)
                    .repeatForever(autoreverses: true)
            )
            
            
            Button("Tap Me") {
                if animationAmount4 == 1{  self.animationAmount4 += 1}else{
                    self.animationAmount4 -= 1
                }
                
            }
            .padding(40)
            .background(Color.orange)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount4)
            .animation(
                Animation.easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
            )
            
            Button("Tap Me") {
                if animationAmount5 == 1{  self.animationAmount5 += 1}else{
                    self.animationAmount5 -= 1
                }
                
            }
            .padding(40)
            .background(Color.yellow)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount5)
            .animation(.easeInOut(duration: 2)
                        .delay(1)
            )
            Button("Tap Me") {
                // self.animationAmount += 1
            }
            .padding(40)
            .background(Color.purple)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.purple)
                    .scaleEffect(animationAmount6)
                    .opacity(Double(2 - animationAmount6))
                    .animation(
                        Animation.easeOut(duration: 1)
                            .repeatForever(autoreverses: false)
                    )
            )
            .onAppear {
                self.animationAmount6 = 2
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
