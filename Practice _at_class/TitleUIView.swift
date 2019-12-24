//
//  TitleUIView.swift
//  Practice _at_class
//
//  Created by Thiện Tùng on 12/17/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class TitleUIView: UIView {
    
    let title = UILabel()
    let label = UILabel()
    let view = UIScrollView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //setupLayout()
        
    }
    
    func setupLayout (Title: String, Label: String) {
        self.addSubview(title)
        self.addSubview(label)
        self.addSubview(view)
        //MARK: Title
        title.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width * 0.7, height: 50)
        title.text = Title
        title.textAlignment = .left
        title.font = .boldSystemFont(ofSize: 20)
        title.textColor = .black
        
        //MARK: Label
        label.frame = CGRect(x: title.bounds.size.width, y: 0, width: self.bounds.size.width * 0.3, height: title.bounds.size.height)
        label.text = Label
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 15)
        label.textColor = .lightGray
        
        //MARK: view
        view.frame = CGRect(x: 0, y: title.bounds.size.height + 5, width: self.bounds.size.width, height: self.bounds.size.height - title.bounds.size.height - 5)
        view.backgroundColor = #colorLiteral(red: 0.7177880656, green: 0.9369576468, blue: 1, alpha: 1)
        view.layer.cornerRadius = 15
        
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
