//
//  ViewController.swift
//  lottie uikit demo
//
//  Created by Osman Solomon on 30/08/2021.
//

import Lottie
import UIKit

class ViewController: UIViewController {
    var loopMode: LottieLoopMode = .loop
    var animationView = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(makeUIView(name: "blender"))
    }
    
    func makeUIView(name: String) -> UIView {
        let view = UIView(frame: .zero)
        
        animationView.animation = Animation.named(name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        view.frame = CGRect(x: 0, y: 0, width: 200, height: 200)

        return view
    }
}
