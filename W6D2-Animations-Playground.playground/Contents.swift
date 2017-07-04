//: Playground - noun: a place where people can play

import UIKit

import UIKit
import PlaygroundSupport

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 375.0))
containerView.backgroundColor = UIColor.white

PlaygroundPage.current.liveView = containerView

let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
greenView.center = CGPoint(x: containerView.center.x, y: 25)
greenView.backgroundColor = UIColor.green
containerView.addSubview(greenView)

//UIView.animate(withDuration: 2.0) { 
//    greenView.transform = CGAffineTransform(scaleX: 2, y: 2)
//}

//UIView.animate(withDuration: 2.0, delay: 0, options: .curveEaseIn, animations: {
//    
//    
//}, completion: nil)

//UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 4, options: [.repeat], animations: {
//    greenView.center = containerView.center
//
//}, completion: nil)

UIView.animateKeyframes(withDuration: 2.0, delay: 0, options: [], animations: { 
    
    UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: { 
        greenView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
    })
    
    UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
        greenView.transform = CGAffineTransform(rotationAngle: CGFloat(0.5*Double.pi))
    })
    
}, completion: nil)









//let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//
//greenView.backgroundColor = UIColor.green
//greenView.center = containerView.center
//containerView.addSubview(greenView)

//UIView.animate(withDuration: 2.0) { 
//    greenView.transform = CGAffineTransform(scaleX: 2, y: 2)
//    greenView.alpha = 0
//}

//UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 4, options: [.repeat, .curveEaseIn], animations: {
//    
//    greenView.center = containerView.center
//    
//}, completion: nil)

//UIView.animateKeyframes(withDuration: 2.0, delay: 0, options: [], animations: { 
//    
//    UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: { 
//        greenView.transform = CGAffineTransform(rotationAngle: CGFloat(0.5*Double.pi))
//    })
//    
//    UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
//        greenView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
//    })
//    
//    UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
//        greenView.transform = CGAffineTransform(rotationAngle: CGFloat(1.5*Double.pi))
//    })
//    
//    UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
//        greenView.transform = CGAffineTransform(rotationAngle: CGFloat(2*Double.pi))
//    })
//    
//}, completion: nil)

