//
//  uiViewRepresentable.swift
//  uiViewRepresentable
//
//  Created by Osman Solomon on 30/08/2021.
//

import Foundation
import SwiftUI

struct TextView: UIViewRepresentable {
    @Binding var text: NSMutableAttributedString

    func makeUIView(context: Context) -> UITextView {
        UITextView()
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = text
    }
}
