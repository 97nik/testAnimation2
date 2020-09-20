//
//  Animation.swift
//  testAnimation
//
//  Created by Никита Микрюков on 19.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

import CoreGraphics
struct Animation {
    let animationPreset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let damping: CGFloat
    let velocity: CGFloat
    let rotate: CGFloat
    
    static func getAnimations() -> Animation {
        return Animation(
            animationPreset: DataManager.shared.animationPresets.randomElement() ?? "pop",
            curve: DataManager.shared.curves.randomElement() ?? "spring",
            force: CGFloat.random(in: 1...2),
            duration: CGFloat.random(in: 1...3),
            damping: CGFloat.random(in: 0.1...0.5),
            velocity: CGFloat.random(in: 0.1...0.5),
            rotate: CGFloat.random(in: 0.1...0.5)
        )
    }
}
