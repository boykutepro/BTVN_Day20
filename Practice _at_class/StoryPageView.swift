//
//  StoryPageView.swift
//  Practice _at_class
//
//  Created by Thiện Tùng on 12/21/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class StoryPageView: UIView {
    var imageView = UIImageView()
    var bottomView = UIView()
    var avt = UIImageView()
    var nameUser = UILabel()
    var note = UILabel()
    var flButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame :frame)
        
        
    }
    
    func setup(Image: String, Username: String, Avt: String, Status: String){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        avt.translatesAutoresizingMaskIntoConstraints = false
        nameUser.translatesAutoresizingMaskIntoConstraints = false
        note.translatesAutoresizingMaskIntoConstraints = false
        flButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(imageView)
        self.addSubview(bottomView)
        bottomView.addSubview(avt)
        bottomView.addSubview(nameUser)
        bottomView.addSubview(note)
        bottomView.addSubview(flButton)
        
        //MARK: ImageView
        
        imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        imageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        imageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        imageView.image = UIImage(named: Image)
        imageView.contentMode = .scaleAspectFit
        //MARK: BottomView
        bottomView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0).isActive = true
        bottomView.leftAnchor.constraint(equalTo: imageView.leftAnchor, constant: 0).isActive = true
        bottomView.rightAnchor.constraint(equalTo: imageView.rightAnchor, constant: 0).isActive = true
        bottomView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.2).isActive = true
        bottomView.layer.shadowColor = UIColor.lightGray.cgColor
        bottomView.layer.shadowOffset = CGSize(width: bottomView.bounds.width+5, height: bottomView.bounds.height+5)
        bottomView.layer.shadowOpacity = 10
        // Avt
        avt.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor).isActive = true
        avt.widthAnchor.constraint(equalTo: bottomView.heightAnchor, multiplier: 0.6).isActive = true
        avt.heightAnchor.constraint(equalTo: avt.widthAnchor, multiplier: 1).isActive = true
        avt.leftAnchor.constraint(equalTo: bottomView.leftAnchor, constant: 20).isActive = true
        avt.image = UIImage(named: Avt)
        avt.layer.cornerRadius = CGFloat(avt.bounds.size.width/2)
        avt.contentMode = .scaleToFill
        avt.backgroundColor = .cyan
        // Username
        nameUser.topAnchor.constraint(equalTo: avt.topAnchor, constant: 0).isActive = true
        nameUser.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.7).isActive = true
        nameUser.heightAnchor.constraint(equalTo: bottomView.heightAnchor, multiplier: 0.3).isActive = true
        nameUser.leftAnchor.constraint(equalTo: avt.rightAnchor, constant: 20).isActive = true
        nameUser.text = Username
        nameUser.textAlignment = .left
        nameUser.font = .systemFont(ofSize: 15)
        nameUser.textColor = .black
        //Note
        note.bottomAnchor.constraint(equalTo: avt.bottomAnchor, constant: 0).isActive = true
        note.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.7).isActive = true
        note.heightAnchor.constraint(equalTo: bottomView.heightAnchor, multiplier: 0.3).isActive = true
        note.leftAnchor.constraint(equalTo: avt.rightAnchor, constant: 20).isActive = true
        note.text = Status
        note.textAlignment = .left
        note.textColor = .lightGray
        note.font = .systemFont(ofSize: 10)
        // Follow Button
        flButton.topAnchor.constraint(equalTo: avt.topAnchor, constant: 0).isActive = true
        flButton.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 0.3).isActive = true
        flButton.heightAnchor.constraint(equalTo: avt.heightAnchor, multiplier: 0.8).isActive = true
        flButton.rightAnchor.constraint(equalTo: bottomView.rightAnchor, constant: -10).isActive = true
        flButton.setTitle("Follow", for: .normal)
        flButton.backgroundColor = .orange
        flButton.setTitleColor(.white, for: .normal)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
