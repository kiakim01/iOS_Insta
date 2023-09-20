//
//  ProfileCount.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/14.
//

import UIKit
import SnapKit

class ProfileCount: UIView {
    
    let container : UIStackView = {
        let box = UIStackView()
        return box
    }()
    
    let postBox : UIView = {
        let onebox = UIView()
        return onebox
    }()
    
    let postCountLabel : UILabel = {
        let label = UILabel()
        label.text = "0"
        return label
    }()
    
    let postTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "post"
        return label
    }()
    
    
    let followerBox : UIView = {
        let onebox = UIView()
        return onebox
    }()
    
    let followerCountLabel : UILabel = {
        let label = UILabel()
        label.text = "0"
        return label
    }()
    
    let followerTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "follower"
        return label
    }()
    
    
    let followingBox : UIView = {
        let onebox = UIView()
        return onebox
    }()
    
    let followingCountLabel : UILabel = {
        let label = UILabel()
        label.text = "0"
        return label
    }()
    
    let followingTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "following"
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")

    }
}



