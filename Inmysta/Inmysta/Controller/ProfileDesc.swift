//
//  ProfileDesc.swift
//  Inmysta
//
//  Created by kiakim on 2023/09/14.
//

import UIKit
import SnapKit

class ProfileDesc : UIView {
    
    let containerStackView: UIStackView = {
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
    
}


