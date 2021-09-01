//
//  CustomFont.swift
//  CustomFont
//
//  Created by Osman Solomon on 01/09/2021.
//

import SwiftUI

struct TitleTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleTextModifier() -> ModifiedContent<Self, TitleTextModifier> {
        return modifier(TitleTextModifier())
    }
}
