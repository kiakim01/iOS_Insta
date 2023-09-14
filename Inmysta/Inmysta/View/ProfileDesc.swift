//
//  ProfileDesc.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/14.
//

import UIKit
import SnapKit

class ProfileDesc : UIView {
    
    let container: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    //왜 여기는 불이 안들어오지 ?
    let firstLabel : UILabel = {
        let label = UILabel()
        label.text = "YaYa "
        return label
    }()
    
    
    let secondLabel : UILabel = {
        let label = UILabel()
        label.text = "적게 일하고 만히 벌게 해주세욕 "
        return label
    }()
    
    let thirdLabel : UILabel = {
        let label = UILabel()
        label.text = "제발"
        return label
    }()
    
    //meanig chekc
    override init (frame: CGRect){
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureUI(){
        self.addSubview(container)
        container.addSubview(firstLabel)
        container.addSubview(secondLabel)
        container.addSubview(thirdLabel)
        
        
//        container.backgroundColor = .systemYellow
        container.snp.makeConstraints{ make in
            make.width.equalTo(300)
            make.left.leftMargin.equalTo(25)
            //contents 사이즈를 반영하도록 수정
            make.height.equalTo(100)
        }
        
        
        firstLabel.font = .systemFont(ofSize: 17, weight: .semibold)
        firstLabel.snp.makeConstraints {make in
            make.top.equalTo(container.snp.top).offset(10)
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
