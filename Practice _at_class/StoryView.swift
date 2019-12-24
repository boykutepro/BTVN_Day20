//
//  StoryView.swift
//  Practice _at_class
//
//  Created by Thiện Tùng on 12/18/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class StoryView: UIView {
    var imageView = UIImageView()
    var bottomView = UIView()
    var tittle = UILabel()
    var icon = UIImageView()
    var avt = UIImageView()
    var nameUser = UILabel()
    var note = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(image: String, Username: String, Avt: String, Title: String, Status: String){
        self.addSubview(imageView)
        self.addSubview(bottomView)
        bottomView.addSubview(tittle)
        bottomView.addSubview(nameUser)
        bottomView.addSubview(avt)
        bottomView.addSubview(icon)
        bottomView.addSubview(note)
        
        //MARK:ImageView
        imageView.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height/2)
        imageView.image = UIImage(named: image)
        //imageView.contentMode = .scaleAspectFit
        //MARK:BottomView
        bottomView.frame = CGRect(x: 0, y: imageView.bounds.size.height, width: self.bounds.width, height: self.bounds.size.height/2)
        // Title
        tittle.frame = CGRect(x: 20, y: 5, width: bottomView.bounds.width - 40, height: bottomView.bounds.height/2 - 10)
        tittle.text = Title
        tittle.numberOfLines = 2
        tittle.font = .boldSystemFont(ofSize: 15)
        tittle.textAlignment = .left
        tittle.textColor = .black
        // Avt
        avt.frame = CGRect(x: 20, y: bottomView.bounds.midY + 10, width: 36, height: 36)
        avt.image = UIImage(named: Avt)
        avt.layer.cornerRadius = 18
        avt.contentMode = .scaleAspectFit
        avt.backgroundColor = #colorLiteral(red: 1, green: 0.9879715846, blue: 0.3424032334, alpha: 1)
        // Username
        nameUser.frame = CGRect(x: 66, y: bottomView.bounds.midY + 10, width: 150, height: 20)
        nameUser.text = Username
        nameUser.font = .systemFont(ofSize: 15)
        nameUser.textAlignment = .left
        nameUser.textColor = .black
        // Status
        note.frame = CGRect(x: 66, y: avt.frame.maxY - 15, width: 170, height: 15)
        note.text = Status
        note.textAlignment = .left
        note.textColor = .lightGray
        note.font = .systemFont(ofSize: 10)
        // Icon
        icon.frame = CGRect(x: bottomView.bounds.maxX - 45, y: avt.frame.minY, width: 40, height: 40)
        icon.image = UIImage(named: "heart")
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
