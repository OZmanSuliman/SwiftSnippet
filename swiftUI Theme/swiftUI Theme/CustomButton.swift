//
//  CustomButton.swift
//  CustomButton
//
//  Created by Osman Solomon on 01/09/2021.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: UIScreen.main.bounds.width - 30, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color.newPrimaryColor))
            .padding(.bottom, 8)
    }
}


extension View {
    func customButton() -> ModifiedContent<Self, ButtonModifier> {
        return modifier(ButtonModifier())
    }
}
