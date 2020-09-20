//
//  Managers.swift
//  testAnimation
//
//  Created by Никита Микрюков on 19.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    private init() {}
    
    let animationPresets = ["slideLeft",
                           "slideRight",
                           "slideDown",
                           "slideUp",
                           "squeezeLeft",
                           "squeezeRight",
                           "squeezeDown",
                           "squeezeUp",
                           "fadeIn",
                           "fadeOut",
                           "fadeOutIn",
                           "fadeInLeft",
                           "fadeInRight",
                           "fadeInDown",
                           "fadeInUp",
                           "zoomIn",
                           "zoomOut",
                           "fall",
                           "shake",
                           "pop",
                           "flipY",
                           "morph",
                           "squeeze",
                           "flash",
                           "wobble",
                           "swing"]
    
    let curves = ["easeIn",
                  "easeOut",
                  "easeInOut",
                  "linear",
                  "spring",
                  "easeInSine",
                  "easeOutSine",
                  "easeInOutSine",
                  "easeInQuad",
                  "easeOutQuad",
                  "easeInOutQuad",
                  "easeInCubic",
                  "easeOutCubic",
                  "easeInOutCubic",
                  "easeInQuart",
                  "easeOutQuart",
                  "easeInOutQuart",
                  "easeInQuint",
                  "easeOutQuint",
                  "easeInOutQuint",
                  "easeInExpo",
                  "easeOutExpo",
                  "easeInOutExpo",
                  "easeInCirc",
                  "easeOutCirc",
                  "easeInOutCirc",
                  "easeInBack",
                  "easeOutBack",
                  "easeInOutBack"]
}

