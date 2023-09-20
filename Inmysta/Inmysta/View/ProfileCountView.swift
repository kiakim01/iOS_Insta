//
//  ProfileCountView.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/18.
//


import UIKit

extension ProfileCount {
    func configureUI() {
        self.addSubview(container)
        container.addArrangedSubview(postBox)
        postBox.addSubview(postTitleLabel)
        postBox.addSubview(postCountLabel)
        container.addArrangedSubview(followerBox)
        followerBox.addSubview(followerCountLabel)
        followerBox.addSubview(followerTitleLabel)
        container.addArrangedSubview(followingBox)
        followingBox.addSubview(followingCountLabel)
        followingBox.addSubview(followingTitleLabel)
        

        
        container.snp.makeConstraints { make in
//            make.width.lessThanOrEqualTo(maxmumWidth)
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
