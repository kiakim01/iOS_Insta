//
//  ButtonArea.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/14.
//

import UIKit
import SnapKit

class ButtonSection : UIView {
    
    let container: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        return view
    }()
    
    let followButton : UIButton = {
        let button = UIButton()
        button.setTitle("Follow", for: .normal)
        return button
    }()
    
    let messageButton : UIButton = {
        let button = UIButton()
        button.setTitle("Message", for: .normal)
        return button
    }()
    
    let moreButton : UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        return button
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

