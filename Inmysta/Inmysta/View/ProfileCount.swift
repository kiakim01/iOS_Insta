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
    
    
    func configureUI() {
        self.addSubview(container)
        container.addSubview(postBox)
        postBox.addSubview(postTitleLabel)
        postBox.addSubview(postCountLabel)
        container.addSubview(followerBox)
        followerBox.addSubview(followerCountLabel)
        followerBox.addSubview(followerTitleLabel)
        container.addSubview(followingBox)
        followingBox.addSubview(followingCountLabel)
        followingBox.addSubview(followingTitleLabel)
        
        
//        container.layer.borderWidth = 1
        container.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
        
//        postBox.backgroundColor = UIColor.systemYellow
        postBox.snp.makeConstraints{ make in
            postBox.snp.makeConstraints{ make in
                make.top.bottom.equalToSuperview()
                make.width.equalTo(60)
                make.left.equalTo(container.snp.left).offset(10)
            }
        }
        
        postCountLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        postCountLabel.snp.makeConstraints{ make in
            make.top.equalTo(postBox.snp.top).offset(15)
            make.centerX.equalToSuperview()
            
        }
        postTitleLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(postBox.snp.bottom).offset(-10)
            make.centerX.equalToSuperview()
        }
        
//        followerBox.backgroundColor = UIColor.systemYellow
        followerBox.snp.makeConstraints{ make in
            make.top.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
            make.width.equalTo(60)
            make.top.bottom.equalToSuperview()
        }
        
        followerCountLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        followerCountLabel.snp.makeConstraints{ make in
            make.top.equalTo(followerBox.snp.top).offset(15)
            make.centerX.equalToSuperview()
        }
        followerTitleLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(followerBox.snp.bottom).offset(-10)
            make.centerX.equalToSuperview()
        }
        
//        followingBox.backgroundColor = UIColor.systemYellow
        followingBox.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.right.equalTo(container.snp.right).offset(-10)
            make.width.equalTo(70)
        }
        
        followingCountLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        followingCountLabel.snp.makeConstraints{ make in
            make.top.equalTo(followingBox.snp.top).offset(15)
            make.centerX.equalToSuperview()
        }
        followingTitleLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(followingBox.snp.bottom).offset(-10)
            make.centerX.equalToSuperview()
        }
    }
    
    
    
    
}
