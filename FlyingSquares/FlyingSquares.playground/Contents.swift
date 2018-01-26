//: Playground - noun: a place where people can play
import PlaygroundSupport
import UIKit

import UIKit
import PlaygroundSupport

let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)
liveView.backgroundColor = .orange

PlaygroundPage.current.liveView = liveView

let smallFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFrame)
square.backgroundColor = .purple

liveView.addSubview(square)

UIView.animate(withDuration: 1.0, animations: {
    square.backgroundColor = .orange
    square.frame = CGRect(x: 150, y: 150, width: 200, height:
        200)
}) { (_) in
    
    UIView.animate(withDuration: 3.0) {
        square.backgroundColor = .purple
        square.frame = smallFrame
    }
}
