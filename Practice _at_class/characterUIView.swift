//
//  characterUIView.swift
//  Practice _at_class
//
//  Created by Thiện Tùng on 12/17/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class characterUIView: UIView {

    var imageView = UIImageView()
    var nameLabel = UILabel()
    var status = UIButton()
    var stt: Bool = false
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        status.addTarget(self, action: #selector(likeButton), for: .touchUpInside)
    }
    
    @objc func likeButton(){
        print("touch")
        stt = !stt
        if stt == true {
            status.setImage(UIImage(named: "liked"), for: .normal)
        } else {
            status.setImage(UIImage(named: "unlike"), for: .normal)
        }
    }
    
    func setupChar(NameOfImage: String, NameOfChar: String){
        self.addSubview(imageView)
        self.addSubview(nameLabel)
        self.addSubview(status)
        //Image
        imageView.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.width)
        imageView.image = UIImage(named: NameOfImage)
        imageView.backgroundColor = .brown
        imageView.contentMode = .scaleToFill
        //Label
        nameLabel.frame = CGRect(x: 0, y: imageView.bounds.size.height, width: imageView.bounds.size.width * 0.7, height: 30)
        nameLabel.text = NameOfChar
        nameLabel.textAlignment = .center
        nameLabel.font = .systemFont(ofSize: 15)
        nameLabel.textColor = .black
        //Status
        status.frame = CGRect(x: nameLabel.bounds.size.width, y: imageView.bounds.size.height, width: imageView.bounds.size.width * 0.3, height: nameLabel.bounds.size.height)
        status.setImage(UIImage(named: "liked"), for: .normal)
        if stt == true {
            status.setImage(UIImage(named: "liked"), for: .normal)
        } else {
            status.setImage(UIImage(named: "unlike"), for: .normal)
        }
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
    }
    
}
