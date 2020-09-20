//
//  ViewController.swift
//  testAnimation
//
//  Created by Никита Микрюков on 17.09.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet var animationImageView: SpringImageView!
    @IBOutlet var codeView: UITextView!
    @IBOutlet var textAnimationButton: SpringButton!
    private var originCoordinate: CGFloat?
    
    // MARK: - Private properties
    
    private var animations = Animation.getAnimations()
   
     // MARK: - IB Actions
    
    @IBAction func showTextCodeButtom() {
        if (codeView.isHidden){
            codeView.isHidden = false
        } else {
             codeView.isHidden = true
        }
    }
    
    @IBAction func runSpringAnimationButton(_ sender: SpringButton) {
        
        showCurrentAnimation()
        showCodeAnimation()
        
        sender.animation = "swing" // это анимация кнопки
        sender.animate() // без этого анимация не будет работать
        
    }
    
    //MARK: - Private methods
    
    private func showCurrentAnimation() {
        animationImageView.animation = animations.animationPreset
        animationImageView.curve = animations.curve
        animationImageView.force = animations.force
        animationImageView.duration = animations.duration
        animationImageView.damping = animations.damping
        animationImageView.velocity = animations.velocity
        animationImageView.rotate = animations.rotate
        animationImageView.animate()
    
        animations = Animation.getAnimations()
        
        textAnimationButton.setTitle(animations.animationPreset, for: .normal)
        
    }
   private func showCodeAnimation() {
    codeView.text = """
        animationPreset: \(animations.animationPreset)
        curve: \(animations.curve)
        force: \(String(format: "%.02f", animations.force))
        duration: \(String(format: "%.02f", animations.duration))
        damping: \(String(format: "%.02f", animations.damping))
        velocity: \(String(format: "%.02f", animations.velocity))
        rotate: \(String(format: "%.02f", animations.rotate))
        """
    }
}

