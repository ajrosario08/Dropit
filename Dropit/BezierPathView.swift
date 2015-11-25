//
//  BezierPathView.swift
//  Dropit
//
//  Created by Anthony Rosario on 11/24/15.
//  Copyright © 2015 Anthony Rosario. All rights reserved.
//

import UIKit

class BezierPathView: UIView {
    
   private var bezierPaths = [String: UIBezierPath]()
    
    func setPath(path: UIBezierPath?, named name: String) {
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    override func drawRect(rect: CGRect) {
        for (_,path) in bezierPaths {
            path.stroke()
        }
    }
}
