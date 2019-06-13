//
//  DrawView.swift
//  NER
//
//  Created by Maribel Montejano on 6/5/19.
//  Copyright © 2019 Maribel Montejano. All rights reserved.
//

import UIKit

class DrawView: UIView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(DrawView.doubleTap(_:)))
        doubleTapRecognizer.numberOfTapsRequired = 2
        addGestureRecognizer(doubleTapRecognizer)
    }

    @objc func doubleTap(_ gestureRecognizer: UIGestureRecognizer) {
        print("Recognized a double tap")
        
        let menu = UIMenuController.shared
        
        becomeFirstResponder()
        
        let codeEntity = UIMenuItem(title: "Entity", action: #selector(DrawView.selectEntity(_:)))
        menu.menuItems = [codeEntity]
        
    }
    
    @objc func selectEntity(_ sender: UIMenuController) {
        print("Selected!")
    }
}
