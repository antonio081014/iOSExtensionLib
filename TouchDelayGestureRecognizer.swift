//
//  TouchDelayGestureRecognizer.swift
//
//  This gesture recognizer will delay touches to it's view,
//  so if for example some pan gesture recognizes the pan is happening,
//  the other possible gestures (like tap) will not fire.
//
//

import UIKit
import UIKit.UIGestureRecognizerSubclass

class TouchDelayGestureRecognizer: UIGestureRecognizer {
    
    // MARK: - Properties
    
    var timer: Timer?
    
    // MARK: - Init
    
    override init(target: Any?, action: Selector?) {
        super.init(target: target, action: action)
        delaysTouchesBegan = true
    }
    
    // MARK: - Override
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        timer = Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector(TouchDelayGestureRecognizer.fail), userInfo: nil, repeats: false)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        fail()
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent) {
        fail()
    }
    
    func fail() {
        state = .failed
    }
    
    override func reset() {
        timer?.invalidate()
        timer = nil
    }
    
}
