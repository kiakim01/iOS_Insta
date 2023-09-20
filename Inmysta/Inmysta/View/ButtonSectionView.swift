//
//  ButtonSectionView.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/18.
//

import UIKit
import SnapKit

extension ButtonSection {
    func configureUI(){
        self.addSubview(container)
        container.addSubview(followButton)
        container.addSubview(messageButton)
        container.addSubview(moreButton)
        
        
        let screenWidth = UIScreen.main.bounds.width
        let buttonWidth = (screenWidth - (30 + 36) )/2
        container.bounds.size.width = screenWidth
        //[fix] superView의 높이와 통일해주고 싶음
        container.bounds.size.height = 60
        container.layer.addBorder([.bottom], color: UIColor.systemGray2, width: 1)
        container.snp.makeConstraints{ make in
            make.right.left.top.bottom.equalToSuperview()
        }
        

        followButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        followButton.backgroundColor = UIColor.systemBlue
        followButton.layer.cornerRadius = 5
        followButton.snp.makeConstraints{ make in
            make.centerY.equalToSuperview()
            make.left.equalTo(container.snp.left).offset(20)
            make.width.equalTo(buttonWidth)
            make.height.equalTo(30)
            
        }
        
        messageButton.setTitleColor(UIColor.black, for: .normal)
        messageButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        messageButton.layer.borderColor = UIColor.systemGray2.cgColor
        messageButton.layer.borderWidth = 2
        messageButton.layer.cornerRadius = 5
        messageButton.snp.makeConstraints{ make in
            make.centerY.equalToSuperview()
            make.left.equalTo(followButton.snp.right).offset(8)
            make.right.equalTo(moreButton.snp.left).offset(-8)
            make.width.equalTo(buttonWidth)
            make.height.equalTo(30)
        }
        
        moreButton.setTitleColor(UIColor.black, for: .normal)
        moreButton.layer.borderColor = UIColor.systemGray2.cgColor
        moreButton.layer.borderWidth = 2
        moreButton.layer.cornerRadius = 5
        //        moreButton.backgroundColor = UIColor.systemYellow
        moreButton.snp.makeConstraints{ make in
            make.centerY.equalToSuperview()
            make.right.equalTo(container.snp.right).offset(-20)
            make.width.equalTo(30)
            make.height.equalTo(30)
        }
        
        
        
    }
}
