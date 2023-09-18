//
//  ProfileDescView.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/18.
//

import UIKit

extension ProfileDesc {
    func configureUI(){
        self.addSubview(containerStackView)
        containerStackView.addArrangedSubview(firstLabel)
        containerStackView.addArrangedSubview(secondLabel)
        containerStackView.addArrangedSubview(thirdLabel)
        
        
//        containerStackView.backgroundColor = .systemYellow
        containerStackView.snp.makeConstraints{ make in
            make.width.equalTo(300)
            make.left.leftMargin.equalTo(25)
      //[desc] :stackView에 높이를 지정하게되면, 간격이 망가지는 상황이 발생, stackView가 어떻게든 공간을 채우려고 하기 때문
//            make.height.equalTo(90)
        }
        
        //[desc] 간격 동일하게 셋팅
//       containerStackView.distribution = .fillEqually
        //[desc] 간격 지정
        containerStackView.setCustomSpacing(20, after: firstLabel)
        containerStackView.setCustomSpacing(20, after: secondLabel)
        
        
        firstLabel.font = .systemFont(ofSize: 17, weight: .semibold)
        firstLabel.snp.makeConstraints {make in
            make.top.equalTo(containerStackView.snp.top).offset(10)
        }
        
        
        secondLabel.snp.makeConstraints{make in
            make.top.equalTo(firstLabel.snp.bottom).offset(5)
        }
        
        thirdLabel.textColor = UIColor.systemBlue
        thirdLabel.snp.makeConstraints{make in
            make.top.equalTo(secondLabel.snp.bottom).offset(5)
            
        }
        
    }
}
